// Zooo: Action Puzzle Game
// #ID = 6620

// $1260: GAME : Mode [8-bit]
//        ├─■ 0x0 = Normal Mode
//        ├─■ 0x2 = Time Attack Mode
//        ├─■ 0x3 = Score Attack Mode
//        ├─■ 0x6 = Tokoton Mode
//        └─■ 0x8 = Quest mode
function GameMode() => byte(0x001260)


// $1264: GAME : Score Total (32-bit)
// $1272: GAME : Monkeys total matched (8-bit)
// $1274: GAME : Pandas total matched (8-bit)
// $1276: GAME : Girafes total matched (8-bit)
// $1278: GAME : Hypos total matched (8-bit)
// $127A: GAME : Elephants total matched (8-bit)
// $127C: GAME : Gators total matched (8-bit)
// $127E: GAME : Lions total matched (8-bit)
// $1280: GAME : Bunnies total matched (8-bit)
monkey_total_match = byte(0x001272)
panda_total_match =  byte(0x001274)
girafe_total_match = byte(0x001276)
hypo_total_match = byte(0x001278)
elephant_total_match = byte(0x00127A)
gator_total_match = byte(0x00127C)
lion_total_match = byte(0x00127E)
rabbit_total_match = byte(0x001280)

// $19BA: GAME : Monkeys amount in current level [8-bit]
// $19BB: GAME : Pandas amount in current level [8-bit]
// $19BC: GAME : Girafes amount in current level [8-bit]
// $19BD: GAME : Hypos amount in current level [8-bit]
// $19BE: GAME : Elephants amount in current level [8-bit]
// $19BF: GAME : Gators amount in current level [8-bit]
// $19C0: GAME : Lions amount in current level [8-bit]
// $19C1: GAME : Rabbits amount in current level [8-bit]
monkey_current_level = byte(0x19BA)
panda_current_level =  byte(0x19bb)
girafe_current_level = byte(0x19bc)
hypo_current_level = byte(0x19bd)
elephant_current_level = byte(0x19be)
gator_current_level = byte(0x19bf)
lion_current_level = byte(0x19c0)
rabbit_current_level = byte(0x19c1)

// $19C2: GAME : Monkeys amount to level up [8-bit]
// $19C3: GAME : Pandas amount to level up [8-bit]
// $19C4: GAME : Girafes amount to level up [8-bit]
// $19C5: GAME : Hypos amount to level up [8-bit]
// $19C6: GAME : Elephants amount to level up [8-bit]
// $19C7: GAME : Gators amount to level up [8-bit]
// $19C8: GAME : Lions amount to level up [8-bit]
// $19C9: GAME : Rabbits amount to level up [8-bit]
monkey_current_target = byte(0x19c2)
panda_current_target =  byte(0x19c3)
girafe_current_target = byte(0x19c4)
hypo_current_target = byte(0x19c5)
elephant_current_target = byte(0x19c6)
gator_current_target = byte(0x19c7)
lion_current_target = byte(0x19c8)
rabbit_current_target = byte(0x19c9)

// $38DE: GAME : Monkeys state [8-bit]
// $38DF: GAME : Pandas state [8-bit]
// $38E0: GAME : Giraffes state [8-bit]
// $38E1: GAME : Hippos state [8-bit]
// $38E2: GAME : Elephants state [8-bit]
// $38E3: GAME : Gators state [8-bit]
// $38E4: GAME : Rabbits state [8-bit]
//        ├─■ 0x0 = Disabled
//        ├─■ 0x1 = Currently below the target
//        └─■ 0x2 = Above or equals the target
monkey_state = byte(0x38de)
panda_state =  byte(0x38df)
girafe_state = byte(0x38e0)
hypo_state = byte(0x38e1)
elephant_state = byte(0x38e2)
gator_state = byte(0x38e3)
lion_state = byte(0x38e4)
rabbit_state = byte(0x38e5)

