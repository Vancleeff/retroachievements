// Sonic Adventure 2 : Battle (NGC)
// #ID = 3779

LvlCompletion = [
    {"text" : "1-1", "level": 0x0, "room": 0x0, "address": bit0(0xc108)}, 
]

story_progress_heroes = byte(0x1f234a)
story_progress_vilains = byte(0x1f234b)

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

//Unlockables
u_light_shoes = byte(0x1e50b4)
u_ancient_light_sonic = byte(0x1e50b5)
u_ancient_light_shadow = byte(0x1e50c5)
u_magic_gloves = byte(0x1e50b6)
u_flame_ring_sonic = byte(0x1e50b7)
u_flame_ring_shadow = byte(0x1e50c6)
u_bounce_bracelet = byte(0x1e50b8)
u_mystic_melody_sonic = byte(0x1e50b9)
u_mystic_melody_tails = byte(0x1e50bd)
u_mystic_melody_knuckles = byte(0x1e50c2)
u_mystic_melody_shadow = byte(0x1e50c7)
u_mystic_melody_rouge = byte(0x1e50d0)
u_mystic_melody_eggman = byte(0x1e50cc)
u_booster = byte(0x1e50ba)
u_bazooka = byte(0x1e50bb)
u_laser_blaster_tails = byte(0x1e50bc)
u_laser_blaster_eggman = byte(0x1e50ca)
u_shovel_claws = byte(0x1e50be)
u_sunglasses = byte(0x1e50bf)
u_hammer_gloves = byte(0x1e50c0)
u_air_necklace = byte(0x1e50c1)
u_air_shoes = byte(0x1e50c4)
u_jet_engine = byte(0x1e50c8)
u_large_cannon = byte(0x1e50c9)
u_protective_armor = byte(0x1e50cb)
u_pick_nails = byte(0x1e50cd)
u_treasure_scope = byte(0x1e50ce)
u_iron_boots = byte(0x1e50cf)

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
    description = "Escape from the City [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x01
)

achievement(
    title = "T-6T Big Foot", points = 2, type="progression",
    description = "Beat the T-6T Big Foot [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x02
)

achievement(
    title = "Treasure Hunt in Wild Canyon", points = 2, type="progression",
    description = "Find 3 pieces of the Master Emerald in Wild Canyon [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x04

)

achievement(
    title = "Dr. Eggman Round One", points = 2, type="progression",
    description = "Defeat Dr. Eggman with Tails [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x06
)

achievement(
    title = "Prison Break", points = 2, type="progression",
    description = "Escape from the prison [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x08
)

achievement(
    title = "Metal Harbor", points = 2, type="progression",
    description = "Escape from Metal Harbor [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x0a
)

achievement(
    title = "Shadow Round One", points = 2, type="progression",
    description = "Defeat Shadow [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x0b
)

achievement(
    title = "Green Forest", points = 2, type="progression",
    description = "Escape from Green Forest [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x0c
)

achievement(
    title = "Pumpkin Hill", points = 2, type="progression",
    description = "Find 3 pieces of the Master Emerald in Pumpkin Hill [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x0e
)

achievement(
    title = "Mission Street", points = 2, type="progression",
    description = "Elude enemy pursuit [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x10
)

achievement(
    title = "Aquatic Mine", points = 2, type="progression",
    description = "Find 3 pieces of the Master Emerald in Aquatic Mine [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x12
)

achievement(
    title = "Route 101", points = 2, type="progression",
    description = "Chase the President's limousine [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(story_progress_heroes, 0x14, 0x15)
)

achievement(
    title = "Hidden Base", points = 2, type="progression",
    description = "Find the entrance into Hidden Base [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x16
)

achievement(
    title = "Pyramid Cave", points = 2, type="progression",
    description = "Infiltrate Eggman's Hidden Base [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x17
)

achievement(
    title = "Death Chamber", points = 2, type="progression",
    description = "Find 3 Gate keys in Death Chamber [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x19
)

