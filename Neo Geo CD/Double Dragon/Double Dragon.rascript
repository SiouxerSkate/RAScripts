// Double Dragon
// #ID = 23834


///Functions

function CharSelected() => byte(0x0445)
function DeltaChar()=> prev(byte(0x0445))
function EnemyFighting() => byte(0x0545)
function LevelId() => byte(0x2267)
function GameState() => byte(0x8f84)
function TimerValue() => byte(0x2242)
function TimerReset() => word(0x2242) == 0
function PauseIfContinue() => diable_when(byte(0x0455) != 0, TimerReset())
function Difficulty() => byte(0x8f75)
function ChargeSettings() => byte(0x8f7D)
function Handicap() => byte(0x8F81)
function Defaults() => byte(0x8f77) == 1 && byte(0x8f79) == 1 && ChargeSettings() == 1 && Handicap() == 0x06
function KOEnemy() =>  prev(byte(0x0550)) < 0x68 && byte(0x0550) >= 0x68
function PlayerKO() => prev(byte(0x0450)) < 0x68 && byte(0x0450) >= 0x68
function WinTwoRounds() => prev(byte(0x2294)) == 0x01 && byte(0x2294) == 0x02
function BiosProtection() => dword(0xfe30) == 0
function Timer() => byte(0x2242)
function Rounds() => byte(0x8f77)
 
PlayerLookup = {
    0x00: "Billy",
    0x01: "Billy(Charged)",
    0x02: "Jimmy",
    0x03: "Jimmy(Charged)",
    0x04: "Marian",
    0x05: "Abobo",
    0x06: "Amon",
    0x07: "Eddie",
    0x08: "Rebecca",
    0x09: "Dulton",
    0x0A: "Cheng-Fu",
    0x0B: "Burnov",
    0x0C: "Duke",
    0x0D: "Shuko",
}

DifficultLookup ={
    0x00: "Easy",
    0x01: "Normal",
    0x02: "Hard",
    0x03: "MVS",
}

rich_presence_conditional_display(GameState() == 0xFF, "At Title Screen")

rich_presence_display("'{0}' is fighting {1}, Points: {2}{3}{4}00, Difficulty: {5}",
    rich_presence_lookup("P1", CharSelected(), PlayerLookup),
    rich_presence_lookup("P2", EnemyFighting(), PlayerLookup),
    rich_presence_value("Points1", byte(0x0452)),
    rich_presence_value("Points2", byte(0x0452 + 1)),
    rich_presence_value("Points3", byte(0x0452 + 2)),
    rich_presence_lookup("Difficulty", Difficulty(), DifficultLookup)
)

PlayerDict = {
    "Billy":    [[0x00, 0x01], "Master's Prized Pupil", "Sou-Setsu-Ken"],
    "Jimmy":    [[0x02, 0x03], "Second Student", "Hu Hu Hu"],
    "Marian":   [[0x04], "Medal Seller", "Moon Drive Technique"],
    "Abobo":    [[0x05], "The New Dark Master", "Diner of Dinos"],
    "Amon":     [[0x06], "Thunderous Sounds", "Light From Above"],
    "Eddie":    [[0x07], "Evil Empire", "King Among Kings"],
    "Rebecca":  [[0x08], "Combative Daughter", "Little Bit of Fight"],
    "Dulton":   [[0x09], "Strength of Man", "Search For Worth"],
    "Cheng-Fu": [[0x0A], "Drunk Master", "200 Drinks More"],
    "Burnov":   [[0x0B], "Muscle Bomber Man", "Atomic Death March"],
    "Duke":     [[0x0C], "Dark Apprentice", "A New Reign"],
    "Shuko":    [[0x0D], "Dark Master", "Path of a Fool"],
}

function BeatAllChars()
{
    trigger = always_true()
    for i in range(0, 0x0C)
    {
        if i == 1
        {
            trigger = trigger && always_true()
        }
        else if i == 3
        {
            trigger = trigger && always_true()
        }
        else
        {
            trigger = trigger && once(EnemyFighting() == i)
        }
    }
    return trigger
}