// $19AC: BOARD : Selected tile X-coordinate [8-bit]
// $19AD: BOARD : Selected tile Y-coordinate [8-bit]
//        ║?╠═ From upper left corner
//        ║?╠═ MAX VALUE : 0x7
tile_selected_x_pos = byte(0x0019AC)
tile_selected_y_pos = byte(0x0019AD)

//GAME : Mode [8-bit]
//├─■ 0x0 = Normal Mode
//├─■ 0x2 = Time Attack Mode
//├─■ 0x3 = Score Attack Mode
//├─■ 0x6 = Tokoton Mode
//└─■ 0x8 = Quest mode
game_mode = byte(0x1260)
//GAME : Mode [8-bit]
//├─■ 0x3 : Transition
//├─■ 0x5 : How To Play
//├─■ 0x6 : Menu/Quest Mode Recap
//├─■ 0x7 : Name Entry
//├─■ 0x8 : Game over Screen/Ranking
//├─■ 0xa : Title Screen
//└─■ 0xd : In game
game_state = dword(0x1250)

// $38D5: GAME : Minutes [8-bit]
timer_minutes = byte(0x38d5)
// $38D6: GAME : Seconds [8-bit]
timer_seconds = byte(0x38d6)
// $38D7: GAME : Milliseconds [8-bit]
timer_milliseconds = byte(0x38d7)

//Triggers
// $38CB: GAME : Game Over boolean [8-bit]
//        ║?╠═ When a game starts, this address is set to 0x0. When player lose a game, it switch to 0x1 and the game over screen is shown. Defining the value to 0x1 here triggers the game over immediately, making it a strong value to use in the set's logic.
//        ║?╠═ If game over is triggered, it triggers the time's up at 0x38dc too.
//        ├─■ 0x0 = Game's running
//        └─■ 0x1 = Triggered
trigger_game_over = byte(0x38cb)

// $38DC: GAME : Time's up boolean [8-bit]
//        ║?╠═ When a game starts, this address is set to 0x0. When time's up, it switch to 0x1 and the game is over. Defining the value to 0x1 here triggers the time up immediately, making it a strong value to use in the set's logic.
//        ║?╠═ If the game over at 0x38cb is triggered, this value switch to 0x1 too.
//        ├─■ 0x0 = Game's running
//        └─■ 0x1 = Triggered
trigger_time_up = byte(0x38dc)

// $195C: GAME : Settings [bitflags]
//        bit0 : Music
//        ├─■ 0x0 = OFF
//        └─■ 0x1 = ON
//        bit1 : SFX
//        ├─■ 0x0 = OFF
//        └─■ 0x1 = ON
//        bit3 : Normal Difficulty
//        ├─■ 0x0 = Not Selected
//        └─■ 0x1 = Selected
//        bit4 : Hard Difficulty
//        ├─■ 0x0 = Not Selected
//        └─■ 0x1 = Selected
difficulty_hard = bit4(0x195c)
difficulty_normal = bit3(0x195c)

// $38CC: GAME : Timer [32-bit]
//        ║?╠═ Represented by the green bar at the bottom of the game board. When a match is done on the board, this bar is refilled depending on the combo made. When it reaches zero, the game is over.
//        ║?╠═ INITIAL VALUE : 0x278d0
timer_value = byte(0x38cc)
// $38CA: GAME : Timer  boolean [8-bit]
//        ├─■ 0x0 = Paused
//        └─■ 0x1 = Is Running
timer_bool = byte(0x38ca)

// $38DD: GAME : In-game boolean [8-bit]
//        ├─■ 0x0 = In menu/pause
//        └─■ 0x1 = In game
in_game_bool = byte(0x38dd)

