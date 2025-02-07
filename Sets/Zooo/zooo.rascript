// Zooo: Action Puzzle Game
// #ID = 6620

//GAME : Mode [8-bit]
//├─■ 0x0 = Normal Mode
//├─■ 0x2 = Time Attack Mode
//├─■ 0x3 = Score Attack Mode
//├─■ 0x6 = Tokoton Mode
//└─■ 0x8 = Quest mode
game_mode = byte(0x1260)

timer_minutes = byte(0x38d5)
timer_seconds = byte(0x38d6)
timer_milliseconds = byte(0x38d7)

//Triggers
trigger_game_over = byte(0x38cb)
trigger_timer = byte(0x38cc)
trigger_time_up = byte(0x38dc)
trigger_in_game = byte(0x38dd)
difficulty_hard = bit4(0x195c)

continue = dword(0x1309)
score = dword(0x19b0)
animals_matched = dword(0x197c) 
combo_max = byte(0x130b)
current_lvl = byte(0x38c1)

//FUNCTIONS
//Build and return requirements to checks if two arrays contain same values
//src: the array of value to compare
//with: data source
//mode: 1 => equals, 2 => different
function CompareArrays(src, with, mode){
  res = []
  if(mode == 1)
  {
    for i in range(0, length(src) - 1) {
       array_push(res, src[i] == with[i])
    }
  }else{
    for i in range(0, length(src) - 1) {
       array_push(res, src[i] != with[i])
    }
  }
    
  return res
}

//Global logics that every achievements should implements (like save protection, anti-cheat, etc)
function GlobalChecks(){
    return 1 == 1
}

//Check if the player is on the Title Screen or Pause Menu
//Mode define if the player is on the menu or not
function OnMenu(mode){
    if(mode == 1)
    {
        //BUILD LOGIC
    }else{
        //BUILD LOGIC
    }
}


//Check if the player is in the game and not on the Title Screen or the Credits. 
//It also checks if the player is not loading a save to prevent save exploits.
function InGame(){
    return 
        Level_Pointer != 0x0 &&
        InGame == 1
}

//Check if the value of an adress switch from 0 to 1
function SwitchON(address){
    return prev(address) == 0x0 && address == 0x1
}

//Check if the value of an adress switch from 1 to 0
function SwitchOFF(address){
    return prev(address) == 0x1 && address == 0x0
}

//Check if address increased to (or beyond) target since last frame
function PrevIncreasedToMoreOrEquals(address, target){
    return prev(address) < target && address >= target
}

//Check if address increased to target since last frame
function PrevIncreasedTo(address, target){
    return prev(address) < target && address == target
}

//Used to check if a skill increased to a specific target when level up. prior <= target is used because the game increase 
//every skills at each level up.
function PriorIncreasedTo(address, target){
    return prior(address) <= target && address >= target
}

//Check if address increased from one value to another one since last frame
function PrevFromTo(address, from, to){
    return prev(address) == from && address == to
}

//Check if address increased from one value to another one since last changed value
function PriorFromTo(address, from, to){
    return prior(address) == from && address == to
}

//Check if address increased since last frame
function PrevIncreased(address){
    return address > prev(address)
}

//Check if address decreased since last frame
function PrevDecreased(address){
    return address < prev(address)
}

function PrevIncreasedBy(address, amount){
    return (address - prev(address)) == amount
}

function PriorIncreasedBy(address, amount){
    return (address - prior(address)) == amount
}

function PrevDecreasedBy(address, amount){
    return (prev(address) - address) == amount
}

function PriorDecreasedBy(address, amount){
    return (prior(address) - address) == amount
}

//Check if address didn't changed since last frame
function PrevNotChanged(address){
    return address == prev(address)
}

//Check if address didn't changed prior to this call
function PriorNotChanged(address){
    return address == prior(address)
}

//ACHIEVEMENTS 
achievement(
    title = "Animal Lover", points = 2,
    description = "Match 250 animals during a single game",
    trigger = 
        GlobalChecks() &&
        score != 0x0 &&
        prev(animals_matched < 250) &&
        measured(animals_matched >= 250, format="raw", when=trigger_in_game == 0x1)
)

achievement(
    title = "It's Zooo Cool", points = 5,
    description = "Finish level 10 in Normal Mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 &&
        PrevFromTo(current_lvl, 9, 10)
)

achievement(
    title = "I'm Zooo in Love", points = 10,
    description = "Finish level 20 in Normal Mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 &&
        PrevFromTo(current_lvl, 19, 20)
)

achievement(
    title = "Combo 3", points = 1,
    description = "Make a combo of 3 in any mode",
    trigger = 
        GlobalChecks() &&
        PrevIncreasedToMoreOrEquals(combo_max, 0x3) && 
        trigger_in_game == 0x1 &&
        trigger_game_over == 0x0 &&
        trigger_time_up == 0x0
)

achievement(
    title = "Combo 4", points = 2,
    description = "Make a combo of 4 in any mode",
    trigger = 
        GlobalChecks() &&
        PrevIncreasedToMoreOrEquals(combo_max, 0x4) && 
        trigger_in_game == 0x1 &&
        trigger_game_over == 0x0 &&
        trigger_time_up == 0x0
)

achievement(
    title = "Combo 5", points = 3,
    description = "Make a combo of 5 in any mode",
    trigger = 
        GlobalChecks() &&
        PrevIncreasedToMoreOrEquals(combo_max, 0x5) && 
        trigger_in_game == 0x1 &&
        trigger_game_over == 0x0 &&
        trigger_time_up == 0x0
)

achievement(
    title = "Score Attack", points = 2,
    description = "Finish Score Attack Mode on any difficulty",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x3 &&
        score >= 0x30d40 &&
        SwitchON(trigger_game_over)
)

achievement(
    title = "Score Attack - Hard", points = 5,
    description = "Finish Score Attack Mode on Hard difficulty",
    trigger = 
        GlobalChecks() &&
        difficulty_hard == 0x1 &&
        game_mode == 0x3 &&
        score >= 0x30d40 &&
        SwitchON(trigger_game_over)
)

achievement(
    title = "Perfect Score", points = 10,
    description = "Finish Score Attack Mode in less than 4'00\" on any difficulty",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x3 &&
        score >= 0x30d40 &&
        SwitchON(trigger_game_over) &&
        timer_minutes < 0x4
)

achievement(
    title = "Time Attack I", points = 2,
    description = "Reach Level 10 in Time Attack",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x2 &&
        PrevFromTo(current_lvl, 0x9, 0xa) &&
        trigger_in_game == 0x0 &&
        trigger_game_over == 0x0 &&
        trigger_time_up == 0x0
)

achievement(
    title = "Time Attack II", points = 5,
    description = "Reach Level 15 in Time Attack",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x2 &&
        PrevFromTo(current_lvl, 0xf, 0x10) &&
        trigger_in_game == 0x0 &&
        trigger_game_over == 0x0 &&
        trigger_time_up == 0x0
)

achievement(
    title = "Time Attack Hard", points = 5,
    description = "Reach Level 10 in Time Attack on Hard difficulty",
    trigger = 
        GlobalChecks() &&
        difficulty_hard == 0x1 &&
        game_mode == 0x2 &&
        PrevFromTo(current_lvl, 0x9, 0xa) &&
        trigger_in_game == 0x0 &&
        trigger_game_over == 0x0 &&
        trigger_time_up == 0x0
)

achievement(
    title = "Speed Runner", points = 10,
    description = "Finish Time Attack Mode with a score of more than 500k on any difficulty",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x2 &&
        score >= 0x7a120 &&
        SwitchON(trigger_game_over) 
)

