// Castlevania: Aria of Sorrow [Subset - NOSOUL_NOUSE]
// #ID = 22865

//////FUNCTION DECLARATION/////////
function InSubset() => bit4(0x008346) == 1 && bit5(0x008346) == 1 && byte(0x008010) == 4
function CheatLock() => InSubset() && byte(0x01b2ca) == 0 && byte(0x01b2cd) == 0 && byte(0x01b2fe) == 0
function BitChange(mem) => prev(mem) == 0 && mem == 1
function TriggerBitChange(mem) => prev(mem) == 0 && trigger_when(mem == 1)
function SomaLevelUp(value) => prev(byte(0x01B279)) < value && byte(0x01B279) == value
function HardMode() => upper(0x080A1) == 0x16
function DamageTaken() => prev(word(0x1b27a)) > word(0x1b27a)
function MapID() => word(0x809e)


/////BOSS and SINGLE SOUL CHEEVOS////////

///Dict for Boss/Soul Bits. Key - Name, value - list with bit mem, location, Name of Cheevo, points, damagless points, damageless title, map_id/area_idea, level_cap]
StuffLookup = {
    "Creaking Skull" : [bit1(0x01B3A4), "Castle Corridor", "Croaking Creaker", 1, 1, "Inside the Skull", 0x0a00, 3],
    "Manticore" : [bit6(0x01B3A6), "Chapel", "Holy Beast", 1, 1, "Count of Manticoro", 0x0601, 8],
    "Great Armor" : [bit4(0x01B3A7), "Study", "Armor Study", 1, 1, "A Great Escapade", 0x0f02, 12],
    "Big Golem" : [bit5(0x01B3A8), "Dance Hall", "Dance of the Golem", 1, 5, "Bigger They Are", 0x1303, 15],
    "Headhunter" : [bit2(0x01B3AD), "Inner Quarters", "Inner Hunter", 1, 5, "Good Head On Your Shoulders", 0x0b04, 18],
    "Death" : [bit3(0x01B3AD), "Clock Tower", "Its Time to Die", 5, 10, "Dont Fear the Reaper", 0x0706, 25],
    "Legion" : [bit4(0x01B3AD), "Underground Cemetery", "Legion of Souls", 5, 10, "Underground Cremains", 0x2507, 28],
    "Balore" : [bit5(0x01B3AD), "Arena", "Going Rounds", 5, 10 , "Arena TKO", 0x108, 32],
    "Graham" : [bit7(0x01B3AD), "Top Floor", "Top of the Morning", 1, 10, "Missionary Man", 0x0409, 40],
    "Julius" : [bit6(0x01B3AD), "Floating Garden", "Belmont Beater", 5, 10, "Kill the Vampire Killer", 0x0605, 45],
    "Grave Keeper" : [bit1(0x008360), "", "Back Dashery", 1],
    "Malphas" : [bit3(0x008360), "", "Crow Headed", 1],
    "Skeleton Blaze" : [bit4(0x008360), "", "Blaze the Nugz", 1],
    "Galamoth" : [bit1(0x008361), "", "10,000 Year Plan", 1],
    "Kicker Skeleton" : [high4(0x01B393), "", "Kicky Kicky Boom Boom", 1],
    "Hippogryph" : [bit5(0x008360), "", "Take to the Skies", 1],
}

function StuffCheevs()
{
    for key in StuffLookup
    {
        value_list = StuffLookup[key]
        title = value_list[2]
        if value_list[1] == ""
            description = "Acquire the " + key + " Soul"
        else
            description = "Defeat " + key + " in the " + value_list[1]
        points = value_list[3]
        trigger= BitChange(value_list[0]) && CheatLock()
        achievement(title, description, points, trigger)
        ///Below is for Damagless Boss Cheevos
        if value_list[1] != ""
        {
            title = value_list[5]
            points = value_list[4]
            description = "Defeat " + key + " in the " + value_list[1] + " without taking damage(LVL <=" + value_list[7] + ")"
            trigger= TriggerBitChange(value_list[0]) && CheatLock() && byte(0x01B279) <= value_list[7] && disable_when(DamageTaken(), until=(MapID() != value_list[6]))
            achievement(title, description, points, trigger)
        }
    }    
}
StuffCheevs()

