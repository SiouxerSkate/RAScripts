// NBA Jam Tournament Edition
// #ID = 13205

////////////////Global Function Defintions///////////////
function QuarterIn() => byte(0xd5a0)

function GameTime() => word(0xd8cc)

function PlayingGame() => QuarterIn() > 0 && QuarterIn() <= 8 && GameTime() > 0

function HardMode() => byte(0xd06b) == 1 && byte(0xd06d) == 4 && byte(0xd06f) == 0

function Rank() => byte(0xd2f9)

function Wins() => byte(0xd2f6)

function NoLosses() => byte(0xd2f7) == 0

function TeamPoints() => word(0xd579)

function CpuPoints() => word(0xd57b)

function WinGame() => prev(GameTime()) > 0 && GameTime() == 0 && TeamPoints() > CpuPoints() && ( QuarterIn() == 4 || QuarterIn() == 5 || QuarterIn() == 6 || QuarterIn() == 7 || QuarterIn() == 8)

function TeamsBeaten(value) => prev(byte(0xd456)) == (value - 1) && byte(0xd456) == value
////////////////Stat Cheevo Defintions//////////////

/// Dictionary of Single Stats. key=Name of stat, value=list(Name of Cheevo, point value,  stat memory location, acquired value, extra string for description)
SingleStatLookup = {
    "Field Goals": ["Swish!", 1, byte(0xd958), 20, ""],
    "Dunks": ["Jams It In!", 1, byte(0xd95b), 20, ""],
    "Three Pointers": ["From Downtown!", 1, byte(0xd959), 20, ""],
    "Assists": ["Like A Good Neighboor", 1, byte(0xd95c), 20, ""],
    "Steals": ["Pocket Picker", 1, byte(0xd95d), 10, ""],
    "Blocks": ["Walled Up", 5, byte(0xd95e), 10, ""],
    "Rebounds": ["Getting Board", 1, byte(0xd95f), 10, ""]
}

function SingleStatCheevos()
{
    for key in SingleStatLookup
    {
        value_list = SingleStatLookup[key]
        title = value_list[0]
        number_of_stat = value_list[3]
        description = "Perform " + number_of_stat + " " + key + " as Player 1 in a single game"
        points = value_list[1]
        trigger = PlayingGame() && prev(value_list[2]) == (number_of_stat - 1) && value_list[2] == number_of_stat
        achievement(title, description, points, trigger)
     }
}
SingleStatCheevos()

achievement(title="True Triple Double", description="Have double digit points, 10 or more assists, and 10 or more rebounds as player 1 in one game", points=10, 
            trigger=PlayingGame() && byte(0xd95a) >= 10 && byte(0xd95c) >= 10 && byte(0xd95f) >= 10 && (prev(byte(0xd95a)) < 10 || prev(byte(0xd95c)) < 10 || prev(byte(0xd95f)) < 10)
            )

achievement(title="True Quadruple Double", description="Have double digit points, 10 or more steals, 10 or more assists, and 10 or more rebounds as player 1 in one game", points=25, 
            trigger=PlayingGame() && byte(0xd95a) >= 10 && byte(0xd95c) >= 10 && byte(0xd95d) >= 10 && byte(0xd95f) >= 10 && (prev(byte(0xd95a)) < 10 || prev(byte(0xd95c)) < 10 || prev(byte(0xd95d)) < 10 || prev(byte(0xd95f)) < 10)
            )

/// Dictionary of Dual Stats. key=Name of stat, value=list(Name of Cheevo, point value,  stat memory location-1, stat memory location-2, acquired value, extra string for description)
DualStatLookup = {
    "Dunks": ["Super Smash Bros", 5, byte(0xd95b), byte(0xd9db), 10, ""],
    "Three Pointers": ["Super Splash Bros", 5, byte(0xd959), byte(0xd9d9), 10, ""],
    "Steals": ["Super Slash Bros", 5, byte(0xd95d), byte(0xd9dd), 5, ""]
}

function DualStatCheevos()
{
    for key in DualStatLookup
    {
        value_list = DualStatLookup[key]
        title = value_list[0]
        number_of_stat = value_list[4]
        description = "Perform " + number_of_stat + " " + key + " as both Player 1 and Player 2 in a single game"
        points = value_list[1]
        trigger = PlayingGame() && value_list[2] >= number_of_stat && value_list[3] >= number_of_stat && (prev(value_list[2]) == number_of_stat -1 || prev(value_list[3]) == number_of_stat -1)
        achievement(title, description, points, trigger)
     }
}
DualStatCheevos()

////////////////Score Cheevo Defintions//////////////

