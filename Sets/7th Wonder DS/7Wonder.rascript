// 7 Wonders of the Ancient World
// #ID = 26390

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

//Check if the player is in the game and not on the Title Screen or the Credits. 
//It also checks if the player is not loading a save to prevent save exploits.
function InGame(){
    return InGame == 1
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

//Beat Rune Quest Achievements
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
       achievement("Rune Quest" + " " + stage + "-" + lvl,"Complete Rune Quest level " + stage + "-" + lvl, points, 
            BeatLvl(stage, lvl, 2)
       )
   }
}


//Leaderboards
function StartLvl(stage, lvl)
{
    return Stage == stage && Level == lvl
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

for stage in range(1, MaxStage) {
   for lvl in range(1, MaxLvl) {
       leaderboard(
        "Level " + stage + "-" + lvl,
        "Highest score on level " + stage + "-" + lvl,
        StartLvl(stage, lvl),
        GameOver == 0x1,
        EndLastMaze(maze),
        Score(),
        format = "VALUE",
        lower_is_better = false        
       )   
   }
}