///Also this doesnt do what I want so dont update local
achievement("Chaos Damagless", "Defeat Chaos without taking damage(LVL <= 53)", 25, 
            trigger=TriggerBitChange(bit0(0x01b3ae)) && once(MapID() == 0xb0b) &&
                    byte(0x01B279) <= 55 &&	
                    CheatLock() && unless(once(DamageTaken()) ||
                    (never(MapID() == 0x0d0b)) || (never(byte(0x00809e) != 0x0b))))
                    

/////ENDING CHEEVOS////////////////
////RATools doesnt like this below for some reason....Need to talk to Jamiras
///Dict for ending. Key - type, value - list with room id, prior room id, Cheevo Title, points, hard mode bool, descrition
EndingLookup = {
    "Normal": [0x8522c54, 0x851fd70, "What a Beautiful Night to Have an Eclipse", 5, false, "Normal"],
    "Normal-hard": [0x8522c54, 0x851fd70, "What a Horrible Night to Have an Eclipse", 10, true, "Normal"],
    "Best": [0x8522c54, 0x852362c, "Qwell the Chaos", 10, false, "Best"],
    "Best-Hard": [0x8522c54, 0x852362c, "Chaotic Neutral", 25, true, "Best"],
}

function Endings()
{
    for key in EndingLookup
    {
        value_list = EndingLookup[key]
        title = value_list[2]
        points = value_list[3]
        mode = ""
        if value_list[4] == true
        {
            mode = " on Hard mode"
            trigger = byte(0x01B266) == 0 && 
                      low4(0x0080A1) == 0 && 
                      once(prior(dword(0x008088)) == value_list[1]) && 
                      once(dword(0x008088) == value_list[0]) &&
                      byte(0x008010) == 6 &&
                      byte(0x0080A1) == 16 && 
                      CheatLock() &&
                      never(prev(dword(0x008088)) != value_list[0])
        }
        else
        {
            trigger = byte(0x01B266) == 0 && 
                      once(prior(dword(0x008088)) == value_list[1]) && 
                      once(dword(0x008088) == value_list[0]) &&
                      byte(0x008010) == 6 && 
                      CheatLock() &&
                      never(prev(dword(0x008088)) != value_list[0])            
        }
        description = "View the game's " + value_list[5] + " ending scene" + mode
        achievement(title, description, points, trigger) 

    }
}

Endings()

////Level Cheevos

////Dict for levels. Key - level to reach(string), val - list with , level to reach int, points, and title
LevelLookup = {
    "10": [10, 1, "Corpse Without a Soul"],
    "25": [25, 5, "Give Me your Soul...Please"],
    "50": [50, 10, "Soulless Nights"]
}

function Levels()
{
    for key in LevelLookup
    {
        value_list = LevelLookup[key]
        title = value_list[2]
        points = value_list[1]
        level = value_list[0]
        description = "Reach level " + key
        trigger = CheatLock() && byte(0x008010) == 4 && byte(0x01B279) >= level &&
                  (prev(byte(0x01B279)) == level - 3 || prev(byte(0x01B279)) == level - 2 || prev(byte(0x01B279)) == level - 1)
        achievement(title, description, points, trigger) 
    }
}
Levels()

////Misc Cheevos

achievement("No Changing Places", "Kill an Iron Golem", 10, 
            trigger=BitChange(bit5(0x1b3ac)) && CheatLock())
            
achievement("Quite the Rush", "Complete Boss Rush Mode", 5, 
            trigger=CheatLock() && 
                    byte(0x008010) == 4 &&
                    byte(0x01B266) == 0 &&
                    byte(0x0084cc) == 0x11 &&
                    prev(bit2(0x00842d)) == 0 &&
                    bit2(0x00842d) == 1)
                    
            
