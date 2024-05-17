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

FunctionPlaceHolder = [
    dword(dword(0x00242a38) + 0x0),
    dword(dword(0x00242a38) + 0x4),
    dword(dword(0x00242a38) + 0x8),
    dword(dword(0x00242a38) + 0xc),
    dword(dword(0x00242a38) + 0x10),
    dword(dword(0x00242a38) + 0x14),
    dword(dword(0x00242a38) + 0x18),
    dword(dword(0x00242a38) + 0x1c),
    dword(dword(0x00242a38) + 0x20),
    dword(dword(0x00242a38) + 0x24),
    dword(dword(0x00242a38) + 0x28),
]

FunctionPlaceHolder2 = [
    dword(dword(0x00423c48) + 0x0),
    dword(dword(0x00423c48) + 0x4),
    dword(dword(0x00423c48) + 0x8),
    dword(dword(0x00423c48) + 0xc),
    dword(dword(0x00242a38) + 0x10),
]



Sets = {
    "MELEE_PROLOGUE" : [0x454c454d, 0x65775c45, 0x344d2e64], //MELEE\mhe.M4B
    "MELEE_PROLOGUE_CS" : [0x454c4500, 0x65775c45, 0x344d2e64], // ELEE\mhe.M4B Cutscene
    "MELEE_MEATHOOK_EXTERIOR" : [0x454c454d, 0x686d5c45, 0x344d2e65], //MELEE\mhe.M4B
    "MELEE_MEATHOOK_INSIDE" : [0x454c454d, 0x686d5c45, 0x344d2e69], //MELEE\mhi.M4B
    "MELEE_SCUMMBAR" : [0x454c454d, 0x63735c45, 0x344d2e75], //MELEE\scu.M4B
    "LUCRE_HARBOR" : [0x5243554c, 0x756c5c45, 0x344d2e63], //LUCRE\luc.M4B
    "MELEE_SHIPYARD" : [0x454c454d, 0x68735c45, 0x344d2e69], //MELEE\shi.M4B
    "MELEE_GOVERNOR_IN" : [0x454c454d, 0x6d675c45, 0x344d2e69], //MELEE\gmi.M4B
    "MELEE_GOVERNOR_EXT" : [0x454c454d, 0x6d675c45, 0x344d2e65], //MELEE\gme.M4B
    "MELEE_LUA_BAR" : [0x454c454d, 0x756c5c45, 0x344d2e61], //MELEE\lua.M4B
    "SEA_MAP" : [0x454c4500, 0x72745c45, 0x344d2e69], //MELEE\shi.M4B
    "ACT_2" : [0x454c4500, 0x63615c45, 0x344d2e74], //MELEE\act.M4B
    "LUCRE_PROTHESES" : [0x5243554c, 0x6f705c45, 0x344d2e70], //LUCRE\pop.M4B
    "LUCRE_SWAMP" : [0x5243554c, 0x6f6d5c45, 0x344d2e74], //LUCRE\mot.M4B
    "LUCRE_SWAMP_CS" : [0x52435500, 0x6f6d5c45, 0x344d2e74], // UCRE\mot.M4B
    "LUCRE_DEEP_WATER" : [0x5243554c, 0x6c755c45, 0x344d2e67], //LUCRE\ulg.M4B
    "LUCRE_CABIN" : [0x5243554c, 0x70705c45, 0x344d2e68], //LUCRE\pph.M4B
    "LUCRE_HOJ" : [0x5243554c, 0x6f685c45, 0x344d2e6a], //LUCRE\hoj.M4B
    "JAMBALYA_MAP" : [0x424d414a, 0x59414c41, 0x6d616a5c, 0x42344d2e], //JAMBALAY\gpt.M4B
    "JAMBALYA_HARBOR" : [0x424d414a, 0x59414c41, 0x7470675c, 0x42344d2e], //JAMBALAY\gpt.M4B
    "JAMBALYA_STARBUC" : [0x424d414a, 0x59414c41, 0x6274735c, 0x42344d2e], //JAMBALAY\stb.M4B
    "JAMBALYA_MICROGROG" : [0x424d414a, 0x59414c41, 0x67696d5c, 0x42344d2e], //JAMBALAY\mig.M4B
    "JAMBALYA_PLANET" : [0x424d414a, 0x59414c41, 0x746c705c, 0x42344d2e], //JAMBALAY\plt.M4B
    "JAMBALYA_SCHOOL" : [0x424d4100, 0x59414c41, 0x7470635c, 0x42344d2e], //AMBALAY\cpt.M4B
    "JAMBALYA_BEACH" : [0x424d414a, 0x59414c41, 0x62616b5c, 0x42344d2e], //AMBALAY\cpt.M4B
    "JAMBALYA_PLANK" : [0x424d414a, 0x59414c41, 0x616c705c, 0x42344d2e], //JAMBALAY\pla.M4B
    "ACT_3" : [0x4b4e4f00, 0x615c5945, 0x4d2e7463], //MONKEY\act.M4B
    "ACT_3+" : [0x4b4e4f4D, 0x615c5945, 0x4d2e7463], //MONKEY\act.M4B
    "MONKEY_BEACH" : [0x4b4e4f4d, 0x6d5c5945, 0x4d2e6269], //MONKEY\mib.M4B
    "MONKEY_BOULDER" : [0x4b4e4f4d, 0x705c5945, 0x4d2e6361], //MONKEY\pac.M4B
    "MONKEY_CANYON" : [0x4b4e4f4d, 0x635c5945, 0x4d2e6e61], //MONKEY\can.M4B
    "MONKEY_LAVA" : [0x4b4e4f4d, 0x6c5c5945, 0x4d2e7661], //MONKEY\lav.M4B
    "MONKEY_CASTLE" : [0x4b4e4f4d, 0x635c5945, 0x4d2e6c6f], //MONKEY\col.M4B
    "MONKEY_MONKEYTOWN" : [0x4b4e4f4d, 0x6d5c5945, 0x4d2e6e6f], //MONKEY\mon.M4B
    "MONKEY_MONKEYHEAD" : [0x4b4e4f4d, 0x6d5c5945, 0x4d2e686f], //MONKEY\moh.M4B
    "MONKEY_CONTROLROOM" : [0x4b4e4f4d, 0x685c5945, 0x4d2e6965], //MONKEY\hei.M4B
    "MONKEY_FINAL" : [0x4b4e4f4d, 0x665c5945, 0x4d2e6e69], //MONKEY\fin.M4B
}

