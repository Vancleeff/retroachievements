// Sonic Adventure 2 : Battle (NGC)
// #ID = 3779

LvlCompletion = [
    {"text" : "1-1", "level": 0x0, "room": 0x0, "address": bit0(0xc108)}, 
]

levels = {
    "GREEN_FOREST": 0x03,
    "WHITE_JUNGLE": 0x04,
    "PUMPKIN_HILL": 0x05,
    "SKY_RAIL": 0x06,
    "AQUATIC_MINE": 0x07,
    "SECURITY_HALL": 0x08,
    "PRISON_LANE": 0x09,
    "METAL_HARBOR": 0x0A,
    "IRON_GATE": 0x0B,
    "WEAPONS_BED": 0x0C,
    "CITY_ESCAPE": 0x0D,
    "RADICAL_HIGHWAY": 0x0E,
    "WEAPONS_BED_2P": 0x0F,
    "WILD_CANYON": 0x10,
    "MISSION_STREET": 0x11,
    "DRY_LAGOON": 0x12,
    "SONIC_VS_SHADOW_1": 0x13,
    "TAILS_VS_EGG_MAN_1": 0x14,
    "SAND_OCEAN": 0x15,
    "CRAZY_GADGET": 0x16,
    "HIDDEN_BASE": 0x17,
    "ETERNAL_ENGINE": 0x18,
    "DEATH_CHAMBER": 0x19,
    "EGG_QUARTERS": 0x1A,
    "LOST_COLONY": 0x1B,
    "PYRAMID_CAVE": 0x1C,
    "TAILS_VS_EGG_MAN_2": 0x1D,
    "FINAL_RUSH": 0x1E,
    "GREEN_HILL": 0x1F,
    "METEOR_HERD": 0x20,
    "KNUCKLES_VS_ROUGE": 0x21,
    "CANNONS_CORE_SONIC": 0x22,
    "CANNONS_CORE_EGG_MAN": 0x23,
    "CANNONS_CORE_TAILS": 0x24,
    "CANNONS_CORE_ROUGE": 0x25,
    "CANNONS_CORE_KNUCKLES": 0x26,
    "MISSION_STREET_2P": 0x27,
    "FINAL_CHASE": 0x28,
    "WILD_CANYON_2P": 0x29,
    "SONIC_VS_SHADOW_2": 0x2A,
    "COSMIC_WALL": 0x2B,
    "MAD_SPACE": 0x2C,
    "SAND_OCEAN_2P": 0x2D,
    "DRY_LAGOON_2P": 0x2E,
    "PYRAMID_RACE": 0x2F,
    "HIDDEN_BASE_2P": 0x30,
    "POOL_QUEST": 0x31,
    "PLANET_QUEST": 0x32,
    "DECK_RACE": 0x33,
    "DOWNTOWN_RACE": 0x34,
    "COSMIC_WALL_2P": 0x35,
    "GRIND_RACE": 0x36,
    "LOST_COLONY_2P": 0x37,
    "ETERNAL_ENGINE_2P": 0x38,
    "METAL_HARBOR_2P": 0x39,
    "IRON_GATE_2P": 0x3A,
    "DEATH_CHAMBER_2P": 0x3B,
    "F6T_BIG_FOOT": 0x3C,
    "B3X_HOT_SHOT": 0x3D,
    "R1A_FLYING_DOG": 0x3E,
    "KING_BOOM_BOO": 0x3F,
    "EGG_GOLEM_SONIC": 0x40,
    "THE_BIOLIZARD": 0x41,
    "THE_FINALHAZARD": 0x42,
    "EGG_GOLEM_EGGMAN": 0x43,
    "ROUTE_101_ROUTE_280": 0x46,
    "KART_RACE": 0x47,
    "CHAO_WORLD": 0x5A
}

characters = {
    "SONIC": 0x0,
    "SHADOW": 0x1,
    "TAILS": 0x2,
    "EGGMAN": 0x3,
    "KNUCKLES": 0x4,
    "ROUGE": 0x5,
    "TAILS_MECHA": 0x6,
    "EGGMAN_MECHA": 0x7,
}

story_progress_heroes = byte(0x1f234a)
story_progress_vilains = byte(0x1f234b)

//Game States
//0x0 : Not playing
//0x01 : Level Title Card
//0x02 : Loading Level
//0x09 : Restart after Death
//0x0d : Level Restart from menu
//0x0e : Game Over
//0x10 : Ingame 
//0x11 : Pause
game_state = byte(0x3ad81b)

//Game Mode
//0x1 : Story Mode (Heroes)
//0x2 : Story Mode (Vilains)
//0x3 : Last Story 
//0xc : Boss Rush (Heroes)
//0xd : Boss Rush (Vilains)
//0xe : Boss Rush (All)
game_mode = byte(0x1e50d4)
level_id = word_be(0x3ad820)

//Mission ID
//0x0 : Story
//0x1 : Ring challenge
//0x2 : Chaos challenge 
//0x3 : Time Attack
//0x4 : Hard Mode
mission_id = byte(0x1cc18b)

//Character
current_character = byte(0x3ad82b)
player_pointer = tbyte_be(0x1E7769)
boss_pointer = tbyte_be(0x1ff7b9)

flag_stage_clear = byte(0x1cc1aa)
flag_stage_key = byte(0x1cc1ac)
player_lives = word_be(0x1cc1cc)
player_rings = word_be(0x1cc1d0)
player_score = word_be(0x1cc1f8)
player_total_rings = dword_be(0x1cc204)
player_hidden_animals = byte(0x195f17)

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


rank_a_value_story = 2
rank_a_value_rings = 2
rank_a_value_chao = 2
rank_a_value_time = 5
rank_a_value_hard = 5

//RANK A FLAGS
//0x00 - Not Cleared
//0x01 - E
//0x02 - D
//0x03 - C
//0x04 - B
//0x05 - A
rank_green_forest_1 = byte(0x1F25C4)
rank_green_forest_2 = byte(0x1F25C5)
rank_green_forest_3 = byte(0x1F25C6)
rank_green_forest_4 = byte(0x1F25C7)
rank_green_forest_5 = byte(0x1F25C8)

rank_white_jungle_1 = byte(0x1F2688)
rank_white_jungle_2 = byte(0x1F2689)
rank_white_jungle_3 = byte(0x1F268A)
rank_white_jungle_4 = byte(0x1F268B)
rank_white_jungle_5 = byte(0x1F268C)

rank_pumpkin_hill_1 = byte(0x1F274C)
rank_pumpkin_hill_2 = byte(0x1F274D)
rank_pumpkin_hill_3 = byte(0x1F274E)
rank_pumpkin_hill_4 = byte(0x1F274F)
rank_pumpkin_hill_5 = byte(0x1F2750)

rank_sky_rail_1 = byte(0x1F2810)
rank_sky_rail_2 = byte(0x1F2811)
rank_sky_rail_3 = byte(0x1F2812)
rank_sky_rail_4 = byte(0x1F2813)
rank_sky_rail_5 = byte(0x1F2814)

rank_aquatic_mine_1 = byte(0x1F28D4)
rank_aquatic_mine_2 = byte(0x1F28D5)
rank_aquatic_mine_3 = byte(0x1F28D6)
rank_aquatic_mine_4 = byte(0x1F28D7)
rank_aquatic_mine_5 = byte(0x1F28D8)

rank_security_hall_1 = byte(0x1F2998)
rank_security_hall_2 = byte(0x1F2999)
rank_security_hall_3 = byte(0x1F299A)
rank_security_hall_4 = byte(0x1F299B)
rank_security_hall_5 = byte(0x1F299C)

rank_prison_lane_1 = byte(0x1F2A5C)
rank_prison_lane_2 = byte(0x1F2A5D)
rank_prison_lane_3 = byte(0x1F2A5E)
rank_prison_lane_4 = byte(0x1F2A5F)
rank_prison_lane_5 = byte(0x1F2A60)

rank_metal_harbor_1 = byte(0x1F2B20)
rank_metal_harbor_2 = byte(0x1F2B21)
rank_metal_harbor_3 = byte(0x1F2B22)
rank_metal_harbor_4 = byte(0x1F2B23)
rank_metal_harbor_5 = byte(0x1F2B24)

rank_iron_gate_1 = byte(0x1F2BE4)
rank_iron_gate_2 = byte(0x1F2BE5)
rank_iron_gate_3 = byte(0x1F2BE6)
rank_iron_gate_4 = byte(0x1F2BE7)
rank_iron_gate_5 = byte(0x1F2BE8)

rank_weapons_bed_1 = byte(0x1F2CA8)
rank_weapons_bed_2 = byte(0x1F2CA9)
rank_weapons_bed_3 = byte(0x1F2CAA)
rank_weapons_bed_4 = byte(0x1F2CAB)
rank_weapons_bed_5 = byte(0x1F2CAC)

rank_city_escape_1 = byte(0x1F2D6C)
rank_city_escape_2 = byte(0x1F2D6D)
rank_city_escape_3 = byte(0x1F2D6E)
rank_city_escape_4 = byte(0x1F2D6F)
rank_city_escape_5 = byte(0x1F2D70)

rank_radical_highway_1 = byte(0x1F2E30)
rank_radical_highway_2 = byte(0x1F2E31)
rank_radical_highway_3 = byte(0x1F2E32)
rank_radical_highway_4 = byte(0x1F2E33)
rank_radical_highway_5 = byte(0x1F2E34)

rank_wild_canyon_1 = byte(0x1F2FB8)
rank_wild_canyon_2 = byte(0x1F2FB9)
rank_wild_canyon_3 = byte(0x1F2FBA)
rank_wild_canyon_4 = byte(0x1F2FBB)
rank_wild_canyon_5 = byte(0x1F2FBC)

rank_mission_street_1 = byte(0x1F307C)
rank_mission_street_2 = byte(0x1F307D)
rank_mission_street_3 = byte(0x1F307E)
rank_mission_street_4 = byte(0x1F307F)
rank_mission_street_5 = byte(0x1F3080)