achievement(
    title = "King Boo Boom", points = 2, type="progression",
    description = "Defeat King Boo Boom [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x1a
)

achievement(
    title = "Egg Golem", points = 2, type="progression",
    description = "Defeat Egg Golem [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x1c
)

achievement(
    title = "Eternal Engine", points = 2, type="progression",
    description = "Destroy the colony's power generator [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x1e
)

achievement(
    title = "Meteor Herd", points = 2, type="progression",
    description = "Find 3 pieces of the Master Emerald on Meteor Herd [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x20
)

achievement(
    title = "Rouge", points = 2, type="progression",
    description = "Defeat Rouge [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x21
)

achievement(
    title = "Crazy Gadget", points = 2, type="progression",
    description = "Hurry and find Eggman in Crazy Gadget [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x23
)

achievement(
    title = "Dr. Eggman Round Two", points = 2, type="progression",
    description = "Defeat Dr. Eggman with Tails in Crazy Gadget [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x25
)

achievement(
    title = "Final Rush", points = 2, type="progression",
    description = "Hurry and find the point of the Cannon [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x27
)

achievement(
    title = "Hero Story Mode", points = 2, type="progression",
    description = "Complete Hero Story Mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_heroes == 0x29
)

//STORY COMPLETION - DARK
achievement(
    title = "Iron Gate", points = 2, type="progression",
    description = "Get to the core of the military base [Dark Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_vilains == 0x01
)

achievement(
    title = "B-3X Hot Shot", points = 2, type="progression",
    description = "Defeat the B-3X Hot Shot [Dark Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_vilains == 0x03
)

achievement(
    title = "Dry Lagoon", points = 2, type="progression",
    description = "Find 3 pieces of the Master Emerald in Dry Lagoon [Dark Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_vilains == 0x05
)

achievement(
    title = "Sand Ocean", points = 2, type="progression",
    description = "Return to Hidden Base [Dark Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_vilains == 0x07
)

achievement(
    title = "Radical Highway", points = 2, type="progression",
    description = "Break through the besieging military [Dark Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_vilains == 0x09
)

achievement(
    title = "Egg Quarters", points = 2, type="progression",
    description = "Find 3 Gate keys in Egg Quarters [Dark Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_vilains == 0x0b
)

achievement(
    title = "Lost Colony", points = 2, type="progression",
    description = "Find the way to the colony's core [Dark Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_vilains == 0x0d
)

achievement(
    title = "Weapons Bed", points = 2, type="progression",
    description = "Rush into the military base [Dark Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_vilains == 0x0f
)

achievement(
    title = "Tails - Round One", points = 2, type="progression",
    description = "Defeat Tails in Weapons Bed [Dark Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_vilains == 0x11
)

achievement(
    title = "Security Hall", points = 2, type="progression",
    description = "Steal 3 Chaos Emerald in 5 minutes in Security Hall [Dark Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_vilains == 0x12
)

achievement(
    title = "R-1/A Flying Dog", points = 2, type="progression",
    description = "Defeat R-1/A Flying Dog in Security Hall [Dark Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_vilains == 0x13
)

achievement(
    title = "White Jungle", points = 2, type="progression",
    description = "Cut through the Jungle in 10 minutes [Dark Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_vilains == 0x15
)

achievement(
    title = "Sonic - Round One", points = 2, type="progression",
    description = "Defeat Sonic in White Jungle [Dark Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_vilains == 0x16
)

achievement(
    title = "Route 280", points = 2, type="progression",
    description = "Chase the Tornado [Dark Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_vilains == 0x19
)

achievement(
    title = "Sky Rail", points = 2, type="progression",
    description = "Continue to chase the Tornado [Dark Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_vilains == 0x1a
)

achievement(
    title = "Egg Golem - Dark Story", points = 2, type="progression",
    description = "Defeat Egg Golem [Dark Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_vilains == 0x1c
)