Dialogs = {
    "FULL_MOON_1" : [0x6d797567, 0x30306568, 0x34], //guymhe004
    "FULL_MOON_2" : [0x6d797567, 0x30306568, 0x35], //guymhe005
    "INSULT_1" : [0x73797567, 0x30327563, 0x33], //guyscu003
    "INSULT_2" : [0x7376616e, 0x35307563, 0x32], //navscu052
    "CATAPULT_1" : [0x676f6f67, 0x3130656d, 0x30], //googme010
    "CATAPULT_2" : [0x676f6f67, 0x3430656d, 0x31], //googme041
    "BANK_ROBBERY_1" : [0x76797567, 0x32307561, 0x39], //pegban001
    "BANK_ROBBERY_2" : [0x62676570, 0x30306E61, 0x31], //guyvan001
    "DUCK_1" : [0x61637564, 0x30306c6c, 0x31], //ducall001
    "DUCK_2" : [0x61797567, 0x32316c6c, 0x35], //guyall125
    "FILEOMATIC_1" : [0x61797567, 0x37306C6C, 0x38], //guyall078
    "FILEOMATIC_2" : [0x61797567, 0x37306C6C, 0x39], //guyall079
    "GUYKILLGUY_1" : [0x6D797567, 0x3330746F, 0x33], //guymot033
    "GUYKILLGUY_2" : [0x6D797567, 0x3330746F, 0x34], //guymot034
    "CATCHPEGNOS_1" : [0x686e6163, 0x32306a6f, 0x32], //canhoj02
    "CATCHPEGNOS_2" : [0x68797567, 0x31306a6f, 0x38], //guyhoj01
    "ABOMINATION_1" : [0x61797567, 0x37346C6C, 0x37], //guyall077
    "ABOMINATION_2" : [0x61797567, 0x37346C6C, 0x35], //guymot075
    "DROWN_1" : [0x75797567, 0x3030676C, 0x31], //guyulg001
    "DROWN_2" : [0x75797567, 0x3030676C, 0x32], //guyulg002
    "MEATHOOK_1" : [0x6D61656D, 0x35306968, 0x30], //meamhi050
    "MEATHOOK_2" : [0x6D61656D, 0x35306968, 0x31], //meamhig051
    "CHIEF_1" : [0x6c656863, 0x31306175, 0x34], //chelua014
    "CHIEF_2" : [0x6C656863, 0x31306175, 0x35], //chelua015
    "TEACHER_1" : [0x70766972, 0x34306174, 0x33], //rivpta043
    "TEACHER_2" : [0x70797567, 0x30306174, 0x36], //guypta006
    "PUPPETS" : [0x6b797567, 0x35306261, 0x37], //guykab057
    "DIVE_JURY_1" : [0x70707274, 0x3030616c, 0x35], //trppla005
    "DIVE_JURY_2" : [0x70646465, 0x3030616c, 0x35], //eddpla005
    "JOJO_1" : [0x6d6a6f6a, 0x31306e6f, 0x37], //jojmon017
    "GIANT_MONKEY_1" : [0x68797567, 0x30306965, 0x31], //guyhei030
    "GIANT_MONKEY_2" : [0x68797567, 0x33306965, 0x30], //guyhei030
    "COWARD" : [0x6d797567, 0x39306e6f, 0x32], //guymon092
    "TENT_1" : [0x6d797567, 0x3330746f, 0x33], //guymot033
    "TENT_2" : [0x6772756d, 0x34307470, 0x33], //murgpt043
    "PONG_1" : [0x70797567, 0x3531706f, 0x39], //guypop159
    "PONG_2" : [0x61797567, 0x38306c6c, 0x31], //guyall081
}

