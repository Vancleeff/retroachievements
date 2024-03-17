// TechnoMage: Return of Eternity
// #ID = 16280


//GLOBAL
ChapterID = byte(0x0A1740)
RoomID = byte(0x0A1744)
MusicPlayed = word(0x1da6f4)
CinemaMode = byte(0x0ABF7A)

//PLAYER
PlayerAnim = byte(0x1C3A24)
PlayerAnimList = {
    "STAND"  : 0x00,
    "WALK"   : 0x01,
    "WEAPON" : 0x02,
    "BOW"    : 0x03,
    "SPELL"  : 0x04,
    "JUMP"   : 0x07,
    "FALL"   : 0x08,
    "PUSH"   : 0x09,
    "PULL"   : 0x0A,
    "HOOK"   : 0x0C,
    "DAMAGE" : 0x0D,
    "DIE"    : 0x0E,
}

PlayerLvl   = byte(0x0ab93c)
PlayerXP    = byte(0x0ab91c)
PlayerHP    = byte(0x1c3a20)
PlayerMP    = byte(0x0ab930)
PlayerSTR   = byte(0x0ab93d)
PlayerINT   = byte(0x0ab93e)
PlayerCON   = byte(0x0ab93f)
PlayerMYS   = byte(0x0ab940)
PlayerGold  = word(0x092104)
Curr_weapon = byte(0x091e84)
Curr_spell  = byte(0x091e85)
Curr_equ    = byte(0x091e87)
Curr_tools  = byte(0x091e86)
//PLAYER END

//INVENTORY
//QTY (8-Bit)
//The following variables contain the qty of each important items. 
//For weapons, spells, equipments and tools, having a qty of 1 means the player has unlocked it. It's not visible in the inventory slots.
Weapons = {
    "DAGGER"  	 : byte(0x091ea0),
    "SWORD"   	 : byte(0x091eac),
    "MACE" 		 : byte(0x091eb8),
    "HAMMER"     : byte(0x091ec4),
    "AXE"  		 : byte(0x091ed0),
    "BOW"   	 : byte(0x091edc),
    "FIRE_ARROW" : byte(0x091ee8),
    "WATER_ARROW": byte(0x091ef4)
}

Spells = {
    "FIREBALL" : byte(0x091f00),
    "ICECLAW"  : byte(0x091f0c),
    "VORTEX"   : byte(0x091f18),
    "METEOR"   : byte(0x091f24),
    "THUNDER"  : byte(0x091f30),
    "SHIELD"   : byte(0x091f3c),
    "QUAKE"    : byte(0x091f48)
}

Equipments = {
    "ANKH"  	  : byte(0x091f54),
    "RINGHP"   	  : byte(0x091f60),
    "AMULETMAGIC" : byte(0x091f6c),
    "CHAINMAIL"   : byte(0x091f78),
    "BELT"        : byte(0x091f84),
    "CAPE"   	  : byte(0x091f90),
    "AMULETXP"    : byte(0x091f9c),
    "GLOVES"      : byte(0x091fa8)
}

Tools = {
    "BOMB"  : byte(0x091fb4),
    "RADAR" : byte(0x091fc0),
    "BOOTS" : byte(0x091fcc),
    "HOOK"  : byte(0x091fd8)
}

Items = {
	"ARROW"      : byte(0x091FE4),
	"F_ARROW"    : byte(0x091FF0),
	"W_ARROW"    : byte(0x091FFC),
	"S_POTION_H" : byte(0x092008),
	"L_POTION_H" : byte(0x092014),
	"S_POTION_M" : byte(0x092038),
	"L_POTION_M" : byte(0x092044),
	"S_POTION_C" : byte(0x092020),
	"L_POTION_C" : byte(0x09202C),
	"HERB"       : byte(0x092050),
	"CHALK"      : byte(0x0920F8),
	"TORCH"      : byte(0x0920D4),
	"ANTIDOTE"   : byte(0x09205C),
	"COMPASS"    : byte(0x0920ec),
	"STEWOIL"    : byte(0x0921F4),
	"CROWBAR"    : byte(0x0921A0),
	"CWHEEL"     : byte(0x09220C),
	"CORK"       : byte(0x0921C4),
	"OIL"        : byte(0x092218),
	"DARKDIST"   : byte(0x092188),
	"WAND"       : byte(0x0922A8),
	"FGOLD"      : byte(0x09235C),
	"GWHEEL"     : byte(0x0923C8),
	"SH_POTION"  : byte(0x092320),
	"LARS_CORK"  : byte(0x1F1483) //this one is special, it's an item detained by a NPC (Lars in SteamerTown)
}

Cubes = {
	"STR"    : byte(0x092068),
	"INT"    : byte(0x092074),
	"CON"    : byte(0x092080),
	"MYS"    : byte(0x09208c),
}

Crystals = {
	"GREEN"  : byte(0x092110),
	"RED"    : byte(0x092134),
	"BLUE"   : byte(0x092128),
	"YELLOW" : byte(0x09211C),
	"WHITE"  : byte(0x092140)
}

Seals = {
	"COMBAT"  : byte(0x092620),
	"MYST"    : byte(0x092614),
	"DEFENCE" : byte(0x09262C),
	"MAGIC"   : byte(0x092638)
}
//INVENTORY END

//QUESTLOG
QuestLog = [
	{"key": dword(0x0ABA54), "done": byte(0x0ABA63)},
	{"key": dword(0x0ABA68), "done": byte(0x0ABA77)},
	{"key": dword(0x0ABA7C), "done": byte(0x0ABA8B)},
	{"key": dword(0x0ABA90), "done": byte(0x0ABA9F)},
	{"key": dword(0x0ABAA4), "done": byte(0x0ABAB3)},
	{"key": dword(0x0ABAB8), "done": byte(0x0ABAC7)},
	{"key": dword(0x0ABACC), "done": byte(0x0ABADB)},
	{"key": dword(0x0ABAE0), "done": byte(0x0ABAEF)},
	{"key": dword(0x0ABAF4), "done": byte(0x0ABB03)},
	{"key": dword(0x0ABB08), "done": byte(0x0ABB17)},
	{"key": dword(0x0ABB1C), "done": byte(0x0ABB2B)},
	{"key": dword(0x0ABB30), "done": byte(0x0ABB3F)},
]

