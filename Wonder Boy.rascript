// Wonder Boy
// #ID = 10009

function Delta(mem) => prev(mem)

// 0x0128 Level
function Level() => byte(0x128)

// 0x0115 GameMode
// 01 = Title Screen
// 02 = Demo Mode
// 03 == Game Active
function GameMode() => byte(0x0115)

function IsInGame() => GameMode() == 0x3

// 0x016d Game FInish
// 080 = GOAL Reached
// 020 = Gmae Finished
function GoalState() => byte(0x016d)

function IsAtGoal() => GoalState() == 0x80

function Sound() => byte(0x0002)

function HammerKill() => Sound() == 0x9D


achievement(
    title = "THPS", description = "Obtain a Skateboard", points = 1,
    id = 0, badge = "59180", published = "", modified = "",
    trigger = Delta(bit2(0x0127)) == 0 && bit2(0x0127) == 1 && 
              IsInGame()              
)

achievement(
    title = "Hammer Time", description = "Obtain a Hammer", points = 1,
    id = 0, badge = "59178", published = "", modified = "",
    trigger = Delta(bit0(0x0127)) == 0 && bit0(0x0127) == 1 && 
              IsInGame()              
)

achievement(
    title = "Guardian Angl", description = "Obtain a Guardian Angel", points = 1,
    id = 0, badge = "75466", published = "", modified = "",
    trigger = Delta(bit1(0x0127)) == 0 && bit1(0x0127) == 1 && 
              IsInGame()              
)

achievement(
    title = "Playing With Dolls", description = "Obtain your first doll", points = 2,
    id = 0, badge = "59160", published = "", modified = "",
    trigger = Delta(byte(0x0130)) == 0 && byte(0x0130) == 1 && 
              IsInGame()              
)

achievement(
    title = "Walk With the Dead", description = "Reach GOAL with the Dead", points = 5,
    id = 0, badge = "76323", published = "", modified = "",
    trigger = bit3(0x0000) == 1 && 
              IsInGame() && IsAtGoal()          
)

achievement(
    title = "Doll Finder I", description = "Find 10 Dolls", points = 5,
    id = 0, badge = "59160", published = "", modified = "",
    trigger = Delta(byte(0x0130)) == 9 && measured(byte(0x0130) == 10) && 
              IsInGame() && Level() >= 9             
)

achievement(
    title = "Doll Finder II", description = "Find 20 Dolls", points = 10,
    id = 0, badge = "59160", published = "", modified = "",
    trigger = Delta(byte(0x0130)) == 19 && measured(byte(0x0130) == 20) && 
              IsInGame() && Level() >= 17             
)

achievement(
    title = "Doll Finder III", description = "Find 30 Dolls", points = 10,
    id = 0, badge = "59160", published = "", modified = "",
    trigger = Delta(byte(0x0130)) == 29 && measured(byte(0x0130) == 30) && 
              IsInGame() && Level() >= 26             
)
achievement(
    title = "Doll Collector", description = "Find All Dolls", points = 25,
    id = 0, badge = "59160", published = "", modified = "",
    trigger = Delta(byte(0x0130)) == 39 && measured(byte(0x0130) == 40) && 
              IsInGame() && Level() >= 39             
)