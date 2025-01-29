// Dark Savior
// #ID = 5376

LvlCompletion = [
    {"text" : "1-1", "level": 0x0, "room": 0x0, "address": bit0(0xc108)}, 
]

story_progress_heroes = byte(0x1f234a)
story_progress_vilains = byte(0x1f234a)

//Game Mode
//0x1 : Story Mode (Heroes)
//0x2 : Story Mode (Vilains)
//0x3 : Last Story 
//0xc : Boss Rush (Heroes)
//0xd : Boss Rush (Vilains)
//0xe : Boss Rush (All)
game_mode = byte(0x1e50d4)
flag_stage_clear = byte(0x1cc1aa)
flag_stage_key = byte(0x1cc1ac)
player_lives = word_be(0x1cc1cc)
player_rings = word_be(0x1cc1d0)
player_score = word_be(0x1cc1f8)
player_total_rings = dword_be(0x1cc204)

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
    return prev(address) == 0x00 && address == 0x01
}

//Check if the value of an adress switch from 1 to 0
function SwitchOFF(address){
    return prev(address) == 0x01 && address == 0x00
}

//Check if address increased to (or beyond) target since last frame
function PrevIncreasedTo(address, target){
    return prev(address) < target && address >= target
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

//STORY COMPLETION - HEROES
achievement(
    title = "City Escape", points = 2, type="progression",
    description = "Escape from the City in Hero Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x01
)

achievement(
    title = "T-6T Big Foot", points = 2, type="progression",
    description = "Beat the T-6T Big Foot in Hero Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x02
)

achievement(
    title = "Treasure Hunt in Wild Canyon", points = 2, type="progression",
    description = "Find the three green gems in Wild Canyon in Hero Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x04

)

//STORY COMPLETION - VILAINS
//TODO
