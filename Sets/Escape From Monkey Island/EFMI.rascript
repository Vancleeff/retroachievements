// Escape from Monkey Island
// #ID = 3306

//GLOSARRY
//Escape From Monkey Island uses GrimE engine. Here's some terms to understand this script.
//SET = Room
//SETUP = A camera angle inside a SET
//ACTOR = Any interactable entity inside a SET (NPC, animal, furniture, etc)
//COSTUME = The mesh that an actor can "wear" to be visually present inside a SET
//CHORE = Any action runs by an ACTOR (basically a LUA script)
Engine = {
    "CURRENT_SET" : dword(0x242974),
    "CURRENT_SETUP"  : dword(dword(0x242974) + 0x000024),
    "CURRENT_BGM"  : dword(0x00242b48)
}

SetLoadedPlaceHolder = [
    dword(0x001e8630),
    dword(0x001e8634),
    dword(0x001e8638),
    dword(0x001e863c),
    dword(0x001e8640),
    dword(0x001e8644),
    dword(0x001e8648),
    dword(0x001e864c)
]

DialogPlaceHolder = [
    dword(0x00243f20),
    dword(0x00243f24),
    dword(0x00243f28),
    dword(0x00243f2c)
]

Sets = {
    "MEATHOOK_EXTERIOR" : [0x454c454d, 0x686d5c45, 0x344d2e65, 0x00000042], //MELEE\mhe.M4B
}

Dialogs = {
    "FULL_MOON_1" : [0x6d797567, 0x30306568, 0x34], //guymhe004
    "FULL_MOON_2" : [0x6d797567, 0x30306568, 0x35], //guymhe005
}

//FUNCTIONS
//Build and return requirements to checks if two arrays contain same values
//src: the array of value to compare
//with: data source
//mode: 1 => equals, 2 => different
function CompareArrays(src, with, mode, prev){
  res = []
  if(mode == 1)
  {
    if(prev == 1)
    {
      	for i in range(0, length(src) - 1) {
           array_push(res, src[i] == prev(with[i]))
        }
    }
    else
    {
        for i in range(0, length(src) - 1) {
           array_push(res, src[i] == with[i])
        }
    }
  }else{
    if(prev == 1)
    {
        for i in range(0, length(src) - 1) {
           array_push(res, src[i] != prev(with[i]))
        }
    }
    else
    {
      	for i in range(0, length(src) - 1) {
           array_push(res, src[i] != with[i])
        }
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
	//BUILD LOGIC
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

//ACHIEVEMENTS 
achievement(
    title = "Werewolf", points = 1, type="missable",
    description = "Bark at the moon",
    trigger = Engine["CURRENT_SETUP"] == 0x00 && 
              all_of(CompareArrays(Sets["MEATHOOK_EXTERIOR"], SetLoadedPlaceHolder, 1, 0), a => a) &&
              all_of(CompareArrays(Dialogs["FULL_MOON_1"], DialogPlaceHolder, 1, 1), a => a) &&
              all_of(CompareArrays(Dialogs["FULL_MOON_2"], DialogPlaceHolder, 1, 0), a => a)
)