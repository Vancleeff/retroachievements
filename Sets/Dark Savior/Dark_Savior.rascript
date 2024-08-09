// Dark Savior
// #ID = 5376

CharToCapture = [
    {"name": "Dunbar", "value": 0x03FF}, 
    {"name": "BIOS-26", "value": 0x04FF}, 
    {"name": "Matt", "value": 0x13FF}, 
    {"name": "Evil Sizer", "value": 0x14FF}, 
    {"name": "Bruno", "value": 0x05FF}, 
    {"name": "Morgan", "value": 0x0AFF}, 
    {"name": "Kurtliegen", "value": 0x2BFF}, 
    {"name": "Doc", "value": 0x0BFF}, 
    {"name": "Max", "value": 0x08FF}, 
    {"name": "Joe", "value": 0x0CFF}, 
    {"name": "Musashi", "value": 0x0FFF}, 
    {"name": "Commander", "value": 0x28FF}, 
    {"name": "Copper", "value": 0x25FF}, 
    {"name": "Golden", "value": 0x27FF}, 
    {"name": "Kay On Fire", "value": 0x2FFF}, 
    {"name": "Elephant", "value": 0x35FF}, 
    {"name": "J.J.", "value": 0x36FF}, 
    {"name": "Debose", "value": 0x33FF}, 
    {"name": "Orion", "value": 0x3BFF}, 
    {"name": "Sean", "value": 0x31FF}, 
    {"name": "Beau", "value": 0x3AFF}, 
    {"name": "Blade", "value": 0x32FF}, 
    {"name": "Kiwi", "value": 0x39FF}, 
    {"name": "Kay", "value": 0x2CFF}, 
    {"name": "Indigo", "value": 0x34FF}, 
    {"name": "Meg", "value": 0x30FF}, 
    {"name": "Sherry", "value": 0x38FF}, 
]

CapturedCharSlot = [
    word(0x0fb0c6),
    word(0x0fb0c8),
    word(0x0fb0ca),
    word(0x0fb0cc),
    word(0x0fb0ce),
    word(0x0fb0d0),
    word(0x0fb0d2),
    word(0x0fb0d4),
    word(0x0fb0d6),
    word(0x0fb0d8),
    word(0x0fb0da),
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
    return 
        Level_Pointer != 0x0 &&
        InGame == 1
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
    return 
    InGame() &&
    Mode == mode &&
    Stage == stage &&
    TilesLeft == 0 &&
    prev(Level) == lvl &&
    Level == lvl + 1
}

function GetScore() => bcd(ScoreTotal) * 10 

//ACHIEVEMENTS 

//Capture Achievements

for i in range(0, length(CharToCapture) - 1) {
   achievement(CharToCapture[i]["name"],"Capture " + CharToCapture[i]["name"], 5, 
       (
        (prev(CapturedCharSlot[0]) != CharToCapture[i]["value"] && CapturedCharSlot[0] == CharToCapture[i]["value"]) || 
        (prev(CapturedCharSlot[1]) != CharToCapture[i]["value"] && CapturedCharSlot[1] == CharToCapture[i]["value"]) || 
        (prev(CapturedCharSlot[2]) != CharToCapture[i]["value"] && CapturedCharSlot[2] == CharToCapture[i]["value"]) || 
        (prev(CapturedCharSlot[3]) != CharToCapture[i]["value"] && CapturedCharSlot[3] == CharToCapture[i]["value"]) || 
        (prev(CapturedCharSlot[4]) != CharToCapture[i]["value"] && CapturedCharSlot[4] == CharToCapture[i]["value"]) || 
        (prev(CapturedCharSlot[5]) != CharToCapture[i]["value"] && CapturedCharSlot[5] == CharToCapture[i]["value"]) || 
        (prev(CapturedCharSlot[6]) != CharToCapture[i]["value"] && CapturedCharSlot[6] == CharToCapture[i]["value"]) || 
        (prev(CapturedCharSlot[7]) != CharToCapture[i]["value"] && CapturedCharSlot[7] == CharToCapture[i]["value"]) || 
        (prev(CapturedCharSlot[8]) != CharToCapture[i]["value"] && CapturedCharSlot[8] == CharToCapture[i]["value"]) || 
        (prev(CapturedCharSlot[9]) != CharToCapture[i]["value"] && CapturedCharSlot[9] == CharToCapture[i]["value"]) || 
        (prev(CapturedCharSlot[10]) != CharToCapture[i]["value"] && CapturedCharSlot[10] == CharToCapture[i]["value"])
        )
   )
}