achievement(
    title = "Mad Space", points = 2, type="progression",
    description = "Find 3 pieces of the Master Emerald in Mad Space [Dark Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_vilains == 0x1e
)

achievement(
    title = "Knuckles", points = 2, type="progression",
    description = "Defeat Knuckles [Dark Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_vilains == 0x1f
)

achievement(
    title = "Cosmic Wall", points = 2, type="progression",
    description = "Get and confront the trespassers [Dark Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_vilains == 0x21
)

achievement(
    title = "Tails - Round Two", points = 2, type="progression",
    description = "Defeat Tails in Cosmic Wall [Dark Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_vilains == 0x23
)

achievement(
    title = "Final Chase", points = 2, type="progression",
    description = "Hurry to the Eclipse Cannon [Dark Story Mode]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_vilains == 0x25
)

achievement(
    title = "Dark Story Mode", points = 2, type="progression",
    description = "Complete Hero Story Mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        story_progress_vilains == 0x27
)

//ABILITIES UNLOCKING

achievement(
    title = "Light Shoes", points = 1, type="progression",
    description = "Unlock the Light Shoes in Hero Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(u_light_shoes, 0x0, 0x1) && 
        story_progress_heroes == 0x0a
)

achievement(
    title = "Ancient Light - Sonic", points = 1, type="progression",
    description = "Unlock the Ancient Light for Sonic in Hero Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(u_ancient_light_sonic, 0x0, 0x1) && 
        story_progress_heroes == 0x0c 
)

achievement(
    title = "Ancient Light - Shadow", points = 1, type="progression",
    description = "Unlock the Ancient Light for Shadow in Vilain Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(u_ancient_light_shadow, 0x0, 0x1) && 
        story_progress_vilains == 0x1a 
)

achievement(
    title = "Magic Gloves", points = 1, type="progression",
    description = "Unlock the Magic Gloves in Hero Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(u_magic_gloves, 0x0, 0x1) && 
        story_progress_heroes == 0x01 
)

achievement(
    title = "Flame Ring - Sonic", points = 1, type="progression",
    description = "Unlock the Flame Ring for Sonic in Hero Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(u_flame_ring_sonic, 0x0, 0x1) && 
        story_progress_heroes == 0x023
)

achievement(
    title = "Flame Ring - Shadow", points = 1, type="progression",
    description = "Unlock the Flame Ring for Shadow in Vilain Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(u_flame_ring_shadow, 0x0, 0x1) && 
        story_progress_heroes == 0x09 
)

achievement(
    title = "Bounce Bracelet", points = 1, type="progression",
    description = "Unlock the Bounce Bracelet in Hero Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(u_bounce_bracelet, 0x0, 0x1) && 
        story_progress_heroes == 0x17 
)

achievement(
    title = "Mystic Melody - Sonic", points = 1, type="progression",
    description = "Unlock the Mystic Melody for Sonic in Hero Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(u_mystic_melody_sonic, 0x0, 0x1) && 
        story_progress_heroes == 0x27
)

achievement(
    title = "Mystic Melody - Tails", points = 1, type="progression",
    description = "Unlock the Mystic Melody for Tails in Hero Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(u_mystic_melody_sonic, 0x0, 0x1) && 
        story_progress_heroes == 0x16 
)

achievement(
    title = "Mystic Melody - Knuckles", points = 1, type="progression",
    description = "Unlock the Mystic Melody for Knuckles in Hero Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(u_mystic_melody_knuckles, 0x0, 0x1) && 
        story_progress_heroes == 0x4
)

achievement(
    title = "Mystic Melody - Shadow", points = 1, type="progression",
    description = "Unlock the Mystic Melody for Shadow in Hero Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(u_mystic_melody_shadow, 0x0, 0x1) && 
        story_progress_vilains == 0x25 
)

achievement(
    title = "Mystic Melody - Dr. Eggman", points = 1, type="progression",
    description = "Unlock the Mystic Melody for Dr. Eggman in Hero Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(u_mystic_melody_eggman, 0x0, 0x1) && 
        story_progress_vilains == 0x7
)