//Maps are sliced in zone and a value of progression for each of them (0x00 to 0xff)
Map = [
	byte(0x0a3acc),
	byte(0x0a3acd),
	byte(0x0a3ace),
	byte(0x0a3acf),
	byte(0x0a3ad0),
	byte(0x0a3ad1),
	byte(0x0a3ad2),
	byte(0x0a3ad3),	
]	

//Selected element in GUI (inventory slots not included)
SelectedGUI = dword(0x0a0c6c)
SelectedGUIValue = {
	"XPBAR":  0x80093a24,
	"STRBAR": 0x80093a44,
	"INTBAR": 0x80093a64,
	"CONBAR": 0x80093a84,
	"MYSBAR": 0x80093aa4,
}

//BOSSES
BossGauge  = byte(0x0a0610)
GiantRatHp = byte(0x1C35D0)
ScrapyardBossHp = byte(0x1c3180)
GiantSpiderBossHp = byte(0x1c19c8)

// These addresses contain the current Event ID, it can be a dialog, a starting quest, a solved puzzle or even a played music.
// The problem is that when the ID change, the placeholders are not flushed and if the event A is longer than event B,
// the residual part of event A will still be there so it's important to always check on the most significative and unique
// part of the Event ID and truncate after the last full covered byte to avoid previous residual parts. (if not possible, avoid that method)
// These Event ID are shared between all the versions of the game, making it a better option than dialog ID for language compatibility. 
EventPlaceHolder = [
    dword(0x0B71E0),
    dword(0x0B71E4),
    dword(0x0B71E8),
    dword(0x0B71EC),
    dword(0x0B71F0),
    dword(0x0B71F4),
    dword(0x0B71F8),
    dword(0x0B71FC),
]

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

//Check if the player is on the Title Screen
function InTitleScreen(){
	return (EventPlaceHolder[0] == 1145393731 && EventPlaceHolder[1] == 5461065)
}

//Check if the player is watching the Credits
function InCredits(){
	return (EventPlaceHolder[0] == 1230262351 && EventPlaceHolder[1] == 5459535)
}

//Check if the player is in the game and not on the Title Screen or the Credits
function InGame(){
	return(never(InTitleScreen()) && never(InCredits()))
}

//Check if the player is on the point allocation window (lvl up)
function InLvlUpGUI(){
	return SelectedGUI != SelectedGUIValue["XPBAR"] && 
		SelectedGUI != SelectedGUIValue["STRBAR"] && 
		SelectedGUI != SelectedGUIValue["INTBAR"] && 
		SelectedGUI != SelectedGUIValue["CONBAR"] && 
		SelectedGUI != SelectedGUIValue["MYSBAR"]
}

//Check in every quest log for a QUEST ID and check the completion
function CheckInQuestLog(key)
{
	requirements = []
	for i in range(0, length(QuestLog) - 1) {
       array_push(requirements, (prev(QuestLog[i]["done"]) == 0x00 && QuestLog[i]["done"] == 0x01 && QuestLog[i]["key"] == key))
    }
    return requirements
}

//Check wether the player performs a transition between two chapters. Used to trigger story related achievements (Chapter X)
function ChapterTransition(last, next) => prev(ChapterID) == last && ChapterID == next

//Check if the player is in a specific gamestage which consists on a pair of current chapter and room
function CheckGameStage(chapter, room) => ChapterID == chapter && RoomID == room

//Return the value of the player animation (8-bit)
function GetAnimValue(key) => PlayerAnimList[key]

//Check if the value of an adress switch from 0 to 1
function switchON(address){
  	return prev(address) == 0x00 && address == 0x01
}

//Check if the value of an adress switch from 1 to 0
function switchOFF(address){
  	return prev(address) == 0x01 && address == 0x00
}

//Check if the player has looted a specific item by check prev and current qty
function HasLooted(ArraySrc, key){
  	return prev(ArraySrc[key]) == 0x00 && ArraySrc[key] == 0x01
}

//Check if the player has dropped a specific item by check prev and current qty (usually when returning a quest or use quest Item)
function HasDropped(ArraySrc, key){
  	return prev(ArraySrc[key]) == 0x01 && ArraySrc[key] == 0x00
}

//Check if the player reached a specific level.
function LevelUp(from, to){
  	return  InGame() &&
            prev(PlayerLvl) == from &&
            measured(
                PlayerLvl == to, 
                format="raw")
}

//Check if address increased to target since last frame
function PrevIncreasedTo(address, target){
	return prev(address) < target && address >= target
}

//Used to check if a skill increased to a specific target when level up. prior <= target is used because the game increase 
//every skills at each level up.
function PriorIncreasedTo(address, target){
	return prior(address) <= target && address >= target
}

//Check if address increased since last frame
function PrevIncreased(address){
	return prev(address) < address
}

//Check if address decreased since last frame
function PrevDecreased(address){
	return prev(address) > address
}

//Check if player has changed the Equipment
function HasChangedEquipment(){
    return  prev(Curr_equ) >= 1 &&
            prev(Curr_equ) <= 8 &&
            Curr_equ >= 1 &&
            Curr_equ <= 8 &&
            prev(Curr_equ) != Curr_equ
}

//Check if player has changed the equipment
function HasChangedWeapon(){
       return  prev(Curr_weapon) >= 1 &&
            prev(Curr_weapon) <= 8 &&
            Curr_weapon >= 1 &&
            Curr_weapon <= 8 &&
            prev(Curr_weapon) != Curr_weapon
}

//Check if player has changed the Tool
function HasChangedTool(){
        return  prev(Curr_tools) >= 1 &&
            prev(Curr_tools) <= 4 &&
            Curr_tools >= 1 &&
            Curr_tools <= 4 &&
            prev(Curr_tools) != Curr_tools
}

//Check if player has changed the Spell
function HasChangedSpell(){
    return  prev(Curr_spell) >= 1 &&
            prev(Curr_spell) <= 7 &&
            Curr_spell >= 1 &&
            Curr_spell <= 7 &&
            prev(Curr_spell) != Curr_spell
}

//ACHIEVEMENTS 

