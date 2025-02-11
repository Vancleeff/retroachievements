// Cardinal Syn
// #ID = 2926

map = byte(0x1e27c4)
cutscene = word(0x1dfcec)

P1_pointer = tbyte(0x1e2724)
P1_HP = word(tbyte(0x1e2724) + 0x000048)
P1_char = byte(0x1ee698)
P1_round_won = byte(0x1ee69c)
P1_consecutive_win = byte(0x1ee6d2)
P1_controls = byte(0x021864)
P1_current_animation = word(tbyte(tbyte(0x1E2724) + 0x0000AC) + 0x0000DC)

P2_pointer = tbyte(0x1e272c)
P2_HP = word(tbyte(0x1e272C) + 0x000048)
P2_char = byte(0x1ee6d0)
P2_round_won = byte(0x1ee6d4)
P2_consecutive_win = byte(0x1ee6d6)
P2_controls = byte(0x021865)
P2_current_animation = word(tbyte(tbyte(0x1e272c) + 0x0000AC) + 0x0000DC)

difficulty = byte(0x1e8888)
round_number = byte(0x1e888c)
hazards = byte(0x1e8896)
pickups = byte(0x1e8898)
magika = byte(0x1e9c90)
sword = byte(0x1f0bfa)


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

function GlobalFatalityChecks(){
    return 
        P1_HP > 0 &&
        prev(word(tbyte(tbyte(0x1E2724) + 0x0000AC) + 0x0000DC)) != 204 &&
        word(tbyte(tbyte(0x1E2724) + 0x0000AC) + 0x0000DC) == 204 &&
        round_number > 1 &&
        P1_round_won + 1 == round_number
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
    title = "Perfect", points = 1,
    description = "Win a round without taking any damage",
    trigger = 
    P1_HP == 400 && 
    prev(P2_HP) > 0 &&
    P2_HP == 0
)





achievement(
    title = "Mongoro Fatality", points = 2,
    description = "Finish an opponent with Mongoro, using a Fatality",
    trigger = 
        GlobalFatalityChecks() &&
        byte(0x1EE698) == 0
)

achievement(
    title = "Kahn Fatality", points = 2,
    description = "Finish an opponent with Kahn, using a Fatality",
    trigger = 
        GlobalFatalityChecks() &&
        byte(0x1EE698) == 1
)

achievement(
    title = "Plague Fatality", points = 2,
    description = "Finish an opponent with Plague, using a Fatality",
    trigger = 
        GlobalFatalityChecks() &&
        byte(0x1EE698) == 2
)

achievement(
    title = "Stygian Fatality", points = 2,
    description = "Finish an opponent with Stygian, using a Fatality",
    trigger = 
        GlobalFatalityChecks() &&
        byte(0x1EE698) == 3
)

achievement(
    title = "Vanguard Fatality", points = 2,
    description = "Finish an opponent with Vanguard, using a Fatality",
    trigger = 
        GlobalFatalityChecks() &&
        byte(0x1EE698) == 4
)

achievement(
    title = "Redemptor Fatality", points = 2,
    description = "Finish an opponent with Redemptor, using a Fatality",
    trigger = 
        GlobalFatalityChecks() &&
        byte(0x1EE698) == 5
)

achievement(
    title = "Finkster Fatality", points = 2,
    description = "Finish an opponent with Finkster, using a Fatality",
    trigger = 
        GlobalFatalityChecks() &&
        byte(0x1EE698) == 6
)

achievement(
    title = "Juni Fatality", points = 2,
    description = "Finish an opponent with Juni, using a Fatality",
    trigger = 
        GlobalFatalityChecks() &&
        byte(0x1EE698) == 7
)

achievement(
    title = "Heart Breaker", points = 2,
    description = "Finish an opponent with Orion, using a Fatality",
    trigger = 
        GlobalFatalityChecks() &&
        byte(0x1EE698) == 8
)

achievement(
    title = "Mongwan Fatality", points = 2,
    description = "Finish an opponent with Mongwan, using a Fatality",
    trigger = 
        GlobalFatalityChecks() &&
        byte(0x1EE698) == 9
)

achievement(
    title = "Hecklar Fatality", points = 2,
    description = "Finish an opponent with Hecklar, using a Fatality",
    trigger = 
        GlobalFatalityChecks() &&
        byte(0x1EE698) == 10
)

achievement(
    title = "Vodu Fatality", points = 2,
    description = "Finish an opponent with Vodu, using a Fatality",
    trigger = 
        GlobalFatalityChecks() &&
        byte(0x1EE698) == 11
)

achievement(
    title = "A Shot in the Arm", points = 2,
    description = "Finish an opponent with Nephra, using a Fatality",
    trigger = 
        GlobalFatalityChecks() &&
        byte(0x1EE698) == 12
)

achievement(
    title = "Bimorphia Fatality", points = 2,
    description = "Finish an opponent with Bimorphia, using a Fatality",
    trigger = 
        GlobalFatalityChecks() &&
        byte(0x1EE698) == 13
)

achievement(
    title = "The Executioner", points = 2,
    description = "Finish an opponent with McKrieg, using a Fatality",
    trigger = 
        GlobalFatalityChecks() &&
        byte(0x1EE698) == 14
)

achievement(
    title = "Molock Fatality", points = 2,
    description = "Finish an opponent with Molock, using a Fatality",
    trigger = 
        GlobalFatalityChecks() &&
        byte(0x1EE698) == 15
)

achievement(
    title = "Syn Fatality", points = 2,
    description = "Finish an opponent with Syn, using a Fatality",
    trigger = 
        GlobalFatalityChecks() &&
        byte(0x1EE698) == 16
)

achievement(
    title = "Kron Fatality", points = 2,
    description = "Finish an opponent with Kron, using a Fatality",
    trigger = 
        GlobalFatalityChecks() &&
        byte(0x1EE698) == 17
)