Functions = {
    "GET_MONKEY_MUG" : [0x5f657375, 0x656b6166, 0x6e6f4d5f, 0x5f79656b, 0x67754d],
    "CS_ROCK" : [0x6b636f72, 0x73635f00, 0x636f725f, 0x2e63006b],
    "MULTIPLAYER_OPTION" : [0x746c754d, 0x616c7069, 0x20726579, 0x6974704f, 0x2e736e6f],
    "MULTIPLAYER_INPUTS" : [0x3030315f, 0x3030315f, 0x3030315f, 0x3030315f, 0x3030315f],
}

CGI = {
    "INTRO_A" : [0x72746e69, 0x00615f6f], //intro_a
    "INTRO_B" : [0x72746e69, 0x00625f6f], //intro_b
    "HOME_1" : [0x656D6F68, 0x31], //home1
    "NOSE" : [0x65736F6E], //nose
    "MELT" : [0x746c656d], //melt
    "DUMM" : [0x6d6d7564], //dumm
    "ELA3" : [0x33616c65], //ela3
    "HOME_2" : [0x656D6F68, 0x32], //home2
    "ROCK" : [0x6b636f72], //rock
    "SORY" : [0x4d2e6965], //sory
    "ESPY" : [0x79707365], //espi
    "GMRR" : [0x72726d67], //gmrr
    "OZNX" : [0x786e7a6f], //oznx
    "FINI" : [0x696e6966], //fini
}