//Check GameStage then if the current Event ID is the Dialog with NPC Glacnore after giving him a tip for information.
//Additionally, a check is made to ensure the gold has been decreased during the event.
//The use of prior instead of prev is because the timing is not always perfect and can prevent the achievement to be triggered.
//There's almost no risk that the decrement detected by the prior function could comes from another action as Glacnore 
//is the only way to spend money in chapter 1. 
achievement(
    title = "A Fresh Start for Glacnore", points = 1,
    description = "Chapter 1 : Give Glacnore 5 golds for his information",
    id = 402912, badge = "455829", type="missable",
    trigger = 	CheckGameStage(1,8) &&
    			all_of(CompareArrays([1095517985, 1380929091, 1229414213, 1313424726, 20294], EventPlaceHolder, 1), a => a) &&
				prior(PlayerGold) == PlayerGold + 5
)

//Check GameStage then if the current Event ID is the Reading of the targetted books and collect the hits on a dummy 
//to reach 7 (the numbers of books in the Library).
achievement(
    title = "Thirst for Knowledge", points = 2,
    description = "Chapter 1 : Read all the 7 books at the Library",
    id = 402913, badge = "455830", type="missable", 
    trigger = 	 measured(
                    tally(7, 
                        once(EventPlaceHolder[2] == 0x53455957), 
                        once(EventPlaceHolder[2] == 0x59534543), 
                        once(EventPlaceHolder[1] == 0x5F35304B), 
                        once(EventPlaceHolder[1] == 0x5F36304B), 
                        once(EventPlaceHolder[1] == 0x5F37304B), 
                        once(EventPlaceHolder[1] == 0x5F34304B), 
                        once(EventPlaceHolder[1] == 0x5F33304B), 
                        byte(0x091E8C) > 0x00), 
                    when=CheckGameStage(0x01, 0x09),
                    format="raw")
)

//Check GameStage then if the current Event ID is the Dialog with Uncle Rissen first meeting. 
achievement(
    title = "Family Business", points = 3,
    description = "Chapter 1 : Visit your Uncle Rissen",
    id = 402914, badge = "455831", type="progression", 
    trigger = 	CheckGameStage(0x01, 0x0B) &&
    			all_of(CompareArrays([0x53534952, 0x315F4E45, 0x4B4C4154], EventPlaceHolder, 1), a => a)
)

//Check GameStage then compare prev/current qty of the Dagger Item
achievement(
    title = "Toothpick", points = 5,
    description = "Chapter 1 : Find the Dagger",
    id = 402916, badge = "455833", type="progression",
    trigger = 	CheckGameStage(0x01, 0x0B) && 
    			HasLooted(Weapons, "DAGGER")
)

//Check GameStage then compare prev/current qty of the Compass Item.
//Additionally, it checks if the Giant Rat HP is equals to zero.
achievement(
    title = "None Shall Compass", points = 5,
    description = "Chapter 1 : Kill the giant rat and get the compass",
    id = 402917, badge = "455834", type="progression", 
    trigger = 	CheckGameStage(0x01, 0x0B) &&
    			GiantRatHp == 0x00 && 
    			HasLooted(Items, "COMPASS")
)

//Simply check if the player has reached level 2 (from level 1)
achievement(
    title = "It’s Just the Beginning", points = 2,
    description = "Reach level 2",
    id = 402919, badge = "455836",
    trigger = 	InGame() && 
    			LevelUp(1, 2)
)

achievement(
    title = "Chapter 2", points = 10,
    description = "Leave Dreamertown",
    id = 402920, badge = "455837", type="progression", 
    trigger =   InGame() && 
                ChapterTransition(0x01, 0x02)
)
achievement(
    title = "Cube of Strength", points = 3,
    description = "Chapter 2 : Get a magic cube of strength",
    id = 402921, badge = "455838", type="missable", 
    trigger = 	InGame() && 
    			HasLooted(Cubes, "STR")
)

achievement(
    title = "Bon Appetit", points = 5,
    description = "Chapter 2 : Get rid of Baras",
    id = 402922, badge = "455839", type="progression",
    trigger = 	CheckGameStage(0x02, 0x08) && 
    			HasDropped(Items, "STEWOIL")
)

achievement(
    title = "Now We Are Talking", points = 5,
    description = "Chapter 2 : Get the Sword",
    id = 402923, badge = "455840", type="progression", 
    trigger = 	CheckGameStage(0x02, 0x16) && 
    			HasLooted(Weapons, "SWORD")
)

achievement(
    title = "Are You Ore-Kay Rumtok", points = 3,
    description = "Chapter 2 : Save Rumtok the miner and get the Crowbar",
    id = 402925, badge = "455842", type="progression", 
    trigger = 	CheckGameStage(0x02, 0x05) && 
    			HasLooted(Items, "CROWBAR")
)

achievement(
    title = "On Fire", points = 5,
    description = "Chapter 2 : Find out what's going on at the graveyard and learn the Fireball spell",
    id = 402926, badge = "455843", type="progression", 
    trigger = 	CheckGameStage(0x02, 0x0D) && 
    			HasLooted(Spells, "FIREBALL")
)

achievement(
    title = "I See Dead People", points = 5,
    description = "Chapter 2 : Reach the end of the Crypt and get the Ankh Amulet",
    id = 403069, badge = "456007", type="progression", 
    trigger = 	CheckGameStage(0x02, 0x03) && 
    			HasLooted(Equipments, "ANKH")
)

//For this one, the check is on the transition between room 8 and 13.
achievement(
    title = "Open Day", points = 3,
    description = "Chapter 2 : Gain access to your father's house",
    id = 403070, badge = "456008", type="progression", 
    trigger = 	CheckGameStage(0x02, 0x13) && 
    			prior(byte(0x0A1744)) == 0x08
)

achievement(
    title = "Hopscotch", points = 5,
    description = "Chapter 2 : Kill the Scrapyard Monster and get the control wheele",
    id = 403071, badge = "456063", type="progression", 
    trigger = 	CheckGameStage(0x02, 0x0B) && 
    			HasLooted(Items, "CWHEEL")
)