// $1309: GAME : Continue [8-bit]
continues = dword(0x1309)
// $19b4: GAME : Hints [8-bit]
hints = byte(0x19b4)
// $19B0: GAME : Score [32-bit]
score = dword(0x19b0)
// $1264: GAME : Score Total [32-bit]
score_total = dword(0x1264)
// $197C: GAME : Animals matched [32-bit]
animals_matched = dword(0x197c) 
// $130B: Game : Best combo during the game [8-bit]
combo_max = byte(0x130b)
// $28a6: GAME : Current level [8-bit]
current_lvl = byte(0x28a6)
current_lvl_static = byte(0x1261)

score_total_endgame = dword(0x28c0)
score_hints_endgame = dword(0x28d0)
score_lucky_endgame = dword(0x28c8)
score_quest_hint = dword(0x1990)
score_quest_board = dword(0x1978)
score_quest_clear = byte(0x196e)
score_quest_time = dword(0x1974)
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
    title = "It's Zooo Cool", points = 5,
    description = "Finish level 10 in Normal Mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0 &&
        PrevFromTo(current_lvl, 10, 11)
)

achievement(
    title = "Zooo Much Fun", points = 5, 
    description = "Finish level 15 in Normal Mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0 &&
        PrevFromTo(current_lvl, 15, 16)
)

achievement(
    title = "I'm Zooo in Love", points = 10, type="progression",
    description = "Finish level 20 in Normal Mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0 &&
        PrevFromTo(current_lvl_static, 20, 21) &&
        in_game_bool == 0 &&
        trigger_game_over == 1
)

achievement(
    title = "It's Zooo Hard", points = 25,
    description = "Finish level 20 in Normal Mode on Hard difficulty",
    trigger = 
        GlobalChecks() &&
        difficulty_hard == 1 &&
        game_mode == 0 &&
        PrevFromTo(current_lvl_static, 19, 20) &&
        in_game_bool == 0 &&
        trigger_game_over == 1
)

achievement(
    title = "Zooombo 4", points = 2,
    description = "Make a combo of 4 in any mode",
    trigger = 
        GlobalChecks() &&
        PrevIncreasedToMoreOrEquals(combo_max, 4) && 
        in_game_bool == 1 &&
        trigger_game_over == 0 &&
        trigger_time_up == 0
)

achievement(
    title = "Zooombo 5", points = 3,
    description = "Make a combo of 5 in any mode",
    trigger = 
        GlobalChecks() &&
        PrevIncreasedToMoreOrEquals(combo_max, 5) && 
        in_game_bool == 1 &&
        trigger_game_over == 0 &&
        trigger_time_up == 0
)

achievement(
    title = "Zooo me the way", points = 1,
    description = "Earn an extra hint in any mode",
    trigger = 
        GlobalChecks() &&
        PrevIncreased(hints) &&
        trigger_game_over == 0 &&
        trigger_time_up == 0 &&
        current_lvl > 0
)

achievement(
    title = "He's Zooo Cute", points = 1,
    description = "Unlock the rabbit in any mode",
    trigger = 
        GlobalChecks() &&
        trigger_game_over == 0 &&
        PrevIncreasedToMoreOrEquals(rabbit_current_target, 1) &&
        current_lvl > 0
)

achievement(
    title = "Two Hundred Thouzooond", points = 5, type="progression",
    description = "Finish Score Attack Mode on any difficulty",
    trigger = 
        GlobalChecks() &&
        game_mode == 3 &&
        score >= 0x30d40 &&
        SwitchON(trigger_game_over)
)

achievement(
    title = "Two Hundred Harder Thouzooond", points = 10,
    description = "Finish Score Attack Mode on Hard difficulty",
    trigger = 
        GlobalChecks() &&
        difficulty_hard == 1 &&
        game_mode == 3 &&
        score >= 0x30d40 &&
        SwitchON(trigger_game_over)
)

achievement(
    title = "Zooo Fast !", points = 10, 
    description = "Finish Score Attack Mode in less than 4'00\" on any difficulty",
    trigger = 
        GlobalChecks() &&
        game_mode == 3 &&
        score >= 0x30d40 &&
        SwitchON(trigger_game_over) &&
        timer_minutes < 4
)