Music = {
    "ENDING" : 0x7a
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
    title = "Yo Ho, Yo Ho! A Pirates Life For Me", points = 5,
    description = "Destroy the enemies' ship and complete the Prologue",
    trigger = prior(SetLoadedPlaceHolder[0]) == Sets["MELEE_PROLOGUE"][0] &&
              all_of(CompareArrays(Sets["MELEE_PROLOGUE_CS"], SetLoadedPlaceHolder, 1), a => a) &&
              prior(CGIPlaceHolder[1]) == CGI["INTRO_A"][1] &&
              all_of(CompareArrays(CGI["INTRO_B"], CGIPlaceHolder, 1), a => a)
)

achievement(
    title = "Werewolf", points = 2, type="missable",
    description = "Bark at the moon",
    trigger = all_of(CompareArrays(Sets["MELEE_MEATHOOK_EXTERIOR"], SetLoadedPlaceHolder, 1), a => a) &&
              Engine["CURRENT_SETUP"] == 0x00 && 
              all_of(CompareArraysPrev(Dialogs["FULL_MOON_1"], DialogPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Dialogs["FULL_MOON_2"], DialogPlaceHolder, 1), a => a)
)

achievement(
    title = "Wrestler", points = 5, type="progression",
    description = "Beat Ignace Cheese during an Insult Wrestling",
    trigger = all_of(CompareArrays(Sets["MELEE_SCUMMBAR"], SetLoadedPlaceHolder, 1), a => a) &&
              Engine["CURRENT_SETUP"] == 0x03 && 
              all_of(CompareArraysPrev(Dialogs["INSULT_1"], DialogPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Dialogs["INSULT_2"], DialogPlaceHolder, 1), a => a)
)

achievement(
    title = "Bad Manor", points = 0,
    description = "Save the Governor Mansion from destruction",
    trigger = all_of(CompareArrays(Sets["MELEE_GOVERNOR_EXT"], SetLoadedPlaceHolder, 1), a => a) &&
              Engine["CURRENT_SETUP"] == 0x02 && 
              Dialogs["CATAPULT_1"][2] == prev(DialogPlaceHolder[2]) &&
              all_of(CompareArrays(Dialogs["CATAPULT_2"], DialogPlaceHolder, 1), a => a)
)

achievement(
    title = "Insult Mastery", points = 10, type="missable",
    description = "Beat Ignace Cheese without making any mistake",
    trigger = all_of(CompareArrays(Sets["MELEE_SCUMMBAR"], SetLoadedPlaceHolder, 1), a => a) &&
              Engine["CURRENT_SETUP"] == 0x03 && 
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
    title = "Cryptozoology", points = 2, type="missable",
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
    title = "Mystes O' Tyme", points = 5, type="progression",
    description = "Made your way to Pegnose Pete's Cabin",
    trigger = all_of(CompareArrays(Sets["LUCRE_CABIN"], SetLoadedPlaceHolder, 1), a => a) &&
              all_of(CompareArraysPrev(Sets["LUCRE_SWAMP_CS"], SetLoadedPlaceHolder, 1), a => a)
)

achievement(
    title = "Law and Order", points = 0,
    description = "Catch Pegnose Pete and hand him over to the Inspector Canard",
    trigger = all_of(CompareArrays(Sets["LUCRE_HOJ"], SetLoadedPlaceHolder, 1), a => a) &&
              Engine["CURRENT_SETUP"] == 0x00 && 
              all_of(CompareArraysPrev(Dialogs["CATCHPEGNOS_1"], DialogPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Dialogs["CATCHPEGNOS_2"], DialogPlaceHolder, 1), a => a)
)

achievement(
    title = "Dr Frankenstein", points = 5, type="missable",
    description = "Create and use an Abomination",
    trigger = all_of(CompareArraysPrev(Dialogs["ABOMINATION_1"], DialogPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Dialogs["ABOMINATION_2"], DialogPlaceHolder, 1), a => a)
)