//For this achievement, the player can't buy a cork at the shop, 0x1F1483 contains the qty in the shop.
//The merchant has only one cork to sold.
//We check in the quest log if we have the correct QUEST_ID and if the completion bool is true.
achievement(
    title = "Resourceful", points = 5,
    description = "Chapter 2 : Seal the burst steam pipes without buying a cork from Lars",
    id = 403079, badge = "456067", type="missable", 
    trigger = 	ChapterID == 0x02 &&
    			Items["LARS_CORK"] == 0x01 &&
    			any_of(CheckInQuestLog(0x4B524F43), a=>a)
)

//Water tanks in SteamerTown used for "Resourceful" Achievement
WaterTank1Lvl = byte(0x1f14b2)
WaterTank2Lvl = byte(0x1f14b3)
WaterTank3Lvl = byte(0x1f14b4)
WaterTankWheelAnim = byte(0x139440)

//Checking The water tanks levels for the completed puzzle state.
//Then checking if player triggered the animation of the wheel to count the number of tries
//Correct way to trigger is 3x WaterTank 2 then 1x WaterTank 3 (4 moves)
achievement(
    title = "Plumber", points = 5,
    description = "Chapter 2 : Resolve the water tank puzzle in SteamerTown in as few turns as possible",
    id = 403081, badge = "456070", type="missable", 
    trigger = 	CheckGameStage(0x02, 0x0a) &&
                prior(WaterTank1Lvl) == 0x03 &&
				WaterTank1Lvl == 0x02 &&
				prior(WaterTank2Lvl) == 0x03 &&
				WaterTank2Lvl == 0x02 && 
				prior(WaterTank3Lvl) == 0x00 && 
				WaterTank3Lvl == 0x02 && 
				disable_when(tally(5,
                    (prev(WaterTank1Lvl) != WaterTank1Lvl) ||
                     (prev(WaterTank2Lvl) != WaterTank2Lvl) || 
                     (prev(WaterTank3Lvl) != WaterTank3Lvl), 
                     byte(0x091E86)== 0x04), until=prev(WaterTank1Lvl) == 0x05 && WaterTank1Lvl ==0x06)
)

achievement(
    title = "Chapter 3", points = 10,
    description = "Get the Ring of Life and enter The Hive",
    id = 403082, badge = "456071", type="progression", 
    trigger =   InGame() && 
                ChapterTransition(0x02, 0x03)
)

//Check Gamestage and compare the maps data to check if every zone are completely reveal
achievement(
    title = "Ferdinand Magellan", points = 3,
    description = "Chapter 3 : Discover 100% of the map in The Hive - Entrance",
    id = 403083, badge = "456072", type="missable",
    trigger = 	CheckGameStage(0x03, 0x01) && 
    			all_of(CompareArrays([0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF], Map, 1), a=>a)
)

//Check if we are on LvlUp GUI to avoid triggering that kind of achievement since you can change the points allocation
//till you leave the LvlUp GUI, which could lead to exploits. These achievement are triggered after closing the window.
achievement(
    title = "Mystic Wisdom", points = 2,
    description = "Reach lvl 7 in Mysticism and unlock the first perk",
    id = 403087, badge = "456073", 
    trigger = 	InLvlUpGUI() && 
    			PriorIncreasedTo(PlayerMYS, 7)
)

achievement(
    title = "Rothschild", points = 5,
    description = "Have 500 golds in your pockets",
    id = 403088, badge = "456074", type="missable", 
    trigger = 	InGame() && 
    			PrevIncreasedTo(PlayerGold, 500)
)

achievement(
    title = "Father and Son", points = 5,
    description = "Chapter 3 : Find your father somewhere in the Hive and get the Bombs",
    id = 403089, badge = "456075", type="progression", 
    trigger = 	CheckGameStage(0x03, 0x02) && 
    			HasLooted(Tools, "BOMB")
)

achievement(
    title = "Marco Polo", points = 3,
    description = "Chapter 3 : Discover 100% of the map in The Hive - Godon",
    id = 403090, badge = "456077", type="missable", 
    trigger = 	CheckGameStage(0x03, 0x02) && 
    			all_of(CompareArrays([0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0F], Map, 1), a=>a)
)

achievement(
    title = "Francisco Pizarro", points = 3,
    description = "Chapter 3 : Discover 100% of the map in The Hive - Passage",
    id = 403091, badge = "456082", type="missable", 
    trigger = 	CheckGameStage(0x03, 0x03) && 
    			all_of(CompareArrays([0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x7F], Map, 1), a=>a)
)

achievement(
    title = "Don't Mace With Me", points = 5,
    description = "Chapter 3 : Get the War Mace",
    id = 403092, badge = "456079", type="progression", 
    trigger = 	CheckGameStage(0x03, 0x04) && 
    			HasLooted(Weapons, "MACE")
)

achievement(
    title = "Henry Hudson", points = 3,
    description = "Chapter 3 : Discover 100% of the map in The Hive - Fredo",
    id = 403093, badge = "456083", type="missable", 
    trigger = 	CheckGameStage(0x03, 0x04) && 
    			all_of(CompareArrays([0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x1F], Map, 1), a=>a)
)

achievement(
    title = "I Know It Was You Fredo", points = 5,
    description = "Chapter 3 : Meet Fredo and learn the Ice Claw spell",
    id = 403094, badge = "456081", type="progression", 
    trigger = 	CheckGameStage(0x03, 0x04) && 
    			HasLooted(Spells, "ICECLAW")
)

//Condition added on this one as the previous map achievement has the same kind of condition and
//the game change the Room id before the new map data, leading to an instant trigger when entering room id 5.
//The condition is the music played in Room 5, which is different from room 4 and loaded with maps data
achievement(
    title = "Vasco Da Gama", points = 3,
    description = "Chapter 3 : Discover 100% of the map in The Hive - Labyrinth",
    id = 403096, badge = "456085", type="missable", 
    trigger = 	CheckGameStage(0x03, 0x05) && 
				MusicPlayed == 0x17B0 &&
    			all_of(CompareArrays([0xFF, 0xFF, 0xFF, 0xFF, 0xFF], Map, 1), a=>a)
)

