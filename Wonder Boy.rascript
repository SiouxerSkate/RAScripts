// Wonder Boy
// #ID = 10009

function Delta(mem) => prev(mem)

// 0x0128 Level
function Level() => byte(0x128)

function DeltaLevel() => prev(byte(0x128))

function WarpLevel() => byte(0x128) == 0x28

function Doll() => byte(0x0130)

function DeltaDoll() => prve(byte(0x0130))

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

function IsAtEnd() => GoalState() == 0x20

function Sound() => byte(0x0002)

function HammerKill() => Sound() == 0x91


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
    title = "Guardian Angel", description = "Obtain a Guardian Angel", points = 1,
    id = 0, badge = "75466", published = "", modified = "",
    trigger = Delta(bit1(0x0127)) == 0 && bit1(0x0127) == 1 && 
              IsInGame()              
)

achievement(
    title = "Wonder Milk", description = "Collect a bottle of milk", points = 2,
    id = 0, badge = "75465", published = "", modified = "",
    trigger = byte(0x0002) == 0x9D && IsInGame()          
)

achievement(
    title = "Multiple Pyschadelics", description = "Get the Multiplier Mushroom", points = 2,
    id = 0, badge = "75465", published = "", modified = "",
    trigger = Delta(bit3(0x0127)) == 0 && bit3(0x0127) == 1 && 
              IsInGame()       
)

achievement(
    title = "S-E-G-A", description = "Collect all Sega Letters", points = 5,
    id = 0, badge = "69517", published = "", modified = "",
    trigger = Delta(byte(0x0135)) == 3 && byte(0x0135) == 0 && 
              IsInGame()       
)

achievement(
    title = "Playing With Dolls", description = "Obtain your first doll", points = 2,
    id = 0, badge = "59160", published = "", modified = "",
    trigger = Delta(byte(0x0130)) == 0 && byte(0x0130) == 1 && 
              IsInGame()              
)

achievement(
    title = "Doll Finder I", description = "Find 10 Dolls", points = 5,
    id = 0, badge = "69583", published = "", modified = "",
    trigger = Delta(byte(0x0130)) == 9 && measured(byte(0x0130) == 10) && 
              IsInGame() && Level() >= 9             
)

achievement(
    title = "Doll Finder II", description = "Find 20 Dolls", points = 10,
    id = 0, badge = "69584", published = "", modified = "",
    trigger = Delta(byte(0x0130)) == 19 && measured(byte(0x0130) == 20) && 
              IsInGame() && Level() >= 17             
)

achievement(
    title = "Doll Finder III", description = "Find 30 Dolls", points = 10,
    id = 0, badge = "69585", published = "", modified = "",
    trigger = Delta(byte(0x0130)) == 29 && measured(byte(0x0130) == 30) && 
              IsInGame() && Level() >= 26             
)
achievement(
    title = "Doll Collector", description = "Find All Dolls", points = 25,
    id = 0, badge = "69586", published = "", modified = "",
    trigger = Delta(byte(0x0130)) == 39 && measured(byte(0x0130) == 40) && 
              IsInGame() && Level() >= 39             
)

achievement(
    title = "Walk With the Dead", description = "Reach GOAL with the Dead", points = 5,
    id = 0, badge = "76323", published = "", modified = "",
    trigger = bit3(0x0000) == 1 && byte(0x0012B) >= 254 &&
              byte(0x0012C) >= 31 && IsInGame()           
)

achievement(
    title = "Angelic GOAL", description = "Reach GOAL with Angel", points = 5,
    id = 0, badge = "76327", published = "", modified = "",
    trigger = bit1(0x0127) == 1 && byte(0x0012B) >= 254 &&
              byte(0x0012C) >= 31 && IsInGame()           
)

achievement(
    title = "X Games Winner", description = "Reach GOAL while riding a skateboard", points = 5,
    id = 0, badge = "69339", published = "", modified = "",
    trigger = bit2(0x0127) == 1 && IsInGame() &&
              IsAtGoal()
)

achievement(
    title = "Bronze Score", description = "Reach 50,000 Points", points = 1,
    id = 0, badge = "69587", published = "", modified = "",
    trigger = Delta(word(0x0122)) < 0x50 && word(0x0122) >= 0x50 &&
              IsInGame()
)

achievement(
    title = "Silver Score", description = "Reach 100,000 Points", points = 5,
    id = 0, badge = "69588", published = "", modified = "",
    trigger = Delta(word(0x0122)) < 0x100 && word(0x0122) >= 0x100 &&
              IsInGame()
)

achievement(
    title = "Gold Score", description = "Reach 250,000 Points", points = 10,
    id = 0, badge = "69589", published = "", modified = "",
    trigger = Delta(word(0x0122)) < 0x250 && word(0x0122) >= 0x250 &&
              IsInGame()
)

achievement(
    title = "Platinum Score", description = "Reach 500,000 Points", points = 25,
    id = 0, badge = "69590", published = "", modified = "",
    trigger = Delta(word(0x0122)) < 0x500 && word(0x0122) >= 0x500 &&
              IsInGame()
)

achievement(
    title = "The Eagle King", description = "Defeat the King of Area 1(No Level Skip)", points = 2,
    id = 0, badge = "76268", published = "", modified = "",
    trigger = Level() == 3 && IsAtGoal() &&
              IsInGame()
)

achievement(
    title = "The Rhino King", description = "Defeat the King of Area 2(No Level Skip)", points = 5,
    id = 0, badge = "76311", published = "", modified = "",
    trigger = Level() == 7 && IsAtGoal() &&
              IsInGame()
)