achievement(
    title = "Scuba Diver", points = 5, type="missable",
    description = "Hold your breath under water as much as possible",
    trigger = all_of(CompareArrays(Sets["LUCRE_DEEP_WATER"], SetLoadedPlaceHolder, 1), a => a) &&
              Engine["CURRENT_SETUP"] == 0x01 && 
              all_of(CompareArraysPrev(Dialogs["DROWN_1"], DialogPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Dialogs["DROWN_2"], DialogPlaceHolder, 1), a => a)
)

achievement(
    title = "Act II", points = 10, type="progression",
    description = "Prove your innocence and come back to Melee Island",
    trigger = all_of(CompareArraysPrior(Sets["ACT_2"], SetLoadedPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Sets["MELEE_GOVERNOR_IN"], SetLoadedPlaceHolder, 1), a => a) &&
              Engine["CURRENT_SETUP"] == 0x03 && 
              all_of(CompareArraysPrior(CGI["NOSE"], CGIPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(CGI["HOME_1"], CGIPlaceHolder, 1), a => a)
)

achievement(
    title = "Talktoo", points = 2, type="missable",
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

achievement(
    title = "Silver Monkey Head", points = 5, type="progression",
    description = "Get the first part of the Ultimate Insult",
    trigger = all_of(CompareArrays(Sets["JAMBALYA_SCHOOL"], SetLoadedPlaceHolder, 1), a => a) &&
              Engine["CURRENT_SETUP"] == 0x03 && 
              all_of(CompareArraysPrev(Functions["GET_MONKEY_MUG"], FunctionPlaceHolder, 0), a => a) &&
              all_of(CompareArrays(Functions["GET_MONKEY_MUG"], FunctionPlaceHolder, 1), a => a)
)

achievement(
    title = "Certificate of Transmogrification", points = 2, type="missable",
    description = "Be graduated from Ozzie Mandrill's Pirate Transmogrification Academy",
    trigger = all_of(CompareArrays(Sets["JAMBALYA_SCHOOL"], SetLoadedPlaceHolder, 1), a => a) &&
              Engine["CURRENT_SETUP"] == 0x01 && 
              all_of(CompareArraysPrev(Dialogs["TEACHER_1"], DialogPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Dialogs["TEACHER_2"], DialogPlaceHolder, 1), a => a)
)

achievement(
    title = "Bronze Hat", points = 5,
    description = "Get the second part of the Ultimate Insult",
    trigger = all_of(CompareArrays(Sets["JAMBALYA_BEACH"], SetLoadedPlaceHolder, 1), a => a) &&
              Engine["CURRENT_SETUP"] == 0x07 && 
              prior(Engine["CURRENT_SET"]) == 0x0 &&
              Engine["CURRENT_SET"] != 0x0 &&
              all_of(CompareArrays(CGI["DUMM"], CGIPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Dialogs["PUPPETS"], DialogPlaceHolder, 1), a => a)
)


achievement(
    title = "MARCO ! POLO !", points = 5, type="progression",
    description = "Beat Marco de Pollo and get the last part of the Ultimate Insult",
    trigger = all_of(CompareArrays(Sets["JAMBALYA_PLANK"], SetLoadedPlaceHolder, 1), a => a) &&
              Engine["CURRENT_SETUP"] == 0x02 && 
              all_of(CompareArraysPrev(Dialogs["DIVE_JURY_1"], DialogPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Dialogs["DIVE_JURY_2"], DialogPlaceHolder, 1), a => a)
)

achievement(
    title = "ACT III", points = 10, type="progression",
    description = "Be banished to Monkey Island",
    trigger = all_of(CompareArraysPrior(Sets["ACT_3"], SetLoadedPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Sets["MONKEY_BEACH"], SetLoadedPlaceHolder, 1), a => a) &&
              Engine["CURRENT_SETUP"] == 0x0 && 
              all_of(CompareArraysPrior(CGI["ELA3"], CGIPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(CGI["HOME_2"], CGIPlaceHolder, 1), a => a)
)

achievement(
    title = "Boulder Dash", points = 5, type="progression",
    description = "Throw a boulder to the Volcano",
    trigger = all_of(CompareArrays(Sets["MONKEY_BOULDER"], SetLoadedPlaceHolder, 1), a => a) &&
              all_of(CompareArraysPrev(Functions["CS_ROCK"], FunctionPlaceHolder, 0), a => a) &&
              all_of(CompareArrays(Functions["CS_ROCK"], FunctionPlaceHolder, 1), a => a)
)

achievement(
    title = "Animality", points = 5, type="progression",
    description = "Become the true champion of Monkey Kombat by beating Jojo Jr",
    trigger = all_of(CompareArrays(Sets["MONKEY_MONKEYTOWN"], SetLoadedPlaceHolder, 1), a => a) &&
              Engine["CURRENT_SETUP"] == 0x03 && 
              all_of(CompareArraysPrev(Dialogs["JOJO_1"], DialogPlaceHolder, 0), a => a) &&
              all_of(CompareArrays(Dialogs["JOJO_1"], DialogPlaceHolder, 1), a => a)
)

achievement(
    title = "ACT III+", points = 10, type="progression",
    description = "Escape Monkey Island",
    trigger = all_of(CompareArrays(Sets["ACT_3+"], SetLoadedPlaceHolder, 1), a => a) &&
              all_of(CompareArraysPrior(CGI["ESPY"], CGIPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(CGI["GMRR"], CGIPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Dialogs["GIANT_MONKEY_2"], DialogPlaceHolder, 1), a => a)
)

achievement(
    title = "A Pirate I Was Meant To Be", points = 25,
    description = "Complete Escape from Monkey Island. Now, trim the sails and roam the sea !",
    trigger = all_of(CompareArrays(Sets["MONKEY_FINAL"], SetLoadedPlaceHolder, 1), a => a) &&
              Engine["CURRENT_SETUP"] == 0x05 && 
              all_of(CompareArrays(CGI["FINI"], CGIPlaceHolder, 1), a => a) &&
              Engine["CURRENT_BGM"] == Music["ENDING"]
)

achievement(
    title = "Coward", points = 2,
    description = "Try to escape the final fight",
    trigger = all_of(CompareArrays(Sets["MONKEY_FINAL"], SetLoadedPlaceHolder, 1), a => a) &&
              Engine["CURRENT_SETUP"] == 0x0 && 
              all_of(CompareArraysPrev(Dialogs["COWARD"], DialogPlaceHolder, 0), a => a) &&
              all_of(CompareArrays(Dialogs["COWARD"], DialogPlaceHolder, 1), a => a)
)

achievement(
    title = "How About Another Joke, Murray?!", points = 2,
    description = "Getting bitten by Murray while changing clothes",
    trigger = all_of(CompareArrays(Sets["JAMBALYA_PLANK"], SetLoadedPlaceHolder, 1), a => a) &&
              Engine["CURRENT_SETUP"] == 0x01 && 
              all_of(CompareArraysPrev(Dialogs["TENT_1"], DialogPlaceHolder, 1), a => a) &&
              all_of(CompareArrays(Dialogs["TENT_2"], DialogPlaceHolder, 1), a => a)
)

achievement(
    title = "Murray Ball", points = 2, type="missable",
    description = "Unlock and play a game of Murray Ball",
    trigger = dword(tbyte(0x242A10) + 0x000018) == 0x6C61626D
)

achievement(
    title = "Murray Invaders", points = 0,
    description = "Unlock and play a game of Murray Invaders",
    trigger = dword(tbyte(tbyte(0x242A10)) + 0x000018) == 0x766E696D && dword(0x00001C) == 0x72656461
)