achievement(
    title = "Tough Boy", points = 2,
    description = "Increase your Strength to 10",
    id = 403098, badge = "456087", 
    trigger = 	InLvlUpGUI() && 
    			PriorIncreasedTo(PlayerSTR, 10)
)

achievement(
    title = "RPG Scenarists Love Crystals", points = 5,
    description = "Chapter 3 : Get the Green Crystal",
    id = 403099, badge = "456088", type="progression",
    trigger = 	CheckGameStage(0x03, 0x07) && 
    			HasLooted(Crystals, "GREEN")
)

achievement(
    title = "Bartolomeu Dias", points = 3,
    description = "Chapter 3 : Discover 100% of the map in The Hive - Steep Tauron",
    id = 403116, badge = "456089", type="missable",
    trigger = 	CheckGameStage(0x03, 0x07) &&
    			all_of(CompareArrays([0xFF, 0xFF, 0xFF, 0xFF], Map, 1), a=>a)
)

achievement(
    title = "Christopher Columbus", points = 3,
    description = "Chapter 3 : Discover 100% of the map in The Hive - Graves",
    id = 403117, badge = "456090", type="missable",
    trigger = 	CheckGameStage(0x03, 0x09) &&
    			all_of(CompareArrays([0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x1F], Map, 1), a=>a)
)

achievement(
    title = "Cube of Intelligence", points = 3,
    description = "Chapter 3 : Get a magic cube that increase your intelligence",
    id = 403118, badge = "456091", type="progression", 
    trigger = 	InGame() && 
    			HasLooted(Cubes, "INT")
)

achievement(
    title = "Chapter 4", points = 10,
    description = "Kill the giant spider and reach the Fairy Forest",
    id = 403119, badge = "456092", type="progression", 
    trigger =   InGame() && 
                ChapterTransition(0x03, 0x04)
)

achievement(
    title = "Rookie", points = 5,
    description = "Reach level 5",
    id = 403120, badge = "456093",
    trigger = 	LevelUp(4, 5)
)

achievement(
    title = "Mystical Tool", points = 5,
    description = "Chapter 4 : Get the Radar",
    id = 403198, badge = "456177", type="progression",
    trigger = 	CheckGameStage(0x04, 0x18) && 
    			HasLooted(Tools, "RADAR")
)

achievement(
    title = "The Faster of Two Weevils", points = 5,
    description = "Chapter 4 : Win the beetle race and get the speed boots",
    id = 403339, badge = "456266", type="progression",
    trigger = 	CheckGameStage(0x04, 0x01) && 
    			HasLooted(Tools, "BOOTS")
)

achievement(
    title = "I Don’t Like Raga Oh No I Kill Him", points = 5,
    description = "Chapter 4 : Defeat Raga, save Gwen and learn the Viper's Vortex spell",
    id = 403340, badge = "456267", type="progression",
    trigger = 	CheckGameStage(0x04, 0x05) && 
    			HasLooted(Spells, "VORTEX")
)

achievement(
    title = "Jacques Cartier", points = 3,
    description = "Chapter 4 : Discover 100% of the map in The Fairy Forest - Fairy Meadows",
    id = 403341, badge = "456268", type="missable",
    trigger = 	CheckGameStage(0x04, 0x04) &&
    			all_of(CompareArrays([0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x07], Map, 1), a=>a)
)

achievement(
    title = "Wise Man", points = 2,
    description = "Increase your Intelligence to 10",
    id = 403342, badge = "456269",
    trigger = 	InLvlUpGUI() && 
    			PriorIncreasedTo(PlayerINT, 10)
)

achievement(
    title = "Mystic Strength", points = 3,
    description = "Reach lvl 14 in Mysticism and unlock the second perk",
    id = 403343, badge = "456270",
    trigger = 	InLvlUpGUI() && 
    			PriorIncreasedTo(PlayerMYS, 14)
)

achievement(
    title = "Magic Amulet", points = 5,
    description = "Chapter 4 : Return to Dahlia and receive the Magic Amulet",
    id = 403582, badge = "456590", type="progression",
    trigger = 	CheckGameStage(0x04, 0x0B) && 
    			HasLooted(Equipments, "AMULETMAGIC")
)

achievement(
    title = "James Cook", points = 3,
    description = "Chapter 4 : Discover 100% of the map in The Inner Forest",
    id = 403583, badge = "456596", type="missable",
    trigger = 	CheckGameStage(0x04, 0x1D) &&
    			all_of(CompareArrays([0xFF, 0xFF, 0xFF, 0xFF, 0xFB, 0xFF, 0x7F], Map, 1), a=>a)
)

achievement(
    title = "Call of The Void", points = 1,
    description = "Chapter 4 : In Jelon, jump into the void after the Fairy guard reminds you that you have no wings",
    id = 403584, badge = "456597", type="missable",
    trigger = 	CheckGameStage(0x04, 0x02) &&
    			all_of(CompareArrays([1380013383, 828322372, 1263288660], EventPlaceHolder, 1), a => a) &&
    			prior(PlayerAnim) == GetAnimValue("FALL") && 
    			PlayerAnim == GetAnimValue("DIE")
)

achievement(
    title = "Rockefeller", points = 10,
    description = "Have 1000 golds in your pockets",
    id = 403591, badge = "456604", type="missable",
    trigger = 	InGame() && 
    			PrevIncreasedTo(PlayerGold, 1000)
)

achievement(
    title = "Branch Merged", points = 5,
    description = "Chapter 4 : Give the tree guardian his old branch back and get the Bow",
    id = 403592, badge = "456605", type="progression",
    trigger = 	CheckGameStage(0x04, 0x1D) &&
    			HasLooted(Weapons, "BOW")
)

achievement(
    title = "Cube Of Mysticism", points = 3,
    description = "Chapter 4 : Get a magic cube that increase your Mysticism",
    id = 403594, badge = "456622", type="missable",
    trigger = 	InGame() && 
    			HasLooted(Cubes, "MYS")
)

achievement(
    title = "Is That a Wand in Your Pocket", points = 3,
    description = "Chapter 4 : Bring Horpach's magic wand back",
    id = 403595, badge = "456623", type="progression",
    trigger = 	CheckGameStage(0x04, 0x07) && 
    			HasDropped(Items, "WAND")
)

