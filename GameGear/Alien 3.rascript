// Alien 3
// #ID = 24340

function Level() => byte(0x0423)
function DeltaLevel() => prev(byte(0x0423))
function Humans() => byte(0x04c1)
function Tries() => byte(0x0424)
function LevelStarted0() => byte(0x040a) == 0
function NotDemo() => byte(0x040d) != 2
function Points() => byte(0x0434) * 10000 + 
                     byte(0x0435) * 1000 + 
                     byte(0x0436) * 100 +
                     byte(0x0437) * 10 +
                     byte(0x0438)
function TimeCalc() => byte(0x0479) * 60 + byte(0x478)
function TookDamage() => prev(byte(0x046a)) > byte(0x046a)

//LevelLookup = Level Name for description, Name of prog cheevo, points for prog, level value, description for prog, prog cheevo type, 
//              points no tries used, name no tries used, points time attack cheev, Name time attack cheev, time minutes, time seconds, no damage flag
LevelLookup = [
    ["Level 1", "Prison I", 1, 0, "Complete ", "progression", 0, "", 10, "Time Attack I", 2, 0, 0],
    ["Level 2", "Prison II", 1, 1, "Complete ", "progression", 0, "", 10, "Time Attack II", 2, 30, 0],
    ["Level 3", "Prison III", 1, 2, "Complete ", "progression", 0, "", 10, "Time Attack III", 2, 25, 0],
    ["Prison Guardian", "Jail Break", 5, 3, "Beat the ", "progression", 10, "Jailer Failure", 5, "Upset the Order", 1, 0, 1],
    ["Level 4", "Slaughterhouse I", 5, 4, "Complete ", "progression", 0, "", 10, "Time Attack IV", 3, 30, 0],
    ["Level 5", "Slaughterhouse II", 5, 5, "Complete ", "progression", 0, "", 10, "Time Attack V", 3, 30, 0],
    ["Level 6", "Slaughterhouse III", 5, 6, "Complete ", "progression", 0, "", 10, "Time Attack VI", 3, 30, 0],
    ["Slaughterhouse Guardian", "Beat the Meat", 10, 7, "Beat the ", "progression", 10, "Butcher Torcher", 5, "Ripple the Water", 1, 0, 1],
    ["Level 7", "Factory I", 5, 8, "Complete ", "progression", 0, "", 10, "Time Attack VII", 4, 00, 0],
    ["Level 8", "Factory II", 5, 9, "Complete ", "progression", 0, "", 10, "Time Attack VIII", 3, 45, 0],
    ["Level 9", "Factory III", 5, 10, "Complete ", "progression", 0, "", 10, "Time Attack IX", 4, 0, 0],
    ["Factory Guardian", "Break Is Over", 10, 11, "Beat the ", "progression", 25, "Boss Toss", 5, "Give Them Ideas", 2, 0, 1],
    ["Level 10", "Hive I", 5, 12, "Complete ", "progression", 0, "", 10, "Time Attack X", 4, 30, 0],
    ["Level 11", "Hive II", 5, 13, "Complete ", "progression", 0, "", 10, "Time Attack XI", 4, 0, 0],
    ["Level 12", "Hive II", 5, 14, "Complete ", "progression", 0, "", 10, "Time Attack XII", 4, 15, 0],
    ["Hive Guardian", "Infest the Nest", 10, 15, "Beat the ", "progression", 25, "Cream the Queen", 5, "Walk Of a Woman", 1, 30, 1],
    ["Level 13", "Foundry I", 5, 16, "Complete ", "progression", 0, "", 10, "Time Attack XIII", 5, 0, 0],
    ["Level 14", "Foundry II", 5, 17, "Complete ", "progression", 0, "", 10, "Time Attack XIV", 3, 45, 0],
    ["Level 15", "Foundry III", 5, 18, "Complete ", "progression", 0, "", 10, "Time Attack XV", 4, 30, 0],
    ["Game", "Mission Complete", 25, 19, "Beat the Final Guardian and Complete the ", "win_condition", 50, "Ripley's Believe It Or Not", 0, "", 0, 0, 0],
]

function LevelCheevo()
{
    level = 0
    next_level = 1
    for i in LevelLookup
    {
        title = i[1]
        description = i[4] + i[0]
        points = i[2]
        trigger = Level() == next_level && DeltaLevel() == level && LevelStarted0() && NotDemo()
        achievement(title, description, points, trigger, type=i[5])
        
        start = Level() == level && NotDemo() && Tries() > 0
        cancel = Tries() == 0
        submit = Level() == next_level && DeltaLevel() == level
        leader_title = i[0]
        if leader_title == "Game"
        {
            leader_title = "Foundry Guardian"
        }
        leader_desc = "Finish " + leader_title + " as fast as possible!"
        leaderboard(leader_title + " Speed Run", leader_desc,  start, cancel, submit, TimeCalc(), format="SECS", lower_is_better=false, id=0)
        if i[6] > 0
        {
            title_2 = i[7]
            description_2 = description + " without using continues up to that point"
            points_2 = i[6]
            trigger_2 = trigger_when(Level() == next_level) && trigger_when(DeltaLevel() == level) && 
                        LevelStarted0() && NotDemo() && 
                        disable_when(prev(Tries()) > Tries(), until=Level() == 0)
            achievement(title_2, description_2, points_2, trigger_2, type="missable")       
        }
        if i[8] > 0
        {
            title_3 = i[9]
            no_damage_desc_add = ""
            trigger_3_add = always_true()
            if i[12] > 0
            {
                no_damage_desc_add = " without taking damage"
                trigger_3_add = disable_when(TookDamage(), until=DeltaLevel() != level)
            }
            description_3 = description + " with " + i[10] + "m" + i[11]+ "s or more left on the clock" + no_damage_desc_add
            points_3 = i[8]
            trigger_3 = trigger_when(Level() == next_level) && DeltaLevel() == level &&
                        NotDemo() && TimeCalc() >= (i[10] * 60 + i[11]) && trigger_3_add
            achievement(title_3, description_3, points_3, trigger_3, type="missable")
            
        }
        level = level + 1
        next_level = next_level + 1

    }
}

LevelCheevo()

PointsLookup = {
    "Do What You Do": [10000, 5, ],
    "Don't Be Afraid": [25000, 10, ],
    "I'm Part Of the Family": [50000, 25, ],
}

function PointCheevos()
{
    for key in PointsLookup
    {
        value_list = PointsLookup[key]
        title = key
        description = "Earn " + value_list[0] + " or more points"
        points = value_list[1]
        trigger = Level() > 0 && NotDemo() && Points() >= value_list[0]
        achievement(title, description, points, trigger)
    }
}

PointCheevos()


start = Level() == 0 && NotDemo() && LevelStarted0() && Tries() > 0
cancel = Tries() == 0
submit = Level()==20 && DeltaLevel() == 19
leaderboard("High Score", "Complete the Game with highest score!",  start, cancel, submit, Points(), format="POINTS", lower_is_better=false, id=0)