/// Dictionary of Score Chevos. key=Name of Cheevo, value=list(Score vlaue, cheevo point value,  score memory location, extra string for description)
ScoreLookup = {
    "Scoring Drive": [50, 1, byte(0xd579), "as a team"],
    "Hi Scoring Game": [100, 5, byte(0xd579), "as a team"],
    "Unreal Game": [150, 10, byte(0xd579), "as a team"],
    "He's Heating Up": [25, 1, byte(0xd95a), "as player 1"],
    "One Man Team": [50, 5, byte(0xd95a), "as player 1"],
    "Ball God": [100, 10, byte(0xd95a), "as player 1"],
}

function ScoreCheevos()
{
    for key in ScoreLookup
    {
        value_list = ScoreLookup[key]
        title = key
        score_goal = value_list[0]
        description = "Score " + score_goal + " " + key + " in a game " + value_list[3]
        points = value_list[1]
        trigger = PlayingGame() && prev(value_list[2]) < score_goal && value_list[2] >= score_goal
        achievement(title, description, points, trigger)
     }
}
ScoreCheevos()

/// Dictionary of HotSpot Chevos. key=Name of Cheevo, value=list(Score vlaue, cheevo point value)
HotSpotLookup = {
    "Yes Points!": [4, 1],
    "Yes Points!!": [5, 1],
    "Yes Points!!!": [6, 1],
    "Yes Points!!!!": [7, 1],
    "Yes Points!!!!!": [8, 1],
    "Yes Points!!!!!!": [9, 1]
}

function HotSpotCheevos()
{
    for key in HotSpotLookup
    {
        value_list = HotSpotLookup[key]
        title = key
        score_goal = value_list[0]
        description = "Score " + score_goal + " from a hotspot"
        points = value_list[1]
        trigger = PlayingGame() && prev(byte(0xd95a)) == (byte(0xd95a) - score_goal)
        achievement(title, description, points, trigger)
     }
}
HotSpotCheevos()

///////////PowerUp Cheevos////////////
/// Dictionary of PowerUp Chevos. key=nmae of Powerup, value=list(name of Cheevo, memory location)
PowerUpLookup = {
    "3s": ["Splash It Up", bit6(0xd966)],
    "D": ["OH MY!", bit4(0xd966)],
    "S": ["Juice Mode", bit3(0xd967)],
    "P": ["Brute Force", bit7(0xd966)],
    "T": ["Turbo Time", bit0(0xd967)],
    "F": ["He's On Fire?", bit5(0xd966)],
    "B": ["Flatten the Court", bit0(0xd959)]
}

function PowerUpCheevos()
{
    for key in PowerUpLookup
    {
        value_list = PowerUpLookup[key]
        title = value_list[0]
        description = "Obtain the " + key + " Powerup"
        points = 1
        trigger = PlayingGame() && prev(value_list[1]) == 0 && value_list[1] == 1
        achievement(title, description, points, trigger)
     }
}
PowerUpCheevos()

///////////////////Game Play Cheevos///////////////////
achievement(title="He's On Fire!", description="As player1 get on fire with Tournament mode turned on and Drone Skill set to 5", points=1, 
            trigger=PlayingGame() && HardMode() && byte(0xd5c8) == 1 && prev(byte(0xd5c8)) == 0
            )
            
achievement(title="Boomshakalaka!", description="Win a game", points=1, 
            trigger=WinGame()
            )
 
 achievement(title="Juiced Up", description="Win a game with Juice Mode set to 4", points=1, 
            trigger=WinGame() && byte(0xd071) == 4
            )           

achievement(title="Razzle Dazzle!", description="Get to Rank 1", points=10, 
            trigger=WinGame() && prev(Rank()) > 1 && Rank() == 1
            )
            
achievement(title="On Top Of the World", description="Get to Rank 1 with an account that is undefeated with Tournament mode turned on and Drone Skill set to 5", points=25, 
            trigger=HardMode() && WinGame() && prev(Rank()) > 1 && Rank() == 1 && NoLosses()
            )
            
achievement(title="Divison Leader", description="Beat 10 of the NBA Teams", points=5, 
            trigger=WinGame() && TeamsBeaten(10)
            )
            
achievement(title="Conference Leader", description="Beat 20 of the NBA Teams", points=10, 
            trigger=WinGame() && TeamsBeaten(20)
            )
            
achievement(title="NBA Champion", description="Beat all of the NBA Teams", points=25, 
            trigger=WinGame() && TeamsBeaten(27)
            )
            
achievement(title="True NBA Champion", description="Beat all of the NBA Teams with an account that is undefeated with Tournament mode turned on and Drone Skill set to 5", points=50, 
            trigger=HardMode() && WinGame() && NoLosses() && TeamsBeaten(27)
            )
            