achievement(
    title = "The Plot Thickens", points = 5,
    description = "Chapter 4 : Get the Yellow Crystal",
    id = 403596, badge = "456624", type="progression",
    trigger = 	CheckGameStage(0x04, 0x07) && 
    			HasLooted(Crystals, "YELLOW")
)

achievement(
    title = "Smiling Princess", points = 5,
    description = "Chapter 4 : Get the Princess to smile again and get the Chain Mail Coat",
    id = 403597, badge = "456625", type="progression",
    trigger = 	CheckGameStage(0x04, 0x07) && 
    			HasLooted(Equipments, "CHAINMAIL")
)

achievement(
    title = "Journeyman", points = 5,
    description = "Reach level 10",
    id = 403598, badge = "456626",
    trigger = 	LevelUp(9, 10)
)

achievement(
    title = "Solid Like a Rock", points = 2,
    description = "Increase your Constitution to 10",
    id = 403599, badge = "456627",
    trigger = 	InLvlUpGUI() && 
    			PriorIncreasedTo(PlayerCON, 10)
)

achievement(
    title = "Samuel De Champlain", points = 3,
    description = "Chapter 4 : Discover 100% of the map in The Dark Forest 1",
    id = 403600, badge = "456628", type="missable",
    trigger = 	CheckGameStage(0x04, 0x1A) &&
    			all_of(CompareArrays([0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x01], Map, 1), a=>a)
)

achievement(
    title = "Chapter 5", points = 10,
    description = "Beat the Giant Toad in the Dark Forest and reach The Canyon",
    id = 403602, badge = "456629", type="progression",
    trigger =   InGame() && 
                ChapterTransition(0x04, 0x05)
)

achievement(
    title = "Leif Ericson", points = 3,
    description = "Chapter 5 : Discover 100% of the map in The Canyon - Passage",
    id = 403603, badge = "456630", type="missable",
    trigger = 	CheckGameStage(0x05, 0x02) &&
    			all_of(CompareArrays([0xFF, 0xFF, 0xFF, 0xFF, 0x3F], Map, 1), a=>a)
)

achievement(
    title = "Cube of Constitution", points = 3,
    description = "Chapter 5 : Get a magic cube that increase your Constitution",
    id = 403604, badge = "456634", type="missable",
    trigger = 	InGame() && 
    			HasLooted(Cubes, "CON")
)

achievement(
    title = "4d6", points = 10,
    description = "Have one of each cubes in your inventory",
    id = 403605, badge = "456635", type="missable",
    trigger = 	InGame() &&
    			Cubes["STR"] >= 0x01 && 
    			Cubes["INT"] >= 0x01 && 
				Cubes["CON"] >= 0x01 && 
				Cubes["MYS"] >= 0x01
)

achievement(
    title = "Hookey Dookey", points = 5,
    description = "Chapter 5 : Meet Dagomar and get the Grappling Hook",
    id = 403607, badge = "456636", type="progression",
    trigger = 	CheckGameStage(0x05, 0x14) && 
    			HasLooted(Tools, "HOOK")
)

achievement(
    title = "Hammer Time", points = 5,
    description = "Chapter 5 : Get the Hammer",
    id = 403608, badge = "456637", type="progression",
    trigger = 	CheckGameStage(0x05, 0x11) && 
				HasLooted(Weapons, "HAMMER")
)

achievement(
    title = "Don't Forget Your Umbrella", points = 5,
    description = "Chapter 5 : Learn the Meteor Storm spell",
    id = 403614, badge = "456643", type="progression",
    trigger = 	CheckGameStage(0x05, 0x12) && 
    			HasLooted(Spells, "METEOR")
)

achievement(
    title = "Heigh Hooo", points = 5,
    description = "Chapter 5 : Gain entry to the old mine and get the Stoneskin Belt",
    id = 403618, badge = "456648", type="progression",
    trigger = 	CheckGameStage(0x05, 0x06) && 
    			HasLooted(Equipments, "BELT")
)

achievement(
    title = "Third Times a Charm", points = 5,
    description = "Chapter 5 : Get the Blue Crystal",
    id = 403620, badge = "456650", type="progression",
    trigger = 	CheckGameStage(0x05, 0x06) && 
    			HasLooted(Crystals, "BLUE")
)

achievement(
    title = "Chapter 6", points = 10,
    description = "Beat the Deranged Machine and reach the High Mountains",
    id = 403621, badge = "456651", type="progression",
    trigger =   InGame() && 
                ChapterTransition(0x05, 0x06)
)

achievement(
    title = "Mystic Charged Attack", points = 5,
    description = "Reach lvl 21 in Mysticism and unlock the third perk",
    id = 403622, badge = "456652", type="missable",
    trigger = 	InLvlUpGUI() && 
    			PriorIncreasedTo(PlayerMYS, 21)
)

achievement(
    title = "Nobel Prize", points = 5,
    description = "Increase your Intelligence to 20",
    id = 403623, badge = "456653",
    trigger = 	InLvlUpGUI() && 
    			PriorIncreasedTo(PlayerINT, 20)
)

achievement(
    title = "Stop Bullying Him", points = 5,
    description = "Chapter 6 : Help Bullyforth and get the Merlin's Cape",
    id = 403624, badge = "456654", type="progression",
    trigger = 	CheckGameStage(0x06, 0x0D) && 
    			HasLooted(Equipments, "CAPE")
)

achievement(
    title = "Zheng He", points = 3,
    description = "Chapter 6 : Discover 100% of the map in The Tower - Snow World",
    id = 403625, badge = "456655", type="missable",
    trigger = 	CheckGameStage(0x06, 0x0D) &&
    			all_of(CompareArrays([0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x3F], Map, 1), a=>a)
)

achievement(
    title = "Upgraded Bow", points = 5,
    description = "Chapter 6 : Find the Fire and Water arrows",
    id = 403626, badge = "456656", type="progression",
    trigger = 	CheckGameStage(0x06, 0x01) && 
    			HasLooted(Weapons, "WATER_ARROW")
)

achievement(
    title = "Roald Amundsen", points = 3,
    description = "Chapter 6 : Discover 100% of the map in The Tower - Intra Muros",
    id = 403628, badge = "456671", type="missable",
    trigger = 	CheckGameStage(0x06, 0x05) &&
    			all_of(CompareArrays([0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0F], Map, 1), a=>a)
)

