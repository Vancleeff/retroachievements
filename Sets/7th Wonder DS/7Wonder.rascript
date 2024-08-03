// 7 Wonders of the Ancient World
// #ID = 26390

Scores = [
    {"txt": "10000", "value": 0x1000}, 
    {"txt": "25000", "value": 0x2500}, 
    {"txt": "50000", "value": 0x5000}, 
    {"txt": "75000", "value": 0x7500}, 
    {"txt": "100000", "value": 0x10000}, 
    {"txt": "125000", "value": 0x12500}, 
    {"txt": "150000", "value": 0x15000}, 
    {"txt": "175000", "value": 0x17500}, 
    {"txt": "200000", "value": 0x20000}, 
    {"txt": "250000", "value": 0x25000}, 
    {"txt": "300000", "value": 0x30000}, 
    {"txt": "350000", "value": 0x35000}, 
]

Stages = [
    "Giza",
    "Babylon",
    "Ephesus",
    "Olympia",
    "Halicarnassus",
    "Rhodes",
    "Alexandria",
    "Atlantis"
]

Level_Pointer = dword(0x0021fd80)
Score = dword(Level_Pointer + 0x308)
Mode = dword(Level_Pointer + 0x348)
Stage = dword(0x0021fd4c)
Level = dword(0x0021fd50)
Timer = dword(Level_Pointer + 0x2ec)
InGame = dword(Level_Pointer + 0x320)
TilesLeft = dword(Level_Pointer + 0x218)
MaxStage = 8
MaxLvl = 8

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
    return InGame == 1
}

//Check if the value of an adress switch from 0 to 1
function switchON(address){
    return prev(address) == 0x00 && address == 0x01
}

//Check if the value of an adress switch from 1 to 0
function switchOFF(address){
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

function BeatLvl(stage, lvl, mode)
{
    return InGame() &&
    Mode == mode &&
    Stage == stage &&
    TilesLeft == 0 &&
    prev(Level) == lvl &&
    Level == lvl + 1
}

function GetScore() => bcd(ScoreTotal) * 10 

//ACHIEVEMENTS 

//Beat Achievements
for stage in range(1, MaxStage) {
   for lvl in range(1, MaxLvl) {
       points = stage 
       if(stage == 1 || stage == 2 || stage == 3){
           points = 2
       }else if(stage == 4|| stage == 5 || stage == 6){
           points = 3
       }else if(stage == 7 || stage == 8){
           points = 5
       }
       achievement(Stages[stage-1] + " " + stage + "-" + lvl,"Complete level " + stage + "-" + lvl + " in Story Mode", points, 
            BeatLvl(stage, lvl, 0)
       )
   }
}