function BeatGame()
{
    for i in range(0, 1)
    {
        for key in PlayerDict
        {
            value_list = PlayerDict[key]
            if i == 0
            {
                description_extend = " on any difficulty"
                difficulty_trigger = Difficulty() >= 0x0
                points = 5
                title = value_list[1]
            }
            else
            {
                description_extend = " on Hard difficulty"
                difficulty_trigger = Difficulty() == 0x02
                points = 10
                title = value_list[2]
            }
            description = "Beat the game as " + key + description_extend + "(Default Handicap, Two Rounds)"
            char_trigger = always_false()
            for j in value_list[0]
            {
                char_trigger = char_trigger || CharSelected() == j
            }
            trigger = BiosProtection() && never(GameState() == 0xFF) && EnemyFighting() == 0x0D && WinTwoRounds() && 
                      difficulty_trigger && Handicap() == 0x06 && BeatAllChars() && unless(EnemyFighting() < 0x0D && prev(Timer()) == 0xFF) && char_trigger
            achievement(title=title, description=description, points=points, trigger=trigger) 
        }
    }
}

BeatGame()

achievement(title="Arcade Mode!", description="Beat the Game on MVS Difficulty with any character(Default Handicap settings, Two Rounds)", points=25, 
            trigger=BiosProtection() && EnemyFighting() == 0x0D && WinTwoRounds() && Difficulty() == 0x03 && Handicap() == 0x06 && BeatAllChars()
                    && never(GameState() == 0xFF) && unless(prev(Timer()) == 0xFF))

achievement(title="True Dragon", description="Beat the Game on Normal or higher without using continues(Default Handicap settings, Two Rounds)", points=25, 
            trigger=BiosProtection() && GameState() != 0xFF && EnemyFighting() == 0x0D && WinTwoRounds() && Difficulty() > 0 && byte(0x0455) == 0 && Handicap() == 0x06)
            
achievement(title="No Need For Hospital", description="Beat the Game on Normal or higher with full tilted handicap against Player with any character(Two Rounds)", points=25, 
            trigger=BiosProtection() && EnemyFighting() == 0x0D && WinTwoRounds() && Difficulty() > 0 && Handicap() == 0 && BeatAllChars()
                    && never(GameState() == 0xFF) && unless(prev(Timer()) == 0xFF))

achievement(title="I Need More", description="Beat the Game on Normal or higher in no charge game mode(Default Handicap settings, Two Rounds)", points=10, 
            trigger=BiosProtection() && GameState() != 0xFF && EnemyFighting() == 0x0D && WinTwoRounds() && Difficulty() > 0 && byte(0x8f7d) == 1 && Handicap() == 0x06)
            

achievement(title="Double Dragon?", description="Get a Double KO to happen during a fight(Default Handicap Settings)", points=5, 
            trigger=BiosProtection() && GameState() != 0xFF && EnemyFighting() <= 0x0D && KOEnemy() && PlayerKO() && Handicap() == 0x06)

achievement(title="Make the Master Happy", description="KO any character without taking damage on normal mode or higher(Default Handicap settings)", points=5, 
            trigger=BiosProtection() && GameState() != 0xFF && EnemyFighting() <= 0x0D && KOEnemy() && byte(0x0450) == 0 && Handicap() == 0x06)


achievement(title="Play That Jazz", description="Enter Charge mode as Billy or Jimmy", points=1, 
            trigger=BiosProtection() && GameState() != 0xFF && EnemyFighting() <= 0x0D && 
            (always_false() || (DeltaChar() == 0 && CharSelected() == 1) || (DeltaChar() == 2 && CharSelected() == 3)))
            
achievement(title="Medal Searching", description="Win your first fight", points=1, 
            trigger=BiosProtection() && GameState() != 0xFF && EnemyFighting() <= 0x0D && CharSelected() <= 0x0D && WinTwoRounds())
            
achievement(title="Size Matters", description="Change Your Character's Size", points=1, 
            trigger=BiosProtection() && GameState() != 0xFF && EnemyFighting() <= 0x0D && CharSelected() <= 0x0D && 
            Timer() > 0 && Timer() < 0x99 && prev(byte(0x0441)) == 0x00 && byte(0x0441) > 0)
            
achievement(title="Tiny Dragon", description="KO Shuko(any round) while being as small as possible", points=5, 
            trigger=BiosProtection() && GameState() != 0xFF && EnemyFighting() == 0x0D && CharSelected() <= 0x0D && KOEnemy() && byte(0x0441) == 0xC0)
            
            
            
            
            
            
            
            