achievement(
    title = "Now You Can See the Light", points = 5,
    description = "Chapter 6 : Find the librarian's spectacles and get the fourth Crystal",
    id = 403643, badge = "456672", type="progression",
    trigger = 	CheckGameStage(0x06, 0x04) && 
    			HasLooted(Crystals, "RED")
)

achievement(
    title = "Thunder", points = 5,
    description = "Chapter 6 : Find the Magic Lightning spell",
    id = 403655, badge = "456675", type="progression",
    trigger = 	CheckGameStage(0x06, 0x04) && 
    			HasLooted(Spells, "THUNDER")
)

achievement(
    title = "Sir Francis Drake", points = 3,
    description = "Chapter 6 : Discover 100% of the map in The Tower - Library",
    id = 403656, badge = "456676", type="missable",
    trigger = 	CheckGameStage(0x06, 0x04) &&
    			all_of(CompareArrays([0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x3F], Map, 1), a=>a)
)

achievement(
    title = "Chapter 7", points = 10,
    description = "Free the dragon Ar-Khan, save Talis and reach the Volcano",
    id = 403657, badge = "456677", type="progression",
    trigger =   InGame() && 
                ChapterTransition(0x06, 0x07)
)

achievement(
    title = "Battlemage", points = 5,
    description = "Chapter 7 : Find the Magic Battle Shield spell",
    id = 403660, badge = "456680", type="progression",
    trigger = 	CheckGameStage(0x07, 0x05) && 
    			HasLooted(Spells, "SHIELD")
)

achievement(
    title = "Veteran", points = 5,
    description = "Reach level 15",
    id = 403661, badge = "456681",
    trigger = 	LevelUp(14, 15)
)

achievement(
    title = "Berserker", points = 5,
    description = "Increase your Strength to 20",
    id = 403662, badge = "456682",
    trigger = 	InLvlUpGUI() && 
    			PriorIncreasedTo(PlayerSTR, 20)
)

achievement(
    title = "Lumberjack", points = 5,
    description = "Chapter 7 : Find the Axe",
    id = 403729, badge = "456772", type="progression",
    trigger = 	CheckGameStage(0x07, 0x01) && 
    			HasLooted(Weapons, "AXE")
)

achievement(
    title = "Ballots Box", points = 5,
    description = "Chapter 7 : Find three voting coins for Mulorne and get the Experience Amulet",
    id = 403730, badge = "456774", type="progression",
    trigger = 	CheckGameStage(0x07, 0x01) && 
    			HasLooted(Equipments, "AMULETXP")
)

achievement(
    title = "I’m Dreaming of a White Crystal", points = 5,
    description = "Chapter 7 : Get the White Crystal",
    id = 403731, badge = "456902", type="progression",
    trigger = 	CheckGameStage(0x07, 0x03) && 
    			HasLooted(Crystals, "WHITE")
)

achievement(
    title = "Shake Shake", points = 5,
    description = "Chapter 7 : Kill the Lind Wyrm and get the Earthquake spell",
    id = 403732, badge = "456903", type="progression",
    trigger = 	CheckGameStage(0x07, 0x04) && 
    			HasLooted(Spells, "QUAKE")
)

achievement(
    title = "Tank", points = 5,
    description = "Increase your Constitution to 20",
    id = 403733, badge = "456904",
    trigger = 	InLvlUpGUI() && 
    			PriorIncreasedTo(PlayerCON, 20)
)

achievement(
    title = "Chapter 8", points = 10,
    description = "Free the dragon Ar-Khan, save Talis and reach the Volcano",
    id = 403735, badge = "456906", type="progression",
    trigger =   InGame() && 
                ChapterTransition(0x07, 0x08)
)

achievement(
    title = "Mercator", points = 3,
    description = "Chapter 8 : Discover 100% of the map in The Ruins - Beach",
    id = 403736, badge = "456907", type="missable",
    trigger = 	CheckGameStage(0x08, 0x06) &&
    			all_of(CompareArrays([0xFF, 0xFF, 0xFF, 0xFF, 0x07], Map, 1), a=>a)
)

achievement(
    title = "Mystic Energy Drain", points = 10,
    description = "Reach lvl 28 in Mysticism and unlock the fourth perk",
    id = 403737, badge = "456908", type="missable",
    trigger = 	InLvlUpGUI() && 
    			PriorIncreasedTo(PlayerMYS, 28)
)

achievement(
    title = "White Knight", points = 5,
    description = "Chapter 8 : Save Talis and get the Gloves of Dexterity",
    id = 403738, badge = "456909", type="progression",
    trigger = 	CheckGameStage(0x08, 0x0B) && 
    			HasLooted(Equipments, "GLOVES")
)

achievement(
    title = "Merchant", points = 10,
    description = "Have 4000 golds in your pockets (You will have to sell a lot of your stuff)",
    id = 403741, badge = "456604", type="missable",
    trigger = 	InGame() && 
    			PrevIncreasedTo(PlayerGold, 4000)
)

achievement(
    title = "Master of the Arena", points = 10,
    description = "Chapter 8 : Finish all the arena and place all the seals",
    id = 403742, badge = "456913", type="progression",
    trigger = CheckGameStage(0x08, 0x02) && tally(8, 
                  once(prev(Seals["MYST"]) == 0x01), 
                  once(prev(Seals["COMBAT"]) == 0x01), 
                  once(prev(Seals["DEFENCE"]) == 0x01), 
                  once(prev(Seals["MAGIC"]) == 0x01), 
                  once(Seals["MYST"] == 0x00), 
                  once(Seals["COMBAT"] == 0x00), 
                  once(Seals["DEFENCE"] == 0x00), 
                  once(Seals["MAGIC"] == 0x00), 
              byte(0x0A1744) == 0x99)
)

achievement(
    title = "Master", points = 10,
    description = "Max out one of your skill",
    id = 403743, badge = "456914", type="missable",
    trigger = 	InLvlUpGUI() && 
                ((PriorIncreasedTo(PlayerSTR, 40)) ||
                (PriorIncreasedTo(PlayerINT, 40))  ||
                (PriorIncreasedTo(PlayerCON, 40))  ||
                (PriorIncreasedTo(PlayerMYS, 40)))
)