rank_dry_lagoon_1 = byte(0x1F3140)
rank_dry_lagoon_2 = byte(0x1F3141)
rank_dry_lagoon_3 = byte(0x1F3142)
rank_dry_lagoon_4 = byte(0x1F3143)
rank_dry_lagoon_5 = byte(0x1F3144)

rank_sand_ocean_1 = byte(0x1F338C)
rank_sand_ocean_2 = byte(0x1F338D)
rank_sand_ocean_3 = byte(0x1F338E)
rank_sand_ocean_4 = byte(0x1F338F)
rank_sand_ocean_5 = byte(0x1F3390)

rank_crazy_gadget_1 = byte(0x1F3450)
rank_crazy_gadget_2 = byte(0x1F3451)
rank_crazy_gadget_3 = byte(0x1F3452)
rank_crazy_gadget_4 = byte(0x1F3453)
rank_crazy_gadget_5 = byte(0x1F3454)

rank_hidden_base_1 = byte(0x1F3514)
rank_hidden_base_2 = byte(0x1F3515)
rank_hidden_base_3 = byte(0x1F3516)
rank_hidden_base_4 = byte(0x1F3517)
rank_hidden_base_5 = byte(0x1F3518)

rank_eternal_engine_1 = byte(0x1F35D8)
rank_eternal_engine_2 = byte(0x1F35D9)
rank_eternal_engine_3 = byte(0x1F35DA)
rank_eternal_engine_4 = byte(0x1F35DB)
rank_eternal_engine_5 = byte(0x1F35DC)

rank_death_chamber_1 = byte(0x1F369C)
rank_death_chamber_2 = byte(0x1F369D)
rank_death_chamber_3 = byte(0x1F369E)
rank_death_chamber_4 = byte(0x1F369F)
rank_death_chamber_5 = byte(0x1F36A0)

rank_egg_quarters_1 = byte(0x1F3760)
rank_egg_quarters_2 = byte(0x1F3761)
rank_egg_quarters_3 = byte(0x1F3762)
rank_egg_quarters_4 = byte(0x1F3763)
rank_egg_quarters_5 = byte(0x1F3764)

rank_lost_colony_1 = byte(0x1F3824)
rank_lost_colony_2 = byte(0x1F3825)
rank_lost_colony_3 = byte(0x1F3826)
rank_lost_colony_4 = byte(0x1F3827)
rank_lost_colony_5 = byte(0x1F3828)

rank_pyramid_cave_1 = byte(0x1F38E8)
rank_pyramid_cave_2 = byte(0x1F38E9)
rank_pyramid_cave_3 = byte(0x1F38EA)
rank_pyramid_cave_4 = byte(0x1F38EB)
rank_pyramid_cave_5 = byte(0x1F38EC)

rank_final_rush_1 = byte(0x1F3A70)
rank_final_rush_2 = byte(0x1F3A71)
rank_final_rush_3 = byte(0x1F3A72)
rank_final_rush_4 = byte(0x1F3A73)
rank_final_rush_5 = byte(0x1F3A74)

rank_meteor_herd_1 = byte(0x1F3BF8)
rank_meteor_herd_2 = byte(0x1F3BF9)
rank_meteor_herd_3 = byte(0x1F3BFA)
rank_meteor_herd_4 = byte(0x1F3BFB)
rank_meteor_herd_5 = byte(0x1F3BFC)

rank_cannons_core_1 = byte(0x1F3D80)
rank_cannons_core_2 = byte(0x1F3D81)
rank_cannons_core_3 = byte(0x1F3D82)
rank_cannons_core_4 = byte(0x1F3D83)
rank_cannons_core_5 = byte(0x1F3D84)

rank_final_chase_1 = byte(0x1F4218)
rank_final_chase_2 = byte(0x1F4219)
rank_final_chase_3 = byte(0x1F421A)
rank_final_chase_4 = byte(0x1F421B)
rank_final_chase_5 = byte(0x1F421C)

rank_cosmic_wall_1 = byte(0x1F4464)
rank_cosmic_wall_2 = byte(0x1F4465)
rank_cosmic_wall_3 = byte(0x1F4466)
rank_cosmic_wall_4 = byte(0x1F4467)
rank_cosmic_wall_5 = byte(0x1F4468)

rank_mad_space_1 = byte(0x1F4528)
rank_mad_space_2 = byte(0x1F4529)
rank_mad_space_3 = byte(0x1F452A)
rank_mad_space_4 = byte(0x1F452B)
rank_mad_space_5 = byte(0x1F452C)

rank_route_101_1 = byte(0x1F5168)
rank_route_101_2 = byte(0x1F5169)
rank_route_101_3 = byte(0x1F516A)
rank_route_101_4 = byte(0x1F516B)
rank_route_101_5 = byte(0x1F516C)

rank_route_280_1 = byte(0x1F522C)
rank_route_280_2 = byte(0x1F522D)
rank_route_280_3 = byte(0x1F522E)
rank_route_280_4 = byte(0x1F522F)
rank_route_280_5 = byte(0x1F5230)



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

//STORY COMPLETION - HEROES
achievement(
    title = "City Escape", points = 2, type="progression",
    description = "Escape from the City [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == levels["CITY_ESCAPE"] &&
        mission_id == 0x0 && 
        current_character == characters["SONIC"]
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
    title = "Wild Canyon", points = 2, type="progression",
    description = "Find 3 pieces of the Master Emerald in Wild Canyon [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == levels["WILD_CANYON"] &&
        mission_id == 0x0 && 
        current_character == characters["KNUCKLES"]
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
    title = "Prison Lane", points = 2, type="progression",
    description = "Escape from the prison [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == levels["PRISON_LANE"] &&
        mission_id == 0x0 && 
        current_character == characters["TAILS_MECHA"]
)

achievement(
    title = "Metal Harbor", points = 2, type="progression",
    description = "Escape from Metal Harbor [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == levels["METAL_HARBOR"] &&
        mission_id == 0x0 && 
        current_character == characters["SONIC"]
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
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == levels["GREEN_FOREST"] &&
        mission_id == 0x0 && 
        current_character == characters["SONIC"]
)

achievement(
    title = "Pumpkin Hill", points = 2, type="progression",
    description = "Find 3 pieces of the Master Emerald in Pumpkin Hill [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == levels["PUMPKIN_HILL"] &&
        mission_id == 0x0 && 
        current_character == characters["KNUCKLES"]
)

achievement(
    title = "Mission Street", points = 2, type="progression",
    description = "Elude enemy pursuit [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == levels["MISSION_STREET"] &&
        mission_id == 0x0 && 
        current_character == characters["TAILS_MECHA"]
)

achievement(
    title = "Aquatic Mine", points = 2, type="progression",
    description = "Find 3 pieces of the Master Emerald in Aquatic Mine [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == levels["AQUATIC_MINE"] &&
        mission_id == 0x0 && 
        current_character == characters["KNUCKLES"]
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
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == levels["HIDDEN_BASE"] &&
        mission_id == 0x0 && 
        current_character == characters["TAILS_MECHA"]
)

achievement(
    title = "Pyramid Cave", points = 2, type="progression",
    description = "Infiltrate Eggman's Hidden Base [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == levels["PYRAMID_CAVE"] &&
        mission_id == 0x0 && 
        current_character == characters["SONIC"]
)

achievement(
    title = "Death Chamber", points = 2, type="progression",
    description = "Find 3 Gate keys in Death Chamber [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == levels["DEATH_CHAMBER"] &&
        mission_id == 0x0 && 
        current_character == characters["KNUCKLES"]
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
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == levels["ETERNAL_ENGINE"] &&
        mission_id == 0x0 && 
        current_character == characters["TAILS_MECHA"]
)

