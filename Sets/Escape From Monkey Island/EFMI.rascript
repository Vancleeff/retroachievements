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
    "CURRENT_BGM"  : dword(0x00242b48),
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

CGIPlaceHolder = [
    dword(0x00244710),
    dword(0x00244714)
]

Sets = {
    "MELEE_MEATHOOK_EXTERIOR" : [0x454c454d, 0x686d5c45, 0x344d2e65], //MELEE\mhe.M4B
    "MELEE_MEATHOOK_INSIDE" : [0x454c454d, 0x686d5c45, 0x344d2e69], //MELEE\mhi.M4B
    "LUCRE_HARBOR" : [0x5243554c, 0x756c5c45, 0x344d2e63], //LUCRE\luc.M4B
    "MELEE_SHIPYARD" : [0x454c454d, 0x68735c45, 0x344d2e69], //MELEE\shi.M4B
    "MELEE_GOVERNOR_IN" : [0x454c454d, 0x6d675c45, 0x344d2e69], //MELEE\gmi.M4B
    "MELEE_LUA_BAR" : [0x454c454d, 0x756c5c45, 0x344d2e61], //MELEE\lua.M4B
    "SEA_MAP" : [0x454c4500, 0x72745c45, 0x344d2e69], //MELEE\shi.M4B
    "ACT_2" : [0x454c4500, 0x63615c45, 0x344d2e74], //MELEE\act.M4B
    "LUCRE_PROTHESES" : [0x5243554c, 0x6f705c45, 0x344d2e70], //LUCRE\pop.M4B
    "LUCRE_SWAMP" : [0x5243554c, 0x6f6d5c45, 0x344d2e74], //LUCRE\mot.M4B
    "LUCRE_DEEP_WATER" : [0x5243554c, 0x6c755c45, 0x344d2e67], //LUCRE\ulg.M4B
    "JAMBALYA_HARBOR" : [0x424d414a, 0x59414c41, 0x7470675c, 0x42344d2e], //JAMBALAY\gpt.M4B
}

Dialogs = {
    "FULL_MOON_1" : [0x6d797567, 0x30306568, 0x34], //guymhe004
    "FULL_MOON_2" : [0x6d797567, 0x30306568, 0x35], //guymhe005
    "BANK_ROBBERY_1" : [0x76797567, 0x32307561, 0x39], //pegban001
    "BANK_ROBBERY_2" : [0x62676570, 0x30306E61, 0x31], //guyvan001
    "DUCK_1" : [0x61637564, 0x30306c6c, 0x31], //ducall001
    "DUCK_2" : [0x61797567, 0x32316c6c, 0x35], //guyall125
    "FILEOMATIC_1" : [0x61797567, 0x37306C6C, 0x38], //guyall078
    "FILEOMATIC_2" : [0x61797567, 0x37306C6C, 0x39], //guyall079
    "GUYKILLGUY_1" : [0x6D797567, 0x3330746F, 0x33], //guymot033
    "GUYKILLGUY_2" : [0x6D797567, 0x3330746F, 0x34], //guymot034
    "ABOMINATION_1" : [0x61797567, 0x37346C6C, 0x37], //guyall077
    "ABOMINATION_2" : [0x61797567, 0x37346C6C, 0x35], //guymot075
    "DROWN_1" : [0x75797567, 0x3030676C, 0x31], //guyulg001
    "DROWN_2" : [0x75797567, 0x3030676C, 0x32], //guyulg002
    "MEATHOOK_1" : [0x6D61656D, 0x35306968, 0x30], //meamhi050
    "MEATHOOK_2" : [0x6D61656D, 0x35306968, 0x31], //meamhig051
    "CHIEF_1" : [0x6c656863, 0x31306175, 0x34], //chelua014
    "CHIEF_2" : [0x6C656863, 0x31306175, 0x35], //chelua015
}

CGI = {
    "HOME_1" : [0x656D6F68, 0x31], //home_1
    "NOSE" : [0x65736F6E, 0x00], //nose
    "MELT" : [0x746c656d, 0x00], //melt
}

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