achievement(
    title = "The Demon King", description = "Defeat the King of Area 3(No Level Skip)", points = 5,
    id = 0, badge = "76312", published = "", modified = "",
    trigger = Level() == 11 && IsAtGoal() &&
              IsInGame()
)

achievement(
    title = "The Fire King", description = "Defeat the King of Area 4(No Level Skip)", points = 5,
    id = 0, badge = "76313", published = "", modified = "",
    trigger = Level() == 15 && IsAtGoal() &&
              IsInGame()
)

achievement(
    title = "The Cyclops King", description = "Defeat the King of Area 5(No Level Skip)", points = 5,
    id = 0, badge = "76314", published = "", modified = "",
    trigger = Level() == 19 && IsAtGoal() &&
              IsInGame()
)

achievement(
    title = "The Cat King", description = "Defeat the King of Area 6(No Level Skip)", points = 10,
    id = 0, badge = "76315", published = "", modified = "",
    trigger = Level() == 23 && IsAtGoal() &&
              IsInGame()
)

achievement(
    title = "The Elephant King", description = "Defeat the King of Area 7(No Level Skip)", points = 10,
    id = 0, badge = "76316", published = "", modified = "",
    trigger = Level() == 27 && IsAtGoal() &&
              IsInGame()
)

achievement(
    title = "The Blue King", description = "Defeat the King of Area 8(No Level Skip)", points = 10,
    id = 0, badge = "76317", published = "", modified = "",
    trigger = Level() == 31 && IsAtGoal() &&
              IsInGame()
)

achievement(
    title = "The Goat King", description = "Defeat the King of Area 9(No Level Skip)", points = 10,
    id = 0, badge = "76318", published = "", modified = "",
    trigger = Level() == 35 && IsAtGoal() &&
              IsInGame()
)

achievement(
    title = "The Tiger King", description = "Defeat Drancon in Area 10 and beat the game(No Level Skip)", points = 25,
    id = 0, badge = "76319", published = "", modified = "",
    trigger = Level() == 39 && IsAtGoal() &&
              IsInGame()
)

achievement(
    title = "The Hammer Is My Weapon", description = "Kill 500 Enemys with the Hammer", points = 25,
    id = 0, badge = "75985", published = "", modified = "",
    trigger = unless(GameMode() != 3) && measured(repeated(500, HammerKill())) &&
              IsInGame() && never(GameMode() == 1)
)

achievement(
    title = "Warp Purse", description = "Reach the Bonus level in Area 1", points = 3,
    id = 0, badge = "69288", published = "", modified = "",
    trigger = DeltaLevel() == 0 && WarpLevel() &&
              IsInGame()
)

achievement(
    title = "Warp Sunnies", description = "Reach the Bonus level in Area 2", points = 3,
    id = 0, badge = "69289", published = "", modified = "",
    trigger = DeltaLevel() == 6 && WarpLevel() &&
              IsInGame()
)

achievement(
    title = "Warp Watch", description = "Reach the Bonus level in Area 3", points = 3,
    id = 0, badge = "69290", published = "", modified = "",
    trigger = DeltaLevel() == 8 && WarpLevel() &&
              IsInGame()
)

achievement(
    title = "Warp Heart", description = "Reach the Bonus level in Area 4", points = 3,
    id = 0, badge = "69289", published = "", modified = "",
    trigger = DeltaLevel() == 0x0e && WarpLevel() &&
              IsInGame()
)

achievement(
    title = "Warp Shoes", description = "Reach the Bonus level in Area 5", points = 3,
    id = 0, badge = "69292", published = "", modified = "",
    trigger = DeltaLevel() == 0x12 && WarpLevel() &&
              IsInGame()
)

achievement(
    title = "Warp Ring", description = "Reach the Bonus level in Area 6", points = 3,
    id = 0, badge = "69293", published = "", modified = "",
    trigger = DeltaLevel() == 0x16 && WarpLevel() &&
              IsInGame()
)

achievement(
    title = "Warp Teddy", description = "Reach the Bonus level in Area 7", points = 3,
    id = 0, badge = "69294", published = "", modified = "",
    trigger = DeltaLevel() == 0x1a && WarpLevel() &&
              IsInGame()
)

achievement(
    title = "Warp Umbrella", description = "Reach the Bonus level in Area 8", points = 3,
    id = 0, badge = "69295", published = "", modified = "",
    trigger = DeltaLevel() == 0x1d && WarpLevel() &&
              IsInGame()
)

achievement(
    title = "Warp Perfume", description = "Reach the Bonus level in Area 9", points = 3,
    id = 0, badge = "69298", published = "", modified = "",
    trigger = DeltaLevel() == 0x20 && WarpLevel() &&
              IsInGame()
)

achievement(
    title = "Warp Socks", description = "Reach the Bonus level in Area 10", points = 3,
    id = 0, badge = "69300", published = "", modified = "",
    trigger = DeltaLevel() == 0x26 && WarpLevel() &&
              IsInGame()
)

achievement(
    title = "The End", description = "Finish the game with all dolls collected", points = 25,
    id = 0, badge = "76345", published = "", modified = "",
    trigger = Doll() == 40 && Level() == 0x27 &&
              IsInGame() && IsAtEnd()
)

achievement(
    title = "Super Wonderboy", description = "Finish the game with all dolls collected without a Game Over", points = 25,
    id = 0, badge = "76379", published = "", modified = "",
    trigger = Doll() == 40 && Level() == 0x27 &&
              IsInGame() && IsAtEnd()
              //pauseif one hit if lives ==0 and bit6(0x0120) == 1
              //resetif Game() == 1
)