achievement(
    title = "Sailfish", points = 5,
    description = "Reach Level 10 in Time Attack",
    trigger = 
        GlobalChecks() &&
        game_mode == 2 &&
        PrevFromTo(current_lvl, 9, 10) &&
        in_game_bool == 0 &&
        trigger_game_over == 0 &&
        trigger_time_up == 0
)

achievement(
    title = "Cheetah", points = 10, type="progression",
    description = "Reach Level 15 in Time Attack",
    trigger = 
        GlobalChecks() &&
        game_mode == 2 &&
        PrevFromTo(current_lvl, 14, 15) &&
        in_game_bool == 0 &&
        trigger_game_over == 0 &&
        trigger_time_up == 0
)

achievement(
    title = "Springbok", points = 10,
    description = "Reach Level 10 in Time Attack on Hard difficulty",
    trigger = 
        GlobalChecks() &&
        difficulty_hard == 1 &&
        game_mode == 2 &&
        PrevFromTo(current_lvl, 9, 10) &&
        in_game_bool == 0 &&
        trigger_game_over == 0 &&
        trigger_time_up == 0
)

achievement(
    title = "Peregrine Falcon", points = 10,
    description = "Finish Time Attack Mode with a score of more than 500k on any difficulty",
    trigger = 
        GlobalChecks() &&
        game_mode == 2 && 
        trigger_game_over == 1 && 
        prev(score_hints_endgame) == 0 &&
        (score_total_endgame + score_hints_endgame + score_lucky_endgame) >= 500000
)

achievement(
    title = "Tokoton", points = 10, type="progression",
    description = "Reach Level 10 in Tokoton Mode on any difficulty",
    trigger = 
        GlobalChecks() &&
        game_mode == 6 && 
        PrevFromTo(current_lvl, 9, 10) &&
        in_game_bool == 0 &&
        trigger_game_over == 0 &&
        trigger_time_up == 0
)

achievement(
    title = "Tokoton Hard", points = 10,
    description = "Reach Level 15 in Tokoton Mode on Hard difficulty",
    trigger = 
        GlobalChecks() &&
        difficulty_hard == 1 && 
        game_mode == 6 && 
        PrevFromTo(current_lvl, 14, 15) &&
        in_game_bool == 0 &&
        trigger_game_over == 0 &&
        trigger_time_up == 0
)

achievement(
    title = "Toko-tons of points", points = 10,
    description = "Reach 500k points in Tokoton Mode on any difficulty",
    trigger = 
        GlobalChecks() &&
        game_mode == 6 && 
        trigger_game_over == 0 && 
        PrevIncreasedToMoreOrEquals(dword(0x1978), 500000)
)

achievement(
    title = "Adventurer", points = 25, type="progression",
    description = "Finish Quest Mode without losing a single quest on any difficulty",
    trigger = 
        GlobalChecks() &&
        game_mode == 8 && 
        trigger_game_over == 1 && 
        byte(0x00196E) == 8 && 
        dword(0x001250) == 6 &&
        prev(dword(0x001988)) == 0 && 
        dword(0x001988) > 0
)

achievement(
    title = "Mighty Warrior", points = 10,
    description = "Finish Quest Mode with a score of more than 400k on any difficulty",
    trigger = GlobalChecks() &&
                game_mode == 8 && 
              ((byte(0x0038CB) == 0 && prev(dword(0x0019B0)) < 400000 && dword(0x0019B0) >= 400000 &&
                dword(0x001250) == 13) ||
               (byte(0x0038CB) == 1 &&
                (dword(0x001978) + dword(0x001990) + byte(0x00196E) * 10000 + dword(0x001988)) >= 400000 &&
                dword(0x001250) == 6 && prev(dword(0x001988)) == 0 && dword(0x001988) > 0))
)