function CompareArraysPrev(src, with, mode){
  res = []
  if(mode == 1)
  {
    for i in range(0, length(src) - 1) {
       array_push(res, src[i] == prev(with[i]))
    }
  }else{
    for i in range(0, length(src) - 1) {
       array_push(res, src[i] != prev(with[i]))
    }
  }
    
  return res
}

function CompareArraysPrior(src, with, mode){
  res = []
  if(mode == 1)
  {
    for i in range(0, length(src) - 1) {
       array_push(res, src[i] == prior(with[i]))
    }
  }else
  {
    for i in range(0, length(src) - 1) {
       array_push(res, src[i] != prior(with[i]))
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
    trigger = all_of(CompareArrays(Sets["MELEE_MEATHOOK_EXTERIOR"], SetLoadedPlaceHolder, 1), a => a) &&
              Engine["CURRENT_SETUP"] == 0x00 && 
              all_of(CompareArraysPrev(Dialogs["FULL_MOON_1"], DialogPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Dialogs["FULL_MOON_2"], DialogPlaceHolder, 1), a => a)
)

achievement(
    title = "Insult Mastery", points = 10, type="missable",
    description = "Beat Ignace Cheese without making any mistake",
    trigger = dword(dword(0x242974) + 0x000024) == 0x03 &&
              unless((prev(dword(0x243F20)) == 0x7376616E && prev(dword(0x243F24)) == 0x38307563 &&
                  prev(dword(0x243F28)) == 0x34 && dword(0x243F20) != 0x73797567 && dword(0x243F24) != 0x38317563 &&
                  dword(0x243F28) != 0x38)
              ) &&
              unless((prev(dword(0x243F20)) == 0x7376616E && prev(dword(0x243F24)) == 0x38307563 &&
                  prev(dword(0x243F28)) == 0x35 && dword(0x243F20) != 0x73797567 && dword(0x243F24) != 0x38317563 &&
                  dword(0x243F28) != 0x39)
              ) &&
              unless((prev(dword(0x243F20)) == 0x7376616E && prev(dword(0x243F24)) == 0x38307563 &&
                  prev(dword(0x243F28)) == 0x36 && dword(0x243F20) != 0x73797567 && dword(0x243F24) != 0x39317563 &&
                  dword(0x243F28) != 0x30)
              ) &&
              unless((prev(dword(0x243F20)) == 0x7376616E && prev(dword(0x243F24)) == 0x38307563 &&
                  prev(dword(0x243F28)) == 0x37 && dword(0x243F20) != 0x73797567 && dword(0x243F24) != 0x39317563 &&
                  dword(0x243F28) != 0x31)
              ) &&
              unless((prev(dword(0x243F20)) == 0x7376616E && prev(dword(0x243F24)) == 0x38307563 &&
                  prev(dword(0x243F28)) == 0x38 && dword(0x243F20) != 0x73797567 && dword(0x243F24) != 0x39317563 &&
                  dword(0x243F28) != 0x32)
              ) &&
              unless((prev(dword(0x243F20)) == 0x7376616E && prev(dword(0x243F24)) == 0x38307563 &&
                  prev(dword(0x243F28)) == 0x39 && dword(0x243F20) != 0x73797567 && dword(0x243F24) != 0x39317563 &&
                  dword(0x243F28) != 0x33)
              ) &&
              unless((prev(dword(0x243F20)) == 0x7376616E && prev(dword(0x243F24)) == 0x39307563 &&
                  prev(dword(0x243F28)) == 0x30 && dword(0x243F20) != 0x73797567 && dword(0x243F24) != 0x39317563 &&
                  dword(0x243F28) != 0x34)
              ) &&
              unless((prev(dword(0x243F20)) == 0x7376616E && prev(dword(0x243F24)) == 0x39307563 &&
                  prev(dword(0x243F28)) == 0x31 && dword(0x243F20) != 0x73797567 && dword(0x243F24) != 0x39317563 &&
                  dword(0x243F28) != 0x35)
              ) &&
              unless((prev(dword(0x243F20)) == 0x7376616E && prev(dword(0x243F24)) == 0x39307563 &&
                  prev(dword(0x243F28)) == 0x32 && dword(0x243F20) != 0x73797567 && dword(0x243F24) != 0x39317563 &&
                  dword(0x243F28) != 0x36)
              ) &&
              unless((prev(dword(0x243F20)) == 0x7376616E && prev(dword(0x243F24)) == 0x39307563 &&
                  prev(dword(0x243F28)) == 0x33 && dword(0x243F20) != 0x73797567 && dword(0x243F24) != 0x39317563 &&
                  dword(0x243F28) != 0x37)
              ) &&
              unless((prev(dword(0x243F20)) == 0x7376616E && prev(dword(0x243F24)) == 0x39307563 &&
                  prev(dword(0x243F28)) == 0x34 && dword(0x243F20) != 0x73797567 && dword(0x243F24) != 0x39317563 &&
                  dword(0x243F28) != 0x38)
              ) &&
              unless((prev(dword(0x243F20)) == 0x7376616E && prev(dword(0x243F24)) == 0x39307563 &&
                  prev(dword(0x243F28)) == 0x35 && dword(0x243F20) != 0x73797567 && dword(0x243F24) != 0x39317563 &&
                  dword(0x243F28) != 0x39)
              ) &&
              unless((prev(dword(0x243F20)) == 0x7376616E && prev(dword(0x243F24)) == 0x39307563 &&
                  prev(dword(0x243F28)) == 0x36 && dword(0x243F20) != 0x73797567 && dword(0x243F24) != 0x30327563 &&
                  dword(0x243F28) != 0x30)
              ) &&
              unless((prev(dword(0x243F20)) == 0x7376616E && prev(dword(0x243F24)) == 0x39307563 &&
                  prev(dword(0x243F28)) == 0x37 && dword(0x243F20) != 0x73797567 && dword(0x243F24) != 0x30327563 &&
                  dword(0x243F28) != 0x31)
              ) &&
              unless((prev(dword(0x243F20)) == 0x7376616E && prev(dword(0x243F24)) == 0x39307563 &&
                  prev(dword(0x243F28)) == 0x38 && dword(0x243F20) != 0x73797567 && dword(0x243F24) != 0x30327563 &&
                  dword(0x243F28) != 0x32)
              ) && prev(dword(0x243F20)) != 0x73797567 && prev(dword(0x243F24)) != 0x30327563 &&
              prev(dword(0x243F28)) != 0x33 && dword(0x243F20) == 0x73797567 && dword(0x243F24) == 0x30327563 &&
              dword(0x243F28) == 0x33 &&
              (always_false() || (never((dword(0x242B48) == 0x13 && dword(0x242980) == 0x03 && dword(0x243F20) == 0x7376616E &&
                    dword(0x243F24) == 0x35307563 && dword(0x243F28) == 0x39)
                )))
)

achievement(
    title = "Lucre Island", points = 5, type="progression",
    description = "Sail to Lucre Island",
    trigger = all_of(CompareArraysPrior(Sets["SEA_MAP"], SetLoadedPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Sets["LUCRE_HARBOR"], SetLoadedPlaceHolder, 1), a => a) 
)

achievement(
    title = "Bank Robbery", points = 5, type="progression",
    description = "Exit Lucre Island bank's vault",
    trigger = Engine["CURRENT_SETUP"] == 0x02 && 
              all_of(CompareArraysPrev(Dialogs["BANK_ROBBERY_1"], DialogPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Dialogs["BANK_ROBBERY_2"], DialogPlaceHolder, 1), a => a)

)

achievement(
    title = "Cryptozoology", points = 1, type="missable",
    description = " Moo?! What kinda weird duck are you ?!",
    trigger = all_of(CompareArraysPrev(Dialogs["DUCK_1"], DialogPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Dialogs["DUCK_2"], DialogPlaceHolder, 1), a => a)
)

achievement(
    title = "File-O-Matic", points = 5, type="progression",
    description = "Get information about Pegnose Pete's location",
    trigger = all_of(CompareArrays(Sets["LUCRE_PROTHESES"], SetLoadedPlaceHolder, 1), a => a) &&
              Engine["CURRENT_SETUP"] == 0x01 && 
              all_of(CompareArraysPrev(Dialogs["FILEOMATIC_1"], DialogPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Dialogs["FILEOMATIC_2"], DialogPlaceHolder, 1), a => a)
)

achievement(
    title = "Dr Emmett Brown", points = 1, type="missable",
    description = "Kill futur's Guybrush",
    trigger = all_of(CompareArrays(Sets["LUCRE_SWAMP"], SetLoadedPlaceHolder, 1), a => a) &&
              Engine["CURRENT_SETUP"] == 0x08 && 
              all_of(CompareArraysPrev(Dialogs["GUYKILLGUY_1"], DialogPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Dialogs["GUYKILLGUY_2"], DialogPlaceHolder, 1), a => a)
)

achievement(
    title = "Dr Frankenstein", points = 5, type="missable",
    description = "Create and use an Abomination",
    trigger = all_of(CompareArraysPrev(Dialogs["ABOMINATION_1"], DialogPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Dialogs["ABOMINATION_2"], DialogPlaceHolder, 1), a => a)
)

achievement(
    title = "Scuba Diver", points = 2, type="missable",
    description = "",
    trigger = all_of(CompareArrays(Sets["LUCRE_DEEP_WATER"], SetLoadedPlaceHolder, 1), a => a) &&
              Engine["CURRENT_SETUP"] == 0x01 && 
              all_of(CompareArraysPrev(Dialogs["DROWN_1"], DialogPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Dialogs["DROWN_2"], DialogPlaceHolder, 1), a => a)
)

achievement(
    title = "Act 2", points = 10, type="progression",
    description = "Prove your innocence and come back to Melee Island",
    trigger = all_of(CompareArraysPrior(Sets["ACT_2"], SetLoadedPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Sets["MELEE_GOVERNOR_IN"], SetLoadedPlaceHolder, 1), a => a) &&
              Engine["CURRENT_SETUP"] == 0x03 && 
              all_of(CompareArraysPrior(CGI["NOSE"], CGIPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(CGI["HOME_1"], CGIPlaceHolder, 1), a => a)
)

achievement(
    title = "Talktoo", points = 1, type="missable",
    description = "Make meathook to do that funny thing  ",
    trigger = all_of(CompareArrays(Sets["MELEE_MEATHOOK_INSIDE"], SetLoadedPlaceHolder, 1), a => a) &&
              Engine["CURRENT_SETUP"] == 0x01 && 
              all_of(CompareArraysPrev(Dialogs["MEATHOOK_1"], DialogPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Dialogs["MEATHOOK_2"], DialogPlaceHolder, 1), a => a)
)

achievement(
    title = "ARGH ! MON DIEU !", points = 5, type="progression",
    description = "Burn down the painting at LUA Bar",
    trigger = all_of(CompareArrays(Sets["MELEE_LUA_BAR"], SetLoadedPlaceHolder, 1), a => a) &&
              Engine["CURRENT_SETUP"] == 0x03 && 
              all_of(CompareArrays(CGI["MELT"], CGIPlaceHolder, 1), a => a) &&
              all_of(CompareArraysPrev(Dialogs["CHIEF_1"], DialogPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Dialogs["CHIEF_2"], DialogPlaceHolder, 1), a => a)

)

achievement(
    title = "Jambalya Island", points = 5,
    description = "Sail to Jambalya Island",
    trigger = all_of(CompareArraysPrior(Sets["SEA_MAP"], SetLoadedPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Sets["JAMBALYA_HARBOR"], SetLoadedPlaceHolder, 1), a => a) 
)