achievement(
    title = "Mystic Melody - Rouge", points = 1, type="progression",
    description = "Unlock the Mystic Melody for Rouge in Hero Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(u_mystic_melody_rouge, 0x0, 0x1) && 
        story_progress_vilains == 0x5
)

achievement(
    title = "Booster", points = 1, type="progression",
    description = "Unlock the Booster in Hero Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(u_booster, 0x0, 0x1) && 
        story_progress_heroes == 0x10
)

achievement(
    title = "Bazooka", points = 1, type="progression",
    description = "Unlock the Bazooka in Hero Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(u_bazooka, 0x0, 0x1) && 
        story_progress_heroes == 0x01e 
)

achievement(
    title = "Laser Blaster - Tails", points = 1, type="progression",
    description = "Unlock the Laser Blaster for Tails in Hero Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(u_laser_blaster_tails, 0x0, 0x1) && 
        story_progress_heroes == 0x8
)

achievement(
    title = "Laser Blaster - Dr. Eggman", points = 1, type="progression",
    description = "Unlock the Laser Blaster for Dr. Eggman in Vilain Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(u_laser_blaster_eggman, 0x0, 0x1) && 
        story_progress_vilains == 0x1 
)

achievement(
    title = "Shovel Claws", points = 1, type="progression",
    description = "Unlock the Shovel Claws in Hero Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(u_shovel_claws, 0x0, 0x1) && 
        story_progress_heroes == 0x0e 
)

achievement(
    title = "Air Necklace", points = 1, type="progression",
    description = "Unlock the Air Necklace in Hero Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(u_air_necklace, 0x0, 0x1) && 
        story_progress_heroes == 0x012 
)

achievement(
    title = "Sunglasses", points = 1, type="progression",
    description = "Unlock the Sunglasses in Hero Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(u_sunglasses, 0x0, 0x1) && 
        story_progress_heroes == 0x20 
)


achievement(
    title = "Hammer Gloves", points = 1, type="progression",
    description = "Unlock the Hammer Gloves in Hero Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x01 && 
        PrevFromTo(u_hammer_gloves, 0x0, 0x1) && 
        story_progress_heroes == 0x19 
)

achievement(
    title = "Air Shoes", points = 1, type="progression",
    description = "Unlock the Air Shoes in Vilain Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(u_air_shoes, 0x0, 0x1) && 
        story_progress_vilains == 0x15 
)

achievement(
    title = "Jet Engine", points = 1, type="progression",
    description = "Unlock the Jet Engine in Vilain Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(u_jet_engine, 0x0, 0x1) && 
        story_progress_vilains == 0xd 
)

achievement(
    title = "Large Cannon", points = 1, type="progression",
    description = "Unlock the Large Cannon in Vilain Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(u_large_cannon, 0x0, 0x1) && 
        story_progress_vilains == 0xf 
)

achievement(
    title = "Protective Armor", points = 1, type="progression",
    description = "Unlock the Protective Armor in Vilain Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(u_protective_armor, 0x0, 0x1) && 
        story_progress_vilains == 0x21
)

achievement(
    title = "Pick Nails", points = 1, type="progression",
    description = "Unlock the Pick Nails in Vilain Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(u_pick_nails, 0x0, 0x1) && 
        story_progress_vilains == 0xb
)

achievement(
    title = "Treasure Scope", points = 1, type="progression",
    description = "Unlock the Treasure Scope in Vilain Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(u_treasure_scope, 0x0, 0x1) && 
        story_progress_vilains == 0x1e 
)

achievement(
    title = "Iron Boots", points = 1, type="progression",
    description = "Unlock the Iron Boots in Vilain Story mode",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x02 && 
        PrevFromTo(u_iron_boots, 0x0, 0x1) && 
        story_progress_vilains == 0x1e
)



//STORY COMPLETION - VILAINS
//TODO