achievement(
    title = "Legend", points = 10,
    description = "Reach level 20",
    id = 403744, badge = "456915", type="missable",
    trigger = 	LevelUp(19, 20)
)

//Check the GameStage then if all the Crystals have been placed during the fight. As final requirement, a check
//is made on the camera who only switch to cinematic mode when the boss is defeated.
achievement(
    title = "The Hero of Gothos", points = 25,
    description = "Chapter 8 : Defeat Dagomar and save Gothos. Congratulation !",
    id = 403745, badge = "456916", type="win_condition",
    trigger = 	CheckGameStage(0x08, 0x01) && 
    			Crystals["BLUE"] == 0x00 && 
    			Crystals["WHITE"] == 0x00 && 
    			Crystals["YELLOW"] == 0x00 &&
    			Crystals["GREEN"] == 0x00 &&
    			Crystals["RED"] == 0x00 &&
    			switchON(CinemaMode)
)

//Check the GameStage then pause if player get damage in the room. As final requirement Player need to finish
//the arena and get the Seal of Combat.
achievement(
    title = "Gladiator", points = 10,
    description = "Chapter 8 : Finish the arena of weapons without taking any damage",
    id = 403826, badge = "457144", type="missable",
    trigger = 	CheckGameStage(0x08, 0x04) && 
    			disable_when(CheckGameStage(0x08, 0x04) && PlayerAnim == PlayerAnimList["DAMAGE"] ) && 
              	trigger_when(HasLooted(Seals, "COMBAT"))
)

//Check the GameStage then pause if player use any kind of potion/antidote or change the equipment. As final requirement
//Player need to finish the arena and get the Seal of Defence.
achievement(
    title = "I Can Do It Half Naked", points = 10,
    description = "Chapter 8 : Finish the arena of Defence without changing your equipment or taking any potion",
    id = 403827, badge = "457143", type="missable",
    trigger = 	CheckGameStage(0x08, 0x07) &&
    			disable_when(CheckGameStage(0x08, 0x07) && HasChangedEquipment()) &&
    			disable_when(CheckGameStage(0x08, 0x07) && once(PrevDecreased(Items["S_POTION_H"]))) && 
    			disable_when(CheckGameStage(0x08, 0x07) && once(PrevDecreased(Items["L_POTION_H"]))) && 
    			disable_when(CheckGameStage(0x08, 0x07) && once(PrevDecreased(Items["S_POTION_C"]))) && 
    			disable_when(CheckGameStage(0x08, 0x07) && once(PrevDecreased(Items["L_POTION_C"]))) && 
    			disable_when(CheckGameStage(0x08, 0x07) && once(PrevDecreased(Items["HERB"]))) && 
    			disable_when(CheckGameStage(0x08, 0x07) && once(PrevDecreased(Items["ANTIDOTE"]))) &&
    			trigger_when(HasLooted(Seals, "DEFENCE"))
)

//Check the GameStage then pause if player take damage after the boss gauge appears. As final requirement, a check is
//made on the Boss HP(=0x00).
achievement(
    title = "Mouse Trap", points = 10,
    description = "Chapter 1 : Kill the giant rat without taking damage",
    id = 404047, badge = "457423", type="missable",
    trigger = 	CheckGameStage(0x01, 0x0B) && 
    			trigger_when(GiantRatHp == 0x00) &&
    			disable_when(BossGauge == 1 && PlayerAnim == PlayerAnimList["DAMAGE"] )
)

//Check the GameStage then pause if player take damage after the boss gauge appears. As final requirement, a check is
//made on the Boss HP(=0x00).
achievement(
    title = "Machinist", points = 10,
    description = "Chapter 2 : Kill the Scrapyard Monster without taking damage",
    type="missable",
    trigger =   CheckGameStage(0x02, 0x0B) && 
                trigger_when(ScrapyardBossHp == 0x00) &&
                disable_when(BossGauge == 1 && PlayerAnim == PlayerAnimList["DAMAGE"] )
)


//Check the GameStage then pause if player take damage after the boss gauge appears. As final requirement, a check is
//made on the Boss HP(=0x00).
achievement(
    title = "Arachnophobia", points = 10,
    description = "Chapter 3 : Kill the Giant Spider without taking damage",
    id = 408632, badge = "463368", type="missable",
    trigger =   CheckGameStage(0x03, 0x0a) && 
                trigger_when(GiantSpiderBossHp == 0x00) &&
                disable_when(BossGauge == 1 && PlayerAnim == PlayerAnimList["DAMAGE"] )
)

//Check the GameStage then add hits for every tomb inspected through their EVENT ID.
achievement(
    title = "Gravedigger", points = 1,
    description = "Chapter 2 : Inspect every tombs at the cemetary of SteamerTown",
    id = 404098, badge = "457529", type="missable",
    trigger = 	(CheckGameStage(0x02, 0x09) || CheckGameStage(0x02, 0x0d))&&
                measured(
                    tally(9, 
                        once(EventPlaceHolder[2] == 0x3145), 
                        once(EventPlaceHolder[2] == 0x3245), 
                        once(EventPlaceHolder[2] == 0x3345), 
                        once(EventPlaceHolder[2] == 0x3445), 
                        once(EventPlaceHolder[2] == 0x3545), 
                        once(EventPlaceHolder[2] == 0x3645), 
                        once(EventPlaceHolder[2] == 0x3745), 
                        once(EventPlaceHolder[2] == 0x3845), 
                        once(EventPlaceHolder[2] == 0x3945), 
                        PlayerLvl == 0xff), 
                    format="raw")
)

//Check the GameStage then Event ID associated to the scene where the mother yell at Melvin for jumping on the table.
achievement(
    title = "Grown up, Melvin", points = 1,
    description = "Chapter 1 : jump on your mom's table",
    id = 408142, badge = "462417", type="missable",
    trigger =   CheckGameStage(1,5) &&
                all_of(CompareArrays([0x4f545554, 0x41545f52, 0x00454c42], EventPlaceHolder, 1), a => a)
)