achievement(
    title = "Meteor Herd", points = 2, type="progression",
    description = "Find 3 pieces of the Master Emerald on Meteor Herd [Hero Story Mode]",
    trigger = 
        GlobalChecks() &&
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == levels["METEOR_HERD"] &&
        mission_id == 0x0 && 
        current_character == characters["KNUCKLES"]
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
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == levels["CRAZY_GADGET"] &&
        mission_id == 0x0 && 
        current_character == characters["SONIC"]
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
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == levels["FINAL_RUSH"] &&
        mission_id == 0x0 && 
        current_character == characters["SONIC"]
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
        PrevFromTo(story_progress_vilains, 0x19, 0x1a)
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

//BONUS MISSIONS

achievement(
    title = "City Escape - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in City Escape [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0xd &&
        mission_id == 0x1
) 

achievement(
    title = "City Escape - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in City Escape [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0xd &&
        mission_id == 0x2
) 

achievement(
    title = "City Escape - Time Attack", points = 2, type="progression",
    description = "Finish City Escape in less than 3'00\" [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0xd &&
        mission_id == 0x3
) 

achievement(
    title = "City Escape - Hard Mode", points = 2, type="progression",
    description = "Complete City Escape in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0xd &&
        mission_id == 0x4
) 

achievement(
    title = "Wild Canyon - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Wild Canyon [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x10 &&
        mission_id == 0x1
)

achievement(
    title = "Wild Canyon - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Wild Canyon [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x10 &&
        mission_id == 0x2
)

achievement(
    title = "Wild Canyon - Time Attack", points = 2, type="progression",
    description = "Finish Wild Canyon in less than 2'00\" [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x10 &&
        mission_id == 0x3
)

achievement(
    title = "Wild Canyon - Hard Mode", points = 2, type="progression",
    description = "Complete Wild Canyon in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x10 &&
        mission_id == 0x4
)

achievement(
    title = "Prison Lane - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Prison Lane [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x9 &&
        mission_id == 0x1
)

achievement(
    title = "Prison Lane - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Prison Lane [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x9 &&
        mission_id == 0x2
)

achievement(
    title = "Prison Lane - Time Attack", points = 2, type="progression",
    description = "Finish Prison Lane in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x9 &&
        mission_id == 0x3
)

achievement(
    title = "Prison Lane - Hard Mode", points = 2, type="progression",
    description = "Complete Prison Lane in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x9 &&
        mission_id == 0x4
)

achievement(
    title = "Metal Harbor - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Metal Harbor [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0xa &&
        mission_id == 0x1
)

achievement(
    title = "Metal Harbor - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Metal Harbor [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0xa &&
        mission_id == 0x2
)

achievement(
    title = "Metal Harbor - Time Attack", points = 2, type="progression",
    description = "Finish Metal Harbor in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0xa &&
        mission_id == 0x3
)

achievement(
    title = "Metal Harbor - Hard Mode", points = 2, type="progression",
    description = "Complete Metal Harbor in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0xa &&
        mission_id == 0x4
)

achievement(
    title = "Green Forest - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Green Forest [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x3 &&
        mission_id == 0x1
)

achievement(
    title = "Green Forest - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Green Forest [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x3 &&
        mission_id == 0x2
)

achievement(
    title = "Green Forest - Time Attack", points = 2, type="progression",
    description = "Finish Green Forest in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x3 &&
        mission_id == 0x3
)

achievement(
    title = "Green Forest - Hard Mode", points = 2, type="progression",
    description = "Complete Green Forest in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x3 &&
        mission_id == 0x4
)

achievement(
    title = "Pumpkin Hill - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Pumpkin Hill [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x5 &&
        mission_id == 0x1
)

achievement(
    title = "Pumpkin Hill - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Pumpkin Hill [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x5 &&
        mission_id == 0x2
)

achievement(
    title = "Pumpkin Hill - Time Attack", points = 2, type="progression",
    description = "Finish Pumpkin Hill in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x5 &&
        mission_id == 0x3
)

achievement(
    title = "Pumpkin Hill - Hard Mode", points = 2, type="progression",
    description = "Complete Pumpkin Hill in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x5 &&
        mission_id == 0x4
)

achievement(
    title = "Mission Street - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Mission Street [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x11 &&
        mission_id == 0x1
)

achievement(
    title = "Mission Street - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Mission Street [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x11 &&
        mission_id == 0x2
)

achievement(
    title = "Mission Street - Time Attack", points = 2, type="progression",
    description = "Finish Mission Street in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x11 &&
        mission_id == 0x3
)

achievement(
    title = "Mission Street - Hard Mode", points = 2, type="progression",
    description = "Complete Mission Street in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x11 &&
        mission_id == 0x4
)

achievement(
    title = "Aquatic Mine - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Aquatic Mine [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x7 &&
        mission_id == 0x1
)

achievement(
    title = "Aquatic Mine - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Aquatic Mine [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x7 &&
        mission_id == 0x2
)

achievement(
    title = "Aquatic Mine - Time Attack", points = 2, type="progression",
    description = "Finish Aquatic Mine in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x7 &&
        mission_id == 0x3
)

achievement(
    title = "Aquatic Mine - Hard Mode", points = 2, type="progression",
    description = "Complete Aquatic Mine in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x7 &&
        mission_id == 0x4
)

achievement(
    title = "Route 101 - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Route 101 [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x46 &&
        mission_id == 0x1 &&
        current_character == 0x2
)

achievement(
    title = "Route 101 - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Route 101 [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x46 &&
        mission_id == 0x2 &&
        current_character == 0x2
)

achievement(
    title = "Route 101 - Time Attack", points = 2, type="progression",
    description = "Finish Route 101 in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x46 &&
        mission_id == 0x3 &&
        current_character == 0x2
)

achievement(
    title = "Route 101 - Hard Mode", points = 2, type="progression",
    description = "Complete Route 101 in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x46 &&
        mission_id == 0x4 &&
        current_character == 0x2
)

achievement(
    title = "Hidden Base - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Hidden Base [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x17 &&
        mission_id == 0x1
)

achievement(
    title = "Hidden Base - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Hidden Base [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x17 &&
        mission_id == 0x2
)

achievement(
    title = "Hidden Base - Time Attack", points = 2, type="progression",
    description = "Finish Hidden Base in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x17 &&
        mission_id == 0x3
)

achievement(
    title = "Hidden Base - Hard Mode", points = 2, type="progression",
    description = "Complete Hidden Base in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x17 &&
        mission_id == 0x4
)

achievement(
    title = "Pyramid Cave - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Pyramid Cave [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x1c &&
        mission_id == 0x1
)

achievement(
    title = "Pyramid Cave - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Pyramid Cave [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x1c &&
        mission_id == 0x2
)

achievement(
    title = "Pyramid Cave - Time Attack", points = 2, type="progression",
    description = "Finish Pyramid Cave in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x1c &&
        mission_id == 0x3
)

achievement(
    title = "Pyramid Cave - Hard Mode", points = 2, type="progression",
    description = "Complete Pyramid Cave in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x1c &&
        mission_id == 0x4
)

achievement(
    title = "Death Chamber - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Death Chamber [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x19 &&
        mission_id == 0x1
)

achievement(
    title = "Death Chamber - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Death Chamber [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x19 &&
        mission_id == 0x2
)

achievement(
    title = "Death Chamber - Time Attack", points = 2, type="progression",
    description = "Finish Death Chamber in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x19 &&
        mission_id == 0x3
)

achievement(
    title = "Death Chamber - Hard Mode", points = 2, type="progression",
    description = "Complete Death Chamber in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x19 &&
        mission_id == 0x4
)

achievement(
    title = "Eternal Engine - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Eternal Engine [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x18 &&
        mission_id == 0x1
)

achievement(
    title = "Eternal Engine - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Eternal Engine [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x18 &&
        mission_id == 0x2
)

achievement(
    title = "Eternal Engine - Time Attack", points = 2, type="progression",
    description = "Finish Eternal Engine in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x18 &&
        mission_id == 0x3
)

achievement(
    title = "Eternal Engine - Hard Mode", points = 2, type="progression",
    description = "Complete Eternal Engine in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x18 &&
        mission_id == 0x4
)

achievement(
    title = "Meteor Herd - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Meteor Herd [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x20 &&
        mission_id == 0x1
)

achievement(
    title = "Meteor Herd - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Meteor Herd [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x20 &&
        mission_id == 0x2
)

achievement(
    title = "Meteor Herd - Time Attack", points = 2, type="progression",
    description = "Finish Meteor Herd in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x20 &&
        mission_id == 0x3
)

achievement(
    title = "Meteor Herd - Hard Mode", points = 2, type="progression",
    description = "Complete Meteor Herd in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x20 &&
        mission_id == 0x4
)

achievement(
    title = "Crazy Gadget - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Crazy Gadget [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x16 &&
        mission_id == 0x1
)

achievement(
    title = "Crazy Gadget - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Crazy Gadget [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x16 &&
        mission_id == 0x2
)

achievement(
    title = "Crazy Gadget - Time Attack", points = 2, type="progression",
    description = "Finish Crazy Gadget in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x16 &&
        mission_id == 0x3
)

achievement(
    title = "Crazy Gadget - Hard Mode", points = 2, type="progression",
    description = "Complete Crazy Gadget in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x16 &&
        mission_id == 0x4
)

achievement(
    title = "Final Rush - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Final Rush [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x1e &&
        mission_id == 0x1
)

achievement(
    title = "Final Rush - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Final Rush [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x1e &&
        mission_id == 0x2
)

achievement(
    title = "Final Rush - Time Attack", points = 2, type="progression",
    description = "Finish Final Rush in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x1e &&
        mission_id == 0x3
)

achievement(
    title = "Final Rush - Hard Mode", points = 2, type="progression",
    description = "Complete Final Rush in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x1e &&
        mission_id == 0x4
)

achievement(
    title = "Iron Gate - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Iron Gate [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0xb &&
        mission_id == 0x1
)

achievement(
    title = "Iron Gate - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Iron Gate [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0xb &&
        mission_id == 0x2
)

achievement(
    title = "Iron Gate - Time Attack", points = 2, type="progression",
    description = "Finish Iron Gate in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0xb &&
        mission_id == 0x3
)

achievement(
    title = "Iron Gate - Hard Mode", points = 2, type="progression",
    description = "Complete Iron Gate in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0xb &&
        mission_id == 0x4
)

achievement(
    title = "Dry Lagoon - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Dry Lagoon [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x12 &&
        mission_id == 0x1
)

achievement(
    title = "Dry Lagoon - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Dry Lagoon [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x12 &&
        mission_id == 0x2
)

achievement(
    title = "Dry Lagoon - Time Attack", points = 2, type="progression",
    description = "Finish Dry Lagoon in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x12 &&
        mission_id == 0x3
)

achievement(
    title = "Dry Lagoon - Hard Mode", points = 2, type="progression",
    description = "Complete Dry Lagoon in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x12 &&
        mission_id == 0x4
)

achievement(
    title = "Sand Ocean - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Sand Ocean [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x15 &&
        mission_id == 0x1
)

achievement(
    title = "Sand Ocean - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Sand Ocean [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x15 &&
        mission_id == 0x2
)

achievement(
    title = "Sand Ocean - Time Attack", points = 2, type="progression",
    description = "Finish Sand Ocean in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x15 &&
        mission_id == 0x3
)

achievement(
    title = "Sand Ocean - Hard Mode", points = 2, type="progression",
    description = "Complete Sand Ocean in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x15 &&
        mission_id == 0x4
)

achievement(
    title = "Radical Highway - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Radical Highway [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0xe &&
        mission_id == 0x1
)

achievement(
    title = "Radical Highway - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Radical Highway [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0xe &&
        mission_id == 0x2
)

achievement(
    title = "Radical Highway - Time Attack", points = 2, type="progression",
    description = "Finish Radical Highway in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0xe &&
        mission_id == 0x3
)

achievement(
    title = "Radical Highway - Hard Mode", points = 2, type="progression",
    description = "Complete Radical Highway in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0xe &&
        mission_id == 0x4
)

achievement(
    title = "Egg Quarters - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Egg Quarters [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x1a &&
        mission_id == 0x1
)

achievement(
    title = "Egg Quarters - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Egg Quarters [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x1a &&
        mission_id == 0x2
)

achievement(
    title = "Egg Quarters - Time Attack", points = 2, type="progression",
    description = "Finish Egg Quarters in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x1a &&
        mission_id == 0x3
)

achievement(
    title = "Egg Quarters - Hard Mode", points = 2, type="progression",
    description = "Complete Egg Quarters in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x1a &&
        mission_id == 0x4
)

achievement(
    title = "Lost Colony - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Lost Colony [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x1b &&
        mission_id == 0x1
)

achievement(
    title = "Lost Colony - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Lost Colony [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x1b &&
        mission_id == 0x2
)

achievement(
    title = "Lost Colony - Time Attack", points = 2, type="progression",
    description = "Finish Lost Colony in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x1b &&
        mission_id == 0x3
)

achievement(
    title = "Lost Colony - Hard Mode", points = 2, type="progression",
    description = "Complete Lost Colony in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x1b &&
        mission_id == 0x4
)

achievement(
    title = "Weapons Bed - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Weapons Bed [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0xc &&
        mission_id == 0x1
)

achievement(
    title = "Weapons Bed - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Weapons Bed [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0xc &&
        mission_id == 0x2
)

achievement(
    title = "Weapons Bed - Time Attack", points = 2, type="progression",
    description = "Finish Weapons Bed in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0xc &&
        mission_id == 0x3
)

achievement(
    title = "Weapons Bed - Hard Mode", points = 2, type="progression",
    description = "Complete Weapons Bed in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0xc &&
        mission_id == 0x4
)

achievement(
    title = "Security Hall - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Security Hall [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x8 &&
        mission_id == 0x1
)

achievement(
    title = "Security Hall - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Security Hall [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x8 &&
        mission_id == 0x2
)

achievement(
    title = "Security Hall - Time Attack", points = 2, type="progression",
    description = "Finish Security Hall in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x8 &&
        mission_id == 0x3
)

achievement(
    title = "Security Hall - Hard Mode", points = 2, type="progression",
    description = "Complete Security Hall in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x8 &&
        mission_id == 0x4
)

achievement(
    title = "White Jungle - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in White Jungle [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x4 &&
        mission_id == 0x1
)

achievement(
    title = "White Jungle - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in White Jungle [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x4 &&
        mission_id == 0x2
)

achievement(
    title = "White Jungle - Time Attack", points = 2, type="progression",
    description = "Finish White Jungle in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x4 &&
        mission_id == 0x3
)

achievement(
    title = "White Jungle - Hard Mode", points = 2, type="progression",
    description = "Complete White Jungle in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x4 &&
        mission_id == 0x4
)

achievement(
    title = "Route 280 - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Route 280 [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x46 &&
        mission_id == 0x1 &&
        current_character == 0x5
)

achievement(
    title = "Route 280 - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Route 280 [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x46 &&
        mission_id == 0x2 &&
        current_character == 0x5
)

achievement(
    title = "Route 280 - Time Attack", points = 2, type="progression",
    description = "Finish Route 280 in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x46 &&
        mission_id == 0x3 &&
        current_character == 0x5
)

achievement(
    title = "Route 280 - Hard Mode", points = 2, type="progression",
    description = "Complete Route 280 in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x46 &&
        mission_id == 0x4 &&
        current_character == 0x5
)

achievement(
    title = "Sky Rail - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Sky Rail [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x6 &&
        mission_id == 0x1
)

achievement(
    title = "Sky Rail - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Sky Rail [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x6 &&
        mission_id == 0x2
)

achievement(
    title = "Sky Rail - Time Attack", points = 2, type="progression",
    description = "Finish Sky Rail in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x6 &&
        mission_id == 0x3
)

achievement(
    title = "Sky Rail - Hard Mode", points = 2, type="progression",
    description = "Complete Sky Rail in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x6 &&
        mission_id == 0x4
)

achievement(
    title = "Mad Space - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Mad Space [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x2c &&
        mission_id == 0x1
)

achievement(
    title = "Mad Space - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Mad Space [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x2c &&
        mission_id == 0x2
)

achievement(
    title = "Mad Space - Time Attack", points = 2, type="progression",
    description = "Finish Mad Space in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x2c &&
        mission_id == 0x3
)

achievement(
    title = "Mad Space - Hard Mode", points = 2, type="progression",
    description = "Complete Mad Space in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x2c &&
        mission_id == 0x4
)

achievement(
    title = "Cosmic Wall - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Cosmic Wall [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x2b &&
        mission_id == 0x1
)

achievement(
    title = "Cosmic Wall - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Cosmic Wall [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x2b &&
        mission_id == 0x2
)

achievement(
    title = "Cosmic Wall - Time Attack", points = 2, type="progression",
    description = "Finish Cosmic Wall in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x2b &&
        mission_id == 0x3
)

achievement(
    title = "Cosmic Wall - Hard Mode", points = 2, type="progression",
    description = "Complete Cosmic Wall in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x2b &&
        mission_id == 0x4
)

achievement(
    title = "Final Chase - Rings Challenge", points = 2, type="progression",
    description = "Find 100 rings in Final Chase [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x28 &&
        mission_id == 0x1
)

achievement(
    title = "Final Chase - Chao Challenge", points = 2, type="progression",
    description = "Find the hidden Chao in Final Chase [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x28 &&
        mission_id == 0x2
)

achievement(
    title = "Final Chase - Time Attack", points = 2, type="progression",
    description = "Finish Final Chase in less than xxx [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x28 &&
        mission_id == 0x3
)

achievement(
    title = "Final Chase - Hard Mode", points = 2, type="progression",
    description = "Complete Final Chase in Hard Mode [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        PrevFromTo(flag_stage_clear, 0x0, 0x1) && 
        level_id == 0x28 &&
        mission_id == 0x4
)

//BONUS MISSION RANK A

achievement(
    title = "City Escape - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish City Escape and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0xd &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_city_escape_1, 0x5)
)

achievement(
    title = "City Escape - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in City Escape and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0xd &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_city_escape_2, 0x5)
)

achievement(
    title = "City Escape - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in City Escape and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0xd &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_city_escape_3, 0x5)
)

achievement(
    title = "City Escape - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish City Escape in less than 3'00\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0xd &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_city_escape_4, 0x5)
)

achievement(
    title = "City Escape - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete City Escape in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0xd &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_city_escape_5, 0x5)
)





achievement(
    title = "Wild Canyon - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Wild Canyon and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x10 &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_wild_canyon_1, 0x5)
)

achievement(
    title = "Wild Canyon - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Wild Canyon and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x10 &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_wild_canyon_2, 0x5)
)

achievement(
    title = "Wild Canyon - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Wild Canyon and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x10 &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_wild_canyon_3, 0x5)
)

achievement(
    title = "Wild Canyon - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Wild Canyon in less than 2'00\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x10 &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_wild_canyon_4, 0x5)
)

achievement(
    title = "Wild Canyon - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Wild Canyon in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x10 &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_wild_canyon_5, 0x5)
)

achievement(
    title = "Prison Lane - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Prison Lane and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x9 &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_prison_lane_1, 0x5)
)

achievement(
    title = "Prison Lane - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Prison Lane and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x9 &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_prison_lane_2, 0x5)
)

achievement(
    title = "Prison Lane - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Prison Lane and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x9 &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_prison_lane_3, 0x5)
)

achievement(
    title = "Prison Lane - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Prison Lane in less than 3'00\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x9 &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_prison_lane_4, 0x5)
)

achievement(
    title = "Prison Lane - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Prison Lane in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x9 &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_prison_lane_5, 0x5)
)




achievement(
    title = "Metal Harbor - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Metal Harbor and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0xa &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_metal_harbor_1, 0x5)
)

achievement(
    title = "Metal Harbor - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Metal Harbor and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0xa &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_metal_harbor_2, 0x5)
)

achievement(
    title = "Metal Harbor - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Metal Harbor and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0xa &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_metal_harbor_3, 0x5)
)

achievement(
    title = "Metal Harbor - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Metal Harbor in less than 2'00\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0xa &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_metal_harbor_4, 0x5)
)

achievement(
    title = "Metal Harbor - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Metal Harbor in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0xa &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_metal_harbor_5, 0x5)
)





achievement(
    title = "Green Forest - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Green Forest and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x3 &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_green_forest_1, 0x5)
)

achievement(
    title = "Green Forest - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Green Forest and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x3 &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_green_forest_2, 0x5)
)

achievement(
    title = "Green Forest - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Green Forest and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x3 &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_green_forest_3, 0x5)
)

achievement(
    title = "Green Forest - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Green Forest in less than 4'00\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x3 &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_green_forest_4, 0x5)
)

achievement(
    title = "Green Forest - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Green Forest in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x3 &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_green_forest_5, 0x5)
)




achievement(
    title = "Pumpkin Hill - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Pumpkin Hill and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x5 &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_pumpkin_hill_1, 0x5)
)

achievement(
    title = "Pumpkin Hill - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Pumpkin Hill and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x5 &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_pumpkin_hill_2, 0x5)
)

achievement(
    title = "Pumpkin Hill - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Pumpkin Hill and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x5 &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_pumpkin_hill_3, 0x5)
)

achievement(
    title = "Pumpkin Hill - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Pumpkin Hill in less than 3'00\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x5 &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_pumpkin_hill_4, 0x5)
)

achievement(
    title = "Pumpkin Hill - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Pumpkin Hill in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x5 &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_pumpkin_hill_5, 0x5)
)




achievement(
    title = "Mission Street - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Mission Street and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x11 &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_mission_street_1, 0x5)
)

achievement(
    title = "Mission Street - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Mission Street and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x11 &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_mission_street_2, 0x5)
)

achievement(
    title = "Mission Street - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Mission Street and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x11 &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_mission_street_3, 0x5)
)

achievement(
    title = "Mission Street - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Mission Street in less than 3'30\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x11 &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_mission_street_4, 0x5)
)

achievement(
    title = "Mission Street - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Mission Street in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x11 &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_mission_street_5, 0x5)
)




achievement(
    title = "Aquatic Mine - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Aquatic Mine and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x7 &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_aquatic_mine_1, 0x5)
)

achievement(
    title = "Aquatic Mine - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Aquatic Mine and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x7 &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_aquatic_mine_2, 0x5)
)

achievement(
    title = "Aquatic Mine - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Aquatic Mine and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x7 &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_aquatic_mine_3, 0x5)
)

achievement(
    title = "Aquatic Mine - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Aquatic Mine in less than 3'30\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x7 &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_aquatic_mine_4, 0x5)
)

achievement(
    title = "Aquatic Mine - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Aquatic Mine in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x7 &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_aquatic_mine_5, 0x5)
)





achievement(
    title = "Hidden Base - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Hidden Base and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x17 &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_hidden_base_1, 0x5)
)

achievement(
    title = "Hidden Base - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Hidden Base and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x17 &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_hidden_base_2, 0x5)
)

achievement(
    title = "Hidden Base - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Hidden Base and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x17 &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_hidden_base_3, 0x5)
)

achievement(
    title = "Hidden Base - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Hidden Base in less than 3'30\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x17 &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_hidden_base_4, 0x5)
)

achievement(
    title = "Hidden Base - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Hidden Base in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x17 &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_hidden_base_5, 0x5)
)




achievement(
    title = "Route 101 - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Route 101 and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x46 &&
        mission_id == 0x0 &&
        current_character == 0x2 &&
        PrevIncreasedTo(rank_route_101_1, 0x5)
)

achievement(
    title = "Route 101 - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Route 101 and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x46 &&
        mission_id == 0x1 &&
        current_character == 0x2 &&
        PrevIncreasedTo(rank_route_101_2, 0x5)
)

achievement(
    title = "Route 101 - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Route 101 and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x46 &&
        mission_id == 0x2 &&
        current_character == 0x2 &&
        PrevIncreasedTo(rank_route_101_3, 0x5)
)

achievement(
    title = "Route 101 - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Route 101 in less than 3'00\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x46 &&
        mission_id == 0x3 &&
        current_character == 0x2 &&
        PrevIncreasedTo(rank_route_101_4, 0x5)
)

achievement(
    title = "Route 101 - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Route 101 in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x46 &&
        mission_id == 0x4 &&
        current_character == 0x2 &&
        PrevIncreasedTo(rank_route_101_5, 0x5)
)





achievement(
    title = "Pyramid Cave - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Pyramid Cave and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x1c &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_pyramid_cave_1, 0x5)
)

achievement(
    title = "Pyramid Cave - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Pyramid Cave and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x1c &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_pyramid_cave_2, 0x5)
)

achievement(
    title = "Pyramid Cave - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Pyramid Cave and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x1c &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_pyramid_cave_3, 0x5)
)

achievement(
    title = "Pyramid Cave - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Pyramid Cave in less than 4'00\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x1c &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_pyramid_cave_4, 0x5)
)

achievement(
    title = "Pyramid Cave - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Pyramid Cave in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x1c &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_pyramid_cave_5, 0x5)
)




achievement(
    title = "Death Chamber - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Death Chamber and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x19 &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_death_chamber_1, 0x5)
)

achievement(
    title = "Death Chamber - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Death Chamber and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x19 &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_death_chamber_2, 0x5)
)

achievement(
    title = "Death Chamber - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Death Chamber and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x19 &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_death_chamber_3, 0x5)
)

achievement(
    title = "Death Chamber - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Death Chamber in less than 5'00\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x19 &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_death_chamber_4, 0x5)
)

achievement(
    title = "Death Chamber - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Death Chamber in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x19 &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_death_chamber_5, 0x5)
)






achievement(
    title = "Eternal Engine - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Eternal Engine and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x18 &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_eternal_engine_1, 0x5)
)

achievement(
    title = "Eternal Engine - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Eternal Engine and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x18 &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_eternal_engine_2, 0x5)
)

achievement(
    title = "Eternal Engine - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Eternal Engine and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x18 &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_eternal_engine_3, 0x5)
)

achievement(
    title = "Eternal Engine - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Eternal Engine in less than 5'00\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x18 &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_eternal_engine_4, 0x5)
)

achievement(
    title = "Eternal Engine - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Eternal Engine in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x18 &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_eternal_engine_5, 0x5)
)





achievement(
    title = "Meteor Herd - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Meteor Herd and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x20 &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_eternal_engine_1, 0x5)
)

achievement(
    title = "Meteor Herd - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Meteor Herd and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x20 &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_eternal_engine_2, 0x5)
)

achievement(
    title = "Meteor Herd - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Meteor Herd and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x20 &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_eternal_engine_3, 0x5)
)

achievement(
    title = "Meteor Herd - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Meteor Herd in less than 4'30\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x20 &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_eternal_engine_4, 0x5)
)

achievement(
    title = "Meteor Herd - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Meteor Herd in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x20 &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_eternal_engine_5, 0x5)
)





achievement(
    title = "Crazy Gadget - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Crazy Gadget and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x16 &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_crazy_gadget_1, 0x5)
)

achievement(
    title = "Crazy Gadget - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Crazy Gadget and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x16 &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_crazy_gadget_2, 0x5)
)

achievement(
    title = "Crazy Gadget - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Crazy Gadget and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x16 &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_crazy_gadget_3, 0x5)
)

achievement(
    title = "Crazy Gadget - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Crazy Gadget in less than 5'00\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x16 &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_crazy_gadget_4, 0x5)
)

achievement(
    title = "Crazy Gadget - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Crazy Gadget in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x16 &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_crazy_gadget_5, 0x5)
)




achievement(
    title = "Final Rush - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Final Rush and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x1e &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_final_rush_1, 0x5)
)

achievement(
    title = "Final Rush - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Final Rush and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x1e &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_final_rush_2, 0x5)
)

achievement(
    title = "Final Rush - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Final Rush and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x1e &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_final_rush_3, 0x5)
)

achievement(
    title = "Final Rush - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Final Rush in less than 5'00\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x1e &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_final_rush_4, 0x5)
)

achievement(
    title = "Final Rush - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Final Rush in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x1e &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_final_rush_5, 0x5)
)





achievement(
    title = "Iron Gate - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Iron Gate and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0xb &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_iron_gate_1, 0x5)
)

achievement(
    title = "Iron Gate - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Iron Gate and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0xb &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_iron_gate_2, 0x5)
)

achievement(
    title = "Iron Gate - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Iron Gate and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0xb &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_iron_gate_3, 0x5)
)

achievement(
    title = "Iron Gate - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Iron Gate in less than 4'00\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0xb &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_iron_gate_4, 0x5)
)

achievement(
    title = "Iron Gate - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Iron Gate in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0xb &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_iron_gate_5, 0x5)
)





achievement(
    title = "Dry Lagoon - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Dry Lagoon and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x12 &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_dry_lagoon_1, 0x5)
)

achievement(
    title = "Dry Lagoon - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Dry Lagoon and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x12 &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_dry_lagoon_2, 0x5)
)

achievement(
    title = "Dry Lagoon - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Dry Lagoon and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x12 &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_dry_lagoon_3, 0x5)
)

achievement(
    title = "Dry Lagoon - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Dry Lagoon in less than 3'30\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x12 &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_dry_lagoon_4, 0x5)
)

achievement(
    title = "Dry Lagoon - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Dry Lagoon in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x12 &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_dry_lagoon_5, 0x5)
)







achievement(
    title = "Sand Ocean - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Sand Ocean and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x15 &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_sand_ocean_1, 0x5)
)

achievement(
    title = "Sand Ocean - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Sand Ocean and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x15 &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_sand_ocean_2, 0x5)
)

achievement(
    title = "Sand Ocean - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Sand Ocean and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x15 &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_sand_ocean_3, 0x5)
)

achievement(
    title = "Sand Ocean - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Sand Ocean in less than 4'00\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x15 &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_sand_ocean_4, 0x5)
)

achievement(
    title = "Sand Ocean - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Sand Ocean in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x15 &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_sand_ocean_5, 0x5)
)




achievement(
    title = "Radical Highway - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Radical Highway and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0xe &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_radical_highway_1, 0x5)
)

achievement(
    title = "Radical Highway - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Radical Highway and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0xe &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_radical_highway_2, 0x5)
)

achievement(
    title = "Radical Highway - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Radical Highway and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0xe &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_radical_highway_3, 0x5)
)

achievement(
    title = "Radical Highway - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Radical Highway in less than 3'00\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0xe &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_radical_highway_4, 0x5)
)

achievement(
    title = "Radical Highway - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Radical Highway in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0xe &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_radical_highway_5, 0x5)
)



achievement(
    title = "Egg Quarters - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Egg Quarters and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x1a &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_egg_quarters_1, 0x5)
)

achievement(
    title = "Egg Quarters - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Egg Quarters and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x1a &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_egg_quarters_2, 0x5)
)

achievement(
    title = "Egg Quarters - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Egg Quarters and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x1a &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_egg_quarters_3, 0x5)
)

achievement(
    title = "Egg Quarters - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Egg Quarters in less than 3'00\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x1a &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_egg_quarters_4, 0x5)
)

achievement(
    title = "Egg Quarters - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Egg Quarters in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x1a &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_egg_quarters_5, 0x5)
)






achievement(
    title = "Lost Colony - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Lost Colony and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x1b &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_lost_colony_1, 0x5)
)

achievement(
    title = "Lost Colony - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Lost Colony and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x1b &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_lost_colony_2, 0x5)
)

achievement(
    title = "Lost Colony - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Lost Colony and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x1b &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_lost_colony_3, 0x5)
)

achievement(
    title = "Lost Colony - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Lost Colony in less than 3'30\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x1b &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_lost_colony_4, 0x5)
)

achievement(
    title = "Lost Colony - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Lost Colony in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x1b &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_lost_colony_5, 0x5)
)





achievement(
    title = "Security Hall - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Security Hall and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x8 &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_security_hall_1, 0x5)
)

achievement(
    title = "Security Hall - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Security Hall and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x8 &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_security_hall_2, 0x5)
)

achievement(
    title = "Security Hall - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Security Hall and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x8 &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_security_hall_3, 0x5)
)

achievement(
    title = "Security Hall - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Security Hall in less than 3'30\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x8 &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_security_hall_4, 0x5)
)

achievement(
    title = "Security Hall - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Security Hall in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x8 &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_security_hall_5, 0x5)
)




achievement(
    title = "White Jungle - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish White Jungle and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x4 &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_white_jungle_1, 0x5)
)

achievement(
    title = "White Jungle - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in White Jungle and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x4 &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_white_jungle_2, 0x5)
)

achievement(
    title = "White Jungle - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in White Jungle and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x4 &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_white_jungle_3, 0x5)
)

achievement(
    title = "White Jungle - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish White Jungle in less than 3'00\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x4 &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_white_jungle_4, 0x5)
)

achievement(
    title = "White Jungle - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete White Jungle in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x4 &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_white_jungle_5, 0x5)
)







achievement(
    title = "Route 280 - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Route 280 and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x46 &&
        mission_id == 0x0 &&
        current_character == 0x5 &&
        PrevIncreasedTo(rank_route_280_1, 0x5)
)

achievement(
    title = "Route 280 - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Route 280 and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x46 &&
        mission_id == 0x1 &&
        current_character == 0x5 &&
        PrevIncreasedTo(rank_route_280_2, 0x5)
)

achievement(
    title = "Route 280 - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Route 280 and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x46 &&
        mission_id == 0x2 &&
        current_character == 0x5 &&
        PrevIncreasedTo(rank_route_280_3, 0x5)
)

achievement(
    title = "Route 280 - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Route 280 in less than 3'45\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x46 &&
        mission_id == 0x3 &&
        current_character == 0x5 &&
        PrevIncreasedTo(rank_route_280_4, 0x5)
)

achievement(
    title = "Route 280 - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Route 280 in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x46 &&
        mission_id == 0x4 &&
        current_character == 0x5 &&
        PrevIncreasedTo(rank_route_280_5, 0x5)
)





achievement(
    title = "Sky Rail - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Sky Rail and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x6 &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_sky_rail_1, 0x5)
)

achievement(
    title = "Sky Rail - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Sky Rail and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x6 &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_sky_rail_2, 0x5)
)

achievement(
    title = "Sky Rail - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Sky Rail and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x6 &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_sky_rail_3, 0x5)
)

achievement(
    title = "Sky Rail - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Sky Rail in less than 2'00\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x6 &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_sky_rail_4, 0x5)
)

achievement(
    title = "Sky Rail - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Sky Rail in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x6 &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_sky_rail_5, 0x5)
)







achievement(
    title = "Mad Space - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Mad Space and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x2c &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_mad_space_1, 0x5)
)

achievement(
    title = "Mad Space - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Mad Space and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x2c &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_mad_space_2, 0x5)
)

achievement(
    title = "Mad Space - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Mad Space and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x2c &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_mad_space_3, 0x5)
)

achievement(
    title = "Mad Space - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Mad Space in less than 4'30\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x2c &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_mad_space_4, 0x5)
)

achievement(
    title = "Mad Space - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Mad Space in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x2c &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_mad_space_5, 0x5)
)






achievement(
    title = "Cosmic Wall - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Cosmic Wall and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x2b &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_cosmic_wall_1, 0x5)
)

achievement(
    title = "Cosmic Wall - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Cosmic Wall and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x2b &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_cosmic_wall_2, 0x5)
)

achievement(
    title = "Cosmic Wall - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Cosmic Wall and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x2b &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_cosmic_wall_3, 0x5)
)

achievement(
    title = "Cosmic Wall - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Cosmic Wall in less than 8'00\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x2b &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_cosmic_wall_4, 0x5)
)

achievement(
    title = "Cosmic Wall - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Cosmic Wall in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x2b &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_cosmic_wall_5, 0x5)
)





achievement(
    title = "Final Chase - Rank A", points = rank_a_value_story, type="progression",
    description = "Finish Final Chase and get a Rank A [Story Mission]",
    trigger = 
        GlobalChecks() &&
        flag_stage_clear == 0x1 && 
        level_id == 0x28 &&
        mission_id == 0x0 &&
        PrevIncreasedTo(rank_final_rush_1, 0x5)
)

achievement(
    title = "Final Chase - Rings Challenge - Rank A", points = rank_a_value_rings, type="progression",
    description = "Find 100 rings in Final Chase and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x28 &&
        mission_id == 0x1 &&
        PrevIncreasedTo(rank_final_rush_2, 0x5)
)

achievement(
    title = "Final Chase - Chao Challenge - Rank A", points = rank_a_value_chao, type="progression",
    description = "Find the hidden Chao in Final Chase and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x28 &&
        mission_id == 0x2 &&
        PrevIncreasedTo(rank_final_rush_3, 0x5)
)

achievement(
    title = "Final Chase - Time Attack - Rank A", points = rank_a_value_time, type="progression",
    description = "Finish Final Chase in less than 5'30\" and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x28 &&
        mission_id == 0x3 &&
        PrevIncreasedTo(rank_final_rush_4, 0x5)
)

achievement(
    title = "Final Chase - Hard Mode - Rank A", points = rank_a_value_hard, type="progression",
    description = "Complete Final Chase in Hard Mode and get a Rank A [Bonus Mission]",
    trigger = 
        GlobalChecks() &&
        game_mode == 0x0 && 
        flag_stage_clear == 0x1 && 
        level_id == 0x28 &&
        mission_id == 0x4 &&
        PrevIncreasedTo(rank_final_rush_5, 0x5)
)

//BOSS CHALLENGES 

achievement(
    title = "T-6T Big Fool", points = 2,
    description = "Beat the T-6T Big Foot with Sonic without losing a single ring [Any Mode]",
    trigger =   level_id == levels["F6T_BIG_FOOT"] && 
                current_character == characters["SONIC"] &&
                prev(flag_stage_clear) == 0x00 && trigger_when(flag_stage_clear == 0x01) &&
                unless(once(player_rings < prev(player_rings))) &&
                (always_false() || (never(level_id != prev(level_id)) &&
                never((prev(game_state) == 0x07 && game_state == 0x10)) && never(game_state == 0x09) &&
                always_true()))
)

achievement(
    title = "Dr Eggmeh", points = 2,
    description = "Beat Dr Eggman with Tails during the first encounter without taking any damage [Any Mode]",
    trigger =   level_id == levels["TAILS_VS_EGG_MAN_1"] && 
                current_character == characters["TAILS_MECHA"] &&
                prev(flag_stage_clear) == 0x00 && trigger_when(flag_stage_clear == 0x01) &&
                unless(once(float_be(player_pointer + 0x000168) < prev(float_be(player_pointer + 0x000168)))) &&
                (always_false() || (never(level_id != prev(level_id)) &&
                never((prev(game_state) == 0x07 && game_state == 0x10)) && never(game_state == 0x09) &&
                always_true()))
)

achievement(
    title = "Shaduh", points = 2,
    description = "Beat Shadow with Sonic during the first encounter without losing a single ring [Any Mode]",
    trigger =   level_id == levels["SONIC_VS_SHADOW_1"] && 
                current_character == characters["SONIC"] &&
                prev(flag_stage_clear) == 0x00 && trigger_when(flag_stage_clear == 0x01) &&
                unless(once(player_rings < prev(player_rings))) &&
                (always_false() || (never(level_id != prev(level_id)) &&
                never((prev(game_state) == 0x07 && game_state == 0x10)) && never(game_state == 0x09) &&
                always_true()))
)

achievement(
    title = "King Boom Poo", points = 2,
    description = "Hit King Boom Boo Twice before the hourglass ends [Any Mode]",
    trigger =   level_id == levels["KING_BOOM_BOO"] && 
                current_character == characters["KNUCKLES"] && 
                dword_be(boss_pointer + 0x000A88) > 0x00 &&
                trigger_when(repeated(2, float(boss_pointer + 0x00000C) < prev(float(boss_pointer + 0x00000C)))) &&
                (always_false() || (never(level_id != prev(level_id)) &&
                never((prev(game_state) == 0x07 && game_state == 0x10)) && never(game_state == 0x09) &&
                never(dword_be(boss_pointer + 0x000A88) == 0x00) && always_true()))
)

achievement(
    title = "Egg Golame", points = 2,
    description = "Beat the Egg Golem with Sonic without losing a single ring [Any Mode]",
    trigger =   level_id == levels["EGG_GOLEM_SONIC"] && 
                current_character == characters["SONIC"] &&
                prev(flag_stage_clear) == 0x00 && trigger_when(flag_stage_clear == 0x01) &&
                unless(once(player_rings < prev(player_rings))) &&
                (always_false() || (never(level_id != prev(level_id)) &&
                never((prev(game_state) == 0x07 && game_state == 0x10)) && never(game_state == 0x09) &&
                always_true()))
)

achievement(
    title = "You're so Bat", points = 2,
    description = "Beat Rouge with Knuckles without losing a single ring [Any Mode]",
    trigger =   level_id == levels["KNUCKLES_VS_ROUGE"] && 
                current_character == characters["KNUCKLES"] &&
                prev(flag_stage_clear) == 0x00 && trigger_when(flag_stage_clear == 0x01) &&
                unless(once(player_rings < prev(player_rings))) &&
                (always_false() || (never(level_id != prev(level_id)) &&
                never((prev(game_state) == 0x07 && game_state == 0x10)) && never(game_state == 0x09) &&
                always_true()))
)

achievement(
    title = "Untouchable", points = 2,
    description = "Beat Dr Eggman with tails during the second encounter without taking any damage [Any Mode]",
    trigger =   level_id == levels["TAILS_VS_EGG_MAN_2"] && 
                current_character == characters["TAILS_MECHA"] &&
                prev(flag_stage_clear) == 0x00 && trigger_when(flag_stage_clear == 0x01) &&
                unless(once(float_be(player_pointer + 0x000168) < prev(float_be(player_pointer + 0x000168)))) &&
                (always_false() || (never(level_id != prev(level_id)) &&
                never((prev(game_state) == 0x07 && game_state == 0x10)) && never(game_state == 0x09) &&
                always_true()))
)

achievement(
    title = "Investment", points = 2,
    description = "Beat Shadow with Sonic during the second encounter with at least 250 rings [Any Mode]",
    trigger =   level_id == levels["SONIC_VS_SHADOW_2"] && 
                current_character == characters["SONIC"] &&
                prev(flag_stage_clear) == 0x00 && trigger_when(flag_stage_clear == 0x01) &&
                once(player_rings >= 0xFA) &&
                (always_false() || (never(level_id != prev(level_id)) &&
                never((prev(game_state) == 0x07 && game_state == 0x10)) && never(game_state == 0x09) &&
                always_true()))
)

achievement(
    title = "Boss Attack - Hero Side", points = 5,
    description = "Finish the Boss Attack mode on Hero side and earn an emblem",
    trigger = word_be(0x3AD820) == 0x2A && byte(0x1CC1AA) == 0x01 && prev(byte(0x1F57D6)) == 0x00 &&
              byte(0x1F57D6) == 0x01 && byte(0x1E50D4) == 0x0C
)

achievement(
    title = "Boss Attack - Dark Side", points = 5,
    description = "Finish the Boss Attack mode on Dark side and earn an emblem",
    trigger = word_be(0x3AD820) == 0x2A && byte(0x1CC1AA) == 0x01 && prev(byte(0x1F57D7)) == 0x00 &&
              byte(0x1F57D7) == 0x01 && byte(0x1E50D4) == 0x0D
)

achievement(
    title = "B-3x HOT SHUT DOWN", points = 2,
    description = "Beat the B-3x HOT SHOT with Shadow without losing a single ring [Any Mode]",
    trigger =   level_id == levels["B3X_HOT_SHOT"] && 
                current_character == characters["SHADOW"] &&
                prev(flag_stage_clear) == 0x00 && trigger_when(flag_stage_clear == 0x01) &&
                unless(once(player_rings < prev(player_rings))) &&
                (always_false() || (never(level_id != prev(level_id)) &&
                never((prev(game_state) == 0x07 && game_state == 0x10)) && never(game_state == 0x09) &&
                always_true()))
)

achievement(
    title = "Fails", points = 2,
    description = "Beat Tails with Dr Eggman tails during the first encounter without taking any damage [Any Mode]",
    trigger =   level_id == levels["TAILS_VS_EGG_MAN_1"] && 
                current_character == characters["EGGMAN_MECHA"] &&
                prev(flag_stage_clear) == 0x00 && trigger_when(flag_stage_clear == 0x01) &&
                unless(once(float_be(player_pointer + 0x000168) < prev(float_be(player_pointer + 0x000168)))) &&
                (always_false() || (never(level_id != prev(level_id)) &&
                never((prev(game_state) == 0x07 && game_state == 0x10)) && never(game_state == 0x09) &&
                always_true()))
)

achievement(
    title = "R-1/A Crashing Dog", points = 2,
    description = "Beat R-1/A Flying Dog with Rouge without taking any damage [Any Mode]",
    trigger =   level_id == levels["R1A_FLYING_DOG"] && 
                current_character == characters["ROUGE"] &&
                prev(flag_stage_clear) == 0x00 && trigger_when(flag_stage_clear == 0x01) &&
                unless(once(player_rings < prev(player_rings))) &&
                (always_false() || (never(level_id != prev(level_id)) &&
                never((prev(game_state) == 0x07 && game_state == 0x10)) && never(game_state == 0x09) &&
                always_true()))
)

achievement(
    title = "Sonice to Beat You", points = 2,
    description = "Beat Sonic with Shadow during the first encounter without losing a single ring [Any Mode]",
    trigger =   level_id == levels["SONIC_VS_SHADOW_1"] && 
                current_character == characters["SHADOW"] &&
                prev(flag_stage_clear) == 0x00 && trigger_when(flag_stage_clear == 0x01) &&
                unless(once(player_rings < prev(player_rings))) &&
                (always_false() || (never(level_id != prev(level_id)) &&
                never((prev(game_state) == 0x07 && game_state == 0x10)) && never(game_state == 0x09) &&
                always_true()))
)

achievement(
    title = "Geologist", points = 2,
    description = "Beat the Egg Golem with Dr Eggman without taking any damage [Any Mode]",
    trigger =   level_id == levels["EGG_GOLEM_EGGMAN"] && 
                current_character == characters["EGGMAN_MECHA"] &&
                prev(flag_stage_clear) == 0x00 && trigger_when(flag_stage_clear == 0x01) &&
                unless(once(float_be(player_pointer + 0x000168) < prev(float_be(player_pointer + 0x000168)))) &&
                (always_false() || (never(level_id != prev(level_id)) &&
                never((prev(game_state) == 0x07 && game_state == 0x10)) && never(game_state == 0x09) &&
                always_true()))
)

achievement(
    title = "Rap on the Knuckles", points = 2,
    description = "Beat Knuckles with Rouge without losing a single ring [Any Mode]",
    trigger =   level_id == levels["KNUCKLES_VS_ROUGE"] && 
                current_character == characters["ROUGE"] &&
                prev(flag_stage_clear) == 0x00 && trigger_when(flag_stage_clear == 0x01) &&
                unless(once(player_rings < prev(player_rings))) &&
                (always_false() || (never(level_id != prev(level_id)) &&
                never((prev(game_state) == 0x07 && game_state == 0x10)) && never(game_state == 0x09) &&
                always_true()))
)

achievement(
    title = "Shake a Tail Feather", points = 2,
    description = "Beat Tails with Dr Eggman during the second encounter without taking any damage [Any Mode]",
    trigger =   level_id == levels["TAILS_VS_EGG_MAN_2"] && 
                current_character == characters["EGGMAN_MECHA"] &&
                prev(flag_stage_clear) == 0x00 && trigger_when(flag_stage_clear == 0x01) &&
                unless(once(float_be(player_pointer + 0x000168) < prev(float_be(player_pointer + 0x000168)))) &&
                 (always_false() || (never(level_id != prev(level_id)) &&
                never((prev(game_state) == 0x07 && game_state == 0x10)) && never(game_state == 0x09) &&
                always_true()))
)

achievement(
    title = "Speed Dating", points = 2,
    description = "Beat Sonic with Shadow during the second encounter in less than 60 seconds [Any Mode]",
    trigger =   level_id == levels["SONIC_VS_SHADOW_2"] && 
                current_character == characters["SHADOW"] &&
                prev(flag_stage_clear) == 0x00 && trigger_when(flag_stage_clear == 0x01) &&
                unless(once(byte(0x1CC183) >= 0x01)) &&
                (always_false() || (never(level_id != prev(level_id)) &&
                never((prev(game_state) == 0x07 && game_state == 0x10)) && never(game_state == 0x09) &&
                always_true()))
)

//ZOOLOGIST CHALLENGES

achievement(
    title = "City Zoologist", points = 2,
    description = "In City Escape, find 20 hidden animals with Sonic (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 19 && 
              measured(player_hidden_animals == 20, when=level_id == levels["CITY_ESCAPE"]) &&
              current_character == characters["SONIC"]
)

achievement(
    title = "Canyon Zoologist", points = 2,
    description = "In Wild Canyon, find 10 hidden animals with Knuckles (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 9 && 
              measured(player_hidden_animals == 10, when=level_id == levels["WILD_CANYON"]) &&
              current_character == characters["KNUCKLES"]
)

achievement(
    title = "Prison Zoologist", points = 2,
    description = "In Prison Lane, find 15 hidden animals with Tails (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 14 && 
              measured(player_hidden_animals == 15, when=level_id == levels["PRISON_LANE"]) &&
              current_character == characters["TAILS_MECHA"]
)

achievement(
    title = "Harbor Zoologist", points = 2,
    description = "In Metal Harbor, find 20 hidden animals with Sonic (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 19 && 
              measured(player_hidden_animals == 20, when=level_id == levels["METAL_HARBOR"]) &&
              current_character == characters["SONIC"]
)

achievement(
    title = "Forest Zoologist", points = 2,
    description = "In Green Forest, find 20 hidden animals with Sonic (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 19 && 
              measured(player_hidden_animals == 20, when=level_id == levels["GREEN_FOREST"]) &&
              current_character == characters["SONIC"]
)

achievement(
    title = "Pumpkin Hill Zoologist", points = 2,
    description = "In Pumpkin Hill, find 10 hidden animals with Knuckles (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 9 && 
              measured(player_hidden_animals == 10, when=level_id == levels["PUMPKIN_HILL"]) &&
              current_character == characters["KNUCKLES"]
)

achievement(
    title = "Street Zoologist", points = 2,
    description = "In Mission Street, find 15 hidden animals with Tails (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 14 && 
              measured(player_hidden_animals == 15, when=level_id == levels["MISSION_STREET"]) &&
              current_character == characters["TAILS_MECHA"]
)

achievement(
    title = "Aquatic Zoologist", points = 2,
    description = "In Aquatic Mine, find 10 hidden animals with Knuckles (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 9 && 
              measured(player_hidden_animals == 10, when=level_id == levels["AQUATIC_MINE"]) &&
              current_character == characters["KNUCKLES"]
)

achievement(
    title = "Base Zoologist", points = 2,
    description = "In Hidden Base, find 15 hidden animals with Tails (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 14 && 
              measured(player_hidden_animals == 15, when=level_id == levels["HIDDEN_BASE"]) &&
              current_character == characters["TAILS_MECHA"]
)

achievement(
    title = "Pyramid Zoologist", points = 2,
    description = "In Pyramid Cave, find 20 hidden animals with Sonic (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 19 && 
              measured(player_hidden_animals == 20, when=level_id == levels["PYRAMID_CAVE"]) &&
              current_character == characters["SONIC"]
)

achievement(
    title = "Death Chamber Zoologist", points = 2,
    description = "In Death Chamber, find 10 hidden animals with Knuckles (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 9 && 
              measured(player_hidden_animals == 10, when=level_id == levels["DEATH_CHAMBER"]) &&
              current_character == characters["KNUCKLES"]
)

achievement(
    title = "Engine Zoologist", points = 2,
    description = "In Eternal Engine, find 15 hidden animals with Tails (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 14 && 
              measured(player_hidden_animals == 15, when=level_id == levels["ETERNAL_ENGINE"]) &&
              current_character == characters["TAILS_MECHA"]
)

achievement(
    title = "Meteor Zoologist", points = 2,
    description = "In Meteor Herd, find 10 hidden animals with Knuckles (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 9 && 
              measured(player_hidden_animals == 10, when=level_id == levels["METEOR_HERD"]) &&
              current_character == characters["KNUCKLES"]
)

achievement(
    title = "Gadget Zoologist", points = 2,
    description = "In Crazy Gadget, find 20 hidden animals with Sonic (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 19 && 
              measured(player_hidden_animals == 20, when=level_id == levels["CRAZY_GADGET"]) &&
              current_character == characters["SONIC"]
)

achievement(
    title = "Final Rush Zoologist", points = 2,
    description = "In Final Rush, find 20 hidden animals with Sonic (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 19 && 
              measured(player_hidden_animals == 20, when=level_id == levels["FINAL_RUSH"]) &&
              current_character == characters["SONIC"]
)

achievement(
    title = "Iron Gate Zoologist", points = 2,
    description = "In Iron Gate, find 15 hidden animals with Dr. Eggman (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 14 && 
              measured(player_hidden_animals == 15, when=level_id == levels["IRON_GATE"]) &&
              current_character == characters["EGGMAN_MECHA"]
)

achievement(
    title = "Lagoon Zoologist", points = 2,
    description = "In Dry Lagoon, find 10 hidden animals with Rouge (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 9 && 
              measured(player_hidden_animals == 10, when=level_id == levels["DRY_LAGOON"]) &&
              current_character == characters["ROUGE"]
)

achievement(
    title = "Ocean Zoologist", points = 2,
    description = "In Sand Ocean, find 15 hidden animals with Dr. Eggman (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 14 && 
              measured(player_hidden_animals == 15, when=level_id == levels["SAND_OCEAN"]) &&
              current_character == characters["EGGMAN_MECHA"]
)

achievement(
    title = "Highway Zoologist", points = 2,
    description = "In Radical Highway, find 20 hidden animals with Shadow (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 19 && 
              measured(player_hidden_animals == 20, when=level_id == levels["RADICAL_HIGHWAY"]) &&
              current_character == characters["SHADOW"]
)

achievement(
    title = "Egg Quarters Zoologist", points = 2,
    description = "In Egg Quarters, find 10 hidden animals with Rouge (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 9 && 
              measured(player_hidden_animals == 10, when=level_id == levels["EGG_QUARTERS"]) &&
              current_character == characters["ROUGE"]
)

achievement(
    title = "Colony Zoologist", points = 2,
    description = "In Lost Colony, find 15 hidden animals with Dr. Eggman (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 14 && 
              measured(player_hidden_animals == 15, when=level_id == levels["LOST_COLONY"]) &&
              current_character == characters["EGGMAN_MECHA"]
)

achievement(
    title = "Weapons Bed Zoologist", points = 2,
    description = "In Weapons Bed, find 15 hidden animals with Dr. Eggman (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 14 && 
              measured(player_hidden_animals == 15, when=level_id == levels["WEAPONS_BED"]) &&
              current_character == characters["EGGMAN_MECHA"]
)

achievement(
    title = "Security Hall Zoologist", points = 2,
    description = "In Security Hall, find 15 hidden animals with Dr. Eggman (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 14 && 
              measured(player_hidden_animals == 15, when=level_id == levels["SECURITY_HALL"]) &&
              current_character == characters["EGGMAN_MECHA"]
)

achievement(
    title = "Jungle Zoologist", points = 2,
    description = "In White Jungle, find 20 hidden animals with Shadow (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 19 && 
              measured(player_hidden_animals == 20, when=level_id == levels["WHITE_JUNGLE"]) &&
              current_character == characters["SHADOW"]
)

achievement(
    title = "Sky Zoologist", points = 2,
    description = "In Sky Rail, find 20 hidden animals with Shadow (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 19 && 
              measured(player_hidden_animals == 20, when=level_id == levels["SKY_RAIL"]) &&
              current_character == characters["SHADOW"]
)

achievement(
    title = "Space Zoologist", points = 2,
    description = "In Mad Space, find 10 hidden animals with Rouge (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 9 && 
              measured(player_hidden_animals == 10, when=level_id == levels["MAD_SPACE"]) &&
              current_character == characters["ROUGE"]
)

achievement(
    title = "Cosmic Zoologist", points = 2,
    description = "In Cosmic Wall, find 15 hidden animals with Dr. Eggman (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 14 && 
              measured(player_hidden_animals == 15, when=level_id == levels["COSMIC_WALL"]) &&
              current_character == characters["EGGMAN_MECHA"]
)

achievement(
    title = "Final Chase Zoologist", points = 2,
    description = "In Final Chase, find 20 hidden animals with Shadow (Blue Boxes excluded)",
    trigger = prev(player_hidden_animals) == 19 && 
              measured(player_hidden_animals == 20, when=level_id == levels["FINAL_CHASE"]) &&
              current_character == characters["SHADOW"]
)

//RACE CHALLENGES

achievement(
    title = "Beginner Race", points = 2,
    description = "Win the Beginner Race in Kart Mode and earn an emblem",
    trigger = word_be(0x3AD820) == 0x47 && byte(0x1CC21B) == 0x00 && dword_be(tbyte_be(0x1E2FB1) + 0x0001A0) == 0x01 &&
              prev(dword_be(tbyte_be(0x1E2FB1) + 0x0001A4)) == 0x02 && dword_be(tbyte_be(0x1E2FB1) + 0x0001A4) == 0x03
)

achievement(
    title = "Standard Race", points = 3,
    description = "Win the Standard Race in Kart Mode and earn an emblem",
    trigger = word_be(0x3AD820) == 0x47 && byte(0x1CC21B) == 0x01 && dword_be(tbyte_be(0x1E2FB1) + 0x0001A0) == 0x01 &&
              prev(dword_be(tbyte_be(0x1E2FB1) + 0x0001A4)) == 0x02 && dword_be(tbyte_be(0x1E2FB1) + 0x0001A4) == 0x03
)

achievement(
    title = "Expert Race", points = 5,
    description = "Win the Expert Race in Kart Mode and earn an emblem",
    trigger = word_be(0x3AD820) == 0x47 && byte(0x1CC21B) == 0x02 && dword_be(tbyte_be(0x1E2FB1) + 0x0001A0) == 0x01 &&
              prev(dword_be(tbyte_be(0x1E2FB1) + 0x0001A4)) == 0x02 && dword_be(tbyte_be(0x1E2FB1) + 0x0001A4) == 0x03
)

//TRICKY CHALLENGES
achievement(
    title = "Cool Boarder", points = 2,
    description = "Perform at least 2 Awesome snowboard tricks in City Escape [Any Mission]",
    trigger = never(level_id != prev(level_id)) &&
              level_id == 0xd &&
              repeated(2,
                  (prev(word_be(player_pointer + 0x296)) != 0x8E) && 
                   word_be(player_pointer + 0x296) == 0x8E) &&
              never((prev(game_state) == 0x07 && game_state == 0x10)) && 
              never(game_state == 0x09)
)

achievement(
    title = "Sick Speed", points = 1,
    description = "In City Escape, go at full speed for more than 30 seconds without slown down with Sonic [Any Mission]",
    trigger = never(word_be(0x3AD820) != prev(word_be(0x3AD820))) &&
              word_be(tbyte_be(0x1E7769) + 0x000296) == 0x0A &&
              measured(repeated(30,
                  byte(0x1CC184) != prev(byte(0x1CC184)) && never(word_be(tbyte_be(0x1E7769) + 0x000296) != 0x0A)),
                  when=word_be(0x3AD820) == 0x0D
              ) && byte(0x3AD82B) == 0x00
)

achievement(
    title = "Tarzan", points = 2,
    description = "Escape from Green Forest using only 4 jumps [Any Mission]",
    trigger = prev(byte(0x1CC1AA)) == 0x00 && trigger_when(byte(0x1CC1AA) == 0x01) && word_be(0x3AD820) == 0x03 &&
              byte(0x3AD82B) == 0x00 &&
              unless(repeated(5,
                  (prev(word_be(tbyte_be(0x1E7769) + 0x000296)) != 0x41) && word_be(tbyte_be(0x1E7769) + 0x000296) == 0x41)
              ) &&
              (always_false() || (never(word_be(0x3AD820) != prev(word_be(0x3AD820))) && never(byte(0x3AD81B) == 0x0D)))
)