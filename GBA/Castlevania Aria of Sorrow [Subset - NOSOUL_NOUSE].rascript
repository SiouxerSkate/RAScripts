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

///Dict for Boss/Soul Bits. Key - Name, value - list with bit mem, location, Name of Cheevo, points, damagless points, damageless title, map_id/area_idea]
StuffLookup = {
    "Creaking Skull" : [bit1(0x01B3A4), "Castle Corridor", "Creaking Skull Name", 1, 1, "Creaking Skull Damagless Name", 0x0a00],
    "Manticore" : [bit6(0x01B3A6), "Chapel", "Manticore Name", 1, 1, "Manticore Damageless Name", 0x0601],
    "Great Armor" : [bit4(0x01B3A7), "Study", "Great Armor Name", 1, 1, "Great Armor Damageless Name", 0x0f02],
    "Big Golem" : [bit5(0x01B3A8), "Dance Hall", "Big Golem Name", 1, 5, "Big Golem Damageless Name", 0x1303],
    "Headhunter" : [bit2(0x01B3AD), "Inner Quarters", "Headhunter Name", 1, 5, "Headhunter Damageless Name", 0x0b04],
    "Death" : [bit3(0x01B3AD), "Clock Tower", "Death Name", 5, 10, "Death Damageless Name", 0x0706],
    "Legion" : [bit4(0x01B3AD), "Underground Cemetery", "Legion Name", 5, 10, "Legion Damageless Name", 0x2507],
    "Balore" : [bit5(0x01B3AD), "Arena", "Balore Name", 5, 10 , "Balore Damagele ssName", 0x108],
    "Graham" : [bit7(0x01B3AD), "Top Floor", "Graham Name", 1, 10, "Graham Damageless Name", 0x0409],
    "Julius" : [bit6(0x01B3AD), "Floating Garden", "Julius Name", 5, 10, "Julius Damageless Name", 0x0605],
    "Grave Keeper" : [bit1(0x008360), "", "Grave Keeper Name", 1],
    "Malphas" : [bit3(0x008360), "", "Malphas Name", 1],
    "Skeleton Blaze" : [bit4(0x008360), "", "Skeleton Blaze Name", 1],
    "Galamoth" : [bit1(0x008361), "", "Galamoth Name", 1],
    "Kicker Skeleton" : [high4(0x01B393), "", "Kicker Skeleton Name", 1],
    "Hippogryph" : [bit5(0x008360), "", "Hippogryph Name", 1],
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
            description = "Defeat " + key + " in the " + value_list[1] + " without taking damage"
            trigger= TriggerBitChange(value_list[0]) && CheatLock() && disable_when(DamageTaken(), until=(MapID() != value_list[6]))
            achievement(title, description, points, trigger)
        }
    }    
}
StuffCheevs()

///Also this doesnt do what I want so dont update local
achievement("Chaos Damagless", "Defeat Chaos without taking damage", 50, 
            trigger=TriggerBitChange(bit0(0x01b3ae)) && once(MapID() == 0xb0b) && 
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
            
achievement("To my side, my noble Einherjar!", "Obtain all possible souls", 50, 
            trigger=CheatLock() && never(byte(0x008010) != 4) && measured(tally(35,
                  once((high4(0x01B31C) + high4(0x01B338)) >= 1), 
                  once((low4(0x01B31C) + low4(0x01B338)) >= 1), 
                  once((high4(0x01B31D) + high4(0x01B339)) >= 1), 
                  once((low4(0x01B31D) + low4(0x01B339)) >= 1), 
                  once((high4(0x01B31E) + high4(0x01B33A)) >= 1), 
                  once((low4(0x01B31E) + low4(0x01B33A)) >= 1), 
                  once((high4(0x01B31F) + high4(0x01B33B)) >= 1), 
                  once((low4(0x01B31F) + low4(0x01B33B)) >= 1), 
                  once((high4(0x01B320) + high4(0x01B33C)) >= 1), 
                  once((low4(0x01B320) + low4(0x01B33C)) >= 1), 
                  once((high4(0x01B321) + high4(0x01B33D)) >= 1), 
                  once((low4(0x01B321) + low4(0x01B33D)) >= 1), 
                  once((high4(0x01B322) + high4(0x01B33E)) >= 1), 
                  once((low4(0x01B322) + low4(0x01B33E)) >= 1), 
                  once((high4(0x01B323) + high4(0x01B33F)) >= 1), 
                  once((low4(0x01B323) + low4(0x01B33F)) >= 1), 
                  once((high4(0x01B324) + high4(0x01B340)) >= 1), 
                  once((low4(0x01B324) + low4(0x01B340)) >= 1), 
                  once((high4(0x01B325) + high4(0x01B341)) >= 1), 
                  once((low4(0x01B325) + low4(0x01B341)) >= 1), 
                  once((high4(0x01B326) + high4(0x01B342)) >= 1), 
                  once((low4(0x01B326) + low4(0x01B342)) >= 1), 
                  once((high4(0x01B327) + high4(0x01B343)) >= 1), 
                  once((low4(0x01B327) + low4(0x01B343)) >= 1), 
                  once((high4(0x01B328) + high4(0x01B344)) >= 1), 
                  once((low4(0x01B328) + low4(0x01B344)) >= 1), 
                  once((high4(0x01B329) + high4(0x01B345)) >= 1), 
                  once((low4(0x01B329) + low4(0x01B345)) >= 1), 
                  once((high4(0x01B32A) + high4(0x01B346)) >= 1), 
                  once((low4(0x01B32A) + low4(0x01B346)) >= 1), 
                  once((high4(0x01B32B) + high4(0x01B347)) >= 1), 
                  once((low4(0x01B32B) + low4(0x01B347)) >= 1), 
                  once((high4(0x01B32C) + high4(0x01B348)) >= 1), 
                  once((low4(0x01B32C) + low4(0x01B348)) >= 1), 
                  once((high4(0x01B32D) + high4(0x01B349)) >= 1), 
                  once((low4(0x01B32D) + low4(0x01B349)) >= 1), 
                  once((high4(0x01B32E) + high4(0x01B34A)) >= 1), 
                  once((low4(0x01B32E) + low4(0x01B34A)) >= 1), 
                  once((high4(0x01B32F) + high4(0x01B34B)) >= 1), 
                  once((low4(0x01B32F) + low4(0x01B34B)) >= 1), 
                  once((high4(0x01B330) + high4(0x01B34C)) >= 1), 
                  once((low4(0x01B330) + low4(0x01B34C)) >= 1), 
                  once((high4(0x01B331) + high4(0x01B34D)) >= 1), 
                  once((low4(0x01B331) + low4(0x01B34D)) >= 1), 
                  once((high4(0x01B332) + high4(0x01B34E)) >= 1), 
                  once((low4(0x01B332) + low4(0x01B34E)) >= 1), 
                  once((high4(0x01B333) + high4(0x01B34F)) >= 1), 
                  once((low4(0x01B333) + low4(0x01B34F)) >= 1), 
                  once((high4(0x01B334) + high4(0x01B350)) >= 1), 
                  once((low4(0x01B334) + low4(0x01B350)) >= 1), 
                  once((high4(0x01B335) + high4(0x01B351)) >= 1), 
                  once((low4(0x01B335) + low4(0x01B351)) >= 1), 
                  once((high4(0x01B336) + high4(0x01B352)) >= 1), 
                  once((low4(0x01B336) + low4(0x01B352)) >= 1), 
                  once((low4(0x01B337) + low4(0x01B353)) >= 1),
                  once((high4(0x01B354) + high4(0x01B361)) >= 1), 
                  once((low4(0x01B354) + low4(0x01B361)) >= 1), 
                  once((high4(0x01B355) + high4(0x01B362)) >= 1), 
                  once((low4(0x01B355) + low4(0x01B362)) >= 1), 
                  once((high4(0x01B356) + high4(0x01B363)) >= 1), 
                  once((low4(0x01B356) + low4(0x01B363)) >= 1), 
                  once((high4(0x01B357) + high4(0x01B364)) >= 1), 
                  once((low4(0x01B357) + low4(0x01B364)) >= 1), 
                  once((high4(0x01B358) + high4(0x01B365)) >= 1), 
                  once((low4(0x01B358) + low4(0x01B365)) >= 1), 
                  once((high4(0x01B359) + high4(0x01B366)) >= 1), 
                  once((low4(0x01B359) + low4(0x01B366)) >= 1), 
                  once((high4(0x01B35A) + high4(0x01B367)) >= 1), 
                  once((low4(0x01B35A) + low4(0x01B367)) >= 1), 
                  once((high4(0x01B35B) + high4(0x01B368)) >= 1), 
                  once((low4(0x01B35B) + low4(0x01B368)) >= 1), 
                  once((high4(0x01B35C) + high4(0x01B369)) >= 1), 
                  once((low4(0x01B35C) + low4(0x01B369)) >= 1), 
                  once((high4(0x01B35D) + high4(0x01B36A)) >= 1), 
                  once((low4(0x01B35D) + low4(0x01B36A)) >= 1), 
                  once((high4(0x01B35E) + high4(0x01B36B)) >= 1), 
                  once((low4(0x01B35E) + low4(0x01B36B)) >= 1), 
                  once((high4(0x01B35F) + high4(0x01B36C)) >= 1), 
                  once((low4(0x01B35F) + low4(0x01B36C)) >= 1),
                  once((high4(0x01B36E) + high4(0x01B380)) >= 1), 
                  once((low4(0x01B36E) + low4(0x01B380)) >= 1), 
                  once((high4(0x01B36F) + high4(0x01B381)) >= 1), 
                  once((low4(0x01B36F) + low4(0x01B381)) >= 1), 
                  once((high4(0x01B370) + high4(0x01B382)) >= 1), 
                  once((low4(0x01B370) + low4(0x01B382)) >= 1), 
                  once((high4(0x01B371) + high4(0x01B383)) >= 1), 
                  once((low4(0x01B371) + low4(0x01B383)) >= 1), 
                  once((high4(0x01B372) + high4(0x01B384)) >= 1), 
                  once((low4(0x01B372) + low4(0x01B384)) >= 1), 
                  once((high4(0x01B373) + high4(0x01B385)) >= 1), 
                  once((low4(0x01B373) + low4(0x01B385)) >= 1), 
                  once((high4(0x01B374) + high4(0x01B386)) >= 1), 
                  once((low4(0x01B374) + low4(0x01B386)) >= 1), 
                  once((high4(0x01B375) + high4(0x01B387)) >= 1), 
                  once((low4(0x01B375) + low4(0x01B387)) >= 1), 
                  once((high4(0x01B376) + high4(0x01B388)) >= 1), 
                  once((low4(0x01B376) + low4(0x01B388)) >= 1), 
                  once((high4(0x01B377) + high4(0x01B389)) >= 1), 
                  once((low4(0x01B377) + low4(0x01B389)) >= 1), 
                  once((high4(0x01B378) + high4(0x01B38A)) >= 1), 
                  once((low4(0x01B378) + low4(0x01B38A)) >= 1), 
                  once((high4(0x01B379) + high4(0x01B38B)) >= 1), 
                  once((low4(0x01B379) + low4(0x01B38B)) >= 1), 
                  once((high4(0x01B37A) + high4(0x01B38C)) >= 1), 
                  once((low4(0x01B37A) + low4(0x01B38C)) >= 1), 
                  once((high4(0x01B37B) + high4(0x01B38D)) >= 1), 
                  once((low4(0x01B37B) + low4(0x01B38D)) >= 1), 
                  once((high4(0x01B37C) + high4(0x01B38E)) >= 1), 
                  once((low4(0x01B37C) + low4(0x01B38E)) >= 1), 
                  once((high4(0x01B37D) + high4(0x01B38F)) >= 1), 
                  once((low4(0x01B37D) + low4(0x01B38F)) >= 1), 
                  once((high4(0x01B37E) + high4(0x01B390)) >= 1), 
                  once((low4(0x01B37E) + low4(0x01B390)) >= 1), 
                  once((low4(0x01B37F) + low4(0x01B391)) >= 1)), 
                  when=byte(0x008010) == 4)
)//Need to figure out correct values for this
            
achievement("Vampire Hunter S", "Fill out the enemy data and monster drops on all possible monsters in your bestiary.", 25, 
            trigger=CheatLock() && 
               (prev(bitcount(0x01B3A0)) + prev(bitcount(0x01B3A1)) + prev(bitcount(0x01B3A2)) + prev(bitcount(0x01B3A3))
               + prev(bitcount(0x01B3A4)) + prev(bitcount(0x01B3A5)) + prev(bitcount(0x01B3A6)) +
               prev(bitcount(0x01B3A7)) + prev(bitcount(0x01B3A8)) + prev(bitcount(0x01B3A9)) + prev(bitcount(0x01B3AA))
               + prev(bitcount(0x01B3AB)) + prev(bitcount(0x01B3AC)) + prev(bitcount(0x01B3AD)) + prev(bit4(0x01B3B0)) +
               prev(bit1(0x01B3B0)) + prev(bit5(0x01B3B1)) + prev(bit4(0x01B3B1)) + prev(bitcount(0x01B3B2)) +
               prev(bit3(0x01B3B3)) + prev(bit1(0x01B3B3)) + prev(bit5(0x01B3B4)) + prev(bit4(0x01B3B4)) +
               prev(bit0(0x01B3B4)) + prev(bit3(0x01B3B5)) + prev(bit2(0x01B3B5)) + prev(bit1(0x01B3B5)) +
               prev(bit0(0x01B3B5)) + prev(bitcount(0x01B3B6)) + prev(bit4(0x01B3B7)) + prev(bit2(0x01B3B7)) +
               prev(bit7(0x01B3B8)) + prev(bit6(0x01B3B8)) + prev(bit3(0x01B3B8)) + prev(bit2(0x01B3B8)) +
               prev(bit3(0x01B3B9)) + prev(bit2(0x01B3B9)) + prev(bit1(0x01B3B9)) + prev(bit4(0x01B3BA)) +
               prev(bit3(0x01B3BA)) + prev(bit2(0x01B3BA)) + prev(bit0(0x01B3BA)) + prev(bit7(0x01B3BB)) +
               prev(bit3(0x01B3BB)) + prev(bit0(0x01B3BB)) + prev(bit7(0x01B3BC)) + prev(bit6(0x01B3BC)) +
               prev(bit7(0x01B3C0)) + prev(bit1(0x01B3C0)) + prev(bit4(0x01B3C1)) + prev(bit0(0x01B3C1)) +
               prev(bitcount(0x01B3C2)) + prev(bitcount(0x01B3C3)) + prev(bit4(0x01B3C4)) + prev(bit2(0x01B3C4)) +
               prev(bit0(0x01B3C4)) + prev(bitcount(0x01B3C5)) + prev(bitcount(0x01B3C6)) + prev(bit7(0x01B3C7)) +
               prev(bit6(0x01B3C7)) + prev(bit4(0x01B3C7)) + prev(bit6(0x01B3C8)) + prev(bit5(0x01B3C8)) +
               prev(bit3(0x01B3C8)) + prev(bit0(0x01B3C8)) + prev(bit5(0x01B3C9)) + prev(bit1(0x01B3C9)) +
               prev(bit0(0x01B3C9)) + prev(bit5(0x01B3CA)) + prev(bit3(0x01B3CA)) + prev(bit2(0x01B3CA)) +
               prev(bit0(0x01B3CA)) + prev(bit7(0x01B3CB)) + prev(bit4(0x01B3CB)) + prev(bit3(0x01B3CB)) +
               prev(bit0(0x01B3CB)) + prev(bitcount(0x01B3CC)) + prev(bit1(0x01B3CD)) + prev(bit0(0x01B3CD)) -
               prev(bit3(0x01B3B2)) - prev(bit0(0x01B3B2)) - prev(bit7(0x01B3B6)) - prev(bit6(0x01B3B6)) -
               prev(bit5(0x01B3B6)) - prev(bit7(0x01B3C2)) - prev(bit4(0x01B3C2)) - prev(bit3(0x01B3C2)) -
               prev(bit7(0x01B3C3)) - prev(bit3(0x01B3C3)) - prev(bit5(0x01B3C5)) - prev(bit4(0x01B3C5)) -
               prev(bit0(0x01B3C5)) - prev(bit7(0x01B3C6)) - prev(bit4(0x01B3C6)) - prev(bit1(0x01B3C6)) -
               prev(bit5(0x01B3CC)) - prev(bit0(0x01B3CC))) >= 202 && 
               measured((bitcount(0x01B3A0) + bitcount(0x01B3A1)
               + bitcount(0x01B3A2) + bitcount(0x01B3A3) + bitcount(0x01B3A4) + bitcount(0x01B3A5) + bitcount(0x01B3A6)
               + bitcount(0x01B3A7) + bitcount(0x01B3A8) + bitcount(0x01B3A9) + bitcount(0x01B3AA) + bitcount(0x01B3AB)
               + bitcount(0x01B3AC) + bitcount(0x01B3AD) + bit4(0x01B3B0) + bit1(0x01B3B0) + bit5(0x01B3B1) +
               bit4(0x01B3B1) + bitcount(0x01B3B2) + bit3(0x01B3B3) + bit1(0x01B3B3) + bit5(0x01B3B4) + bit4(0x01B3B4) +
               bit0(0x01B3B4) + bit3(0x01B3B5) + bit2(0x01B3B5) + bit1(0x01B3B5) + bit0(0x01B3B5) + bitcount(0x01B3B6) +
               bit4(0x01B3B7) + bit2(0x01B3B7) + bit7(0x01B3B8) + bit6(0x01B3B8) + bit3(0x01B3B8) + bit2(0x01B3B8) +
               bit3(0x01B3B9) + bit2(0x01B3B9) + bit1(0x01B3B9) + bit4(0x01B3BA) + bit3(0x01B3BA) + bit2(0x01B3BA) +
               bit0(0x01B3BA) + bit7(0x01B3BB) + bit3(0x01B3BB) + bit0(0x01B3BB) + bit7(0x01B3BC) + bit6(0x01B3BC) +
               bit7(0x01B3C0) + bit1(0x01B3C0) + bit4(0x01B3C1) + bit0(0x01B3C1) + bitcount(0x01B3C2) +
               bitcount(0x01B3C3) + bit4(0x01B3C4) + bit2(0x01B3C4) + bit0(0x01B3C4) + bitcount(0x01B3C5) +
               bitcount(0x01B3C6) + bit7(0x01B3C7) + bit6(0x01B3C7) + bit4(0x01B3C7) + bit6(0x01B3C8) + bit5(0x01B3C8) +
               bit3(0x01B3C8) + bit0(0x01B3C8) + bit5(0x01B3C9) + bit1(0x01B3C9) + bit0(0x01B3C9) + bit5(0x01B3CA) +
               bit3(0x01B3CA) + bit2(0x01B3CA) + bit0(0x01B3CA) + bit7(0x01B3CB) + bit4(0x01B3CB) + bit3(0x01B3CB) +
               bit0(0x01B3CB) + bitcount(0x01B3CC) + bit1(0x01B3CD) + bit0(0x01B3CD) - bit3(0x01B3B2) - bit0(0x01B3B2) -
               bit7(0x01B3B6) - bit6(0x01B3B6) - bit5(0x01B3B6) - bit7(0x01B3C2) - bit4(0x01B3C2) - bit3(0x01B3C2) -
               bit7(0x01B3C3) - bit3(0x01B3C3) - bit5(0x01B3C5) - bit4(0x01B3C5) - bit0(0x01B3C5) - bit7(0x01B3C6) -
               bit4(0x01B3C6) - bit1(0x01B3C6) - bit5(0x01B3CC) - bit0(0x01B3CC)) == 208, when=byte(0x008010) == 4 &&
               (prev(bitcount(0x01B3A0)) + prev(bitcount(0x01B3A1)) + prev(bitcount(0x01B3A2)) +
               prev(bitcount(0x01B3A3)) + prev(bitcount(0x01B3A4)) + prev(bitcount(0x01B3A5)) + prev(bitcount(0x01B3A6))
               + prev(bitcount(0x01B3A7)) + prev(bitcount(0x01B3A8)) + prev(bitcount(0x01B3A9)) +
               prev(bitcount(0x01B3AA)) + prev(bitcount(0x01B3AB)) + prev(bitcount(0x01B3AC)) + prev(bitcount(0x01B3AD))
               + prev(bit4(0x01B3B0)) + prev(bit1(0x01B3B0)) + prev(bit5(0x01B3B1)) + prev(bit4(0x01B3B1)) +
               prev(bitcount(0x01B3B2)) + prev(bit3(0x01B3B3)) + prev(bit1(0x01B3B3)) + prev(bit5(0x01B3B4)) +
               prev(bit4(0x01B3B4)) + prev(bit0(0x01B3B4)) + prev(bit3(0x01B3B5)) + prev(bit2(0x01B3B5)) +
               prev(bit1(0x01B3B5)) + prev(bit0(0x01B3B5)) + prev(bitcount(0x01B3B6)) + prev(bit4(0x01B3B7)) +
               prev(bit2(0x01B3B7)) + prev(bit7(0x01B3B8)) + prev(bit6(0x01B3B8)) + prev(bit3(0x01B3B8)) +
               prev(bit2(0x01B3B8)) + prev(bit3(0x01B3B9)) + prev(bit2(0x01B3B9)) + prev(bit1(0x01B3B9)) +
               prev(bit4(0x01B3BA)) + prev(bit3(0x01B3BA)) + prev(bit2(0x01B3BA)) + prev(bit0(0x01B3BA)) +
               prev(bit7(0x01B3BB)) + prev(bit3(0x01B3BB)) + prev(bit0(0x01B3BB)) + prev(bit7(0x01B3BC)) +
               prev(bit6(0x01B3BC)) + prev(bit7(0x01B3C0)) + prev(bit1(0x01B3C0)) + prev(bit4(0x01B3C1)) +
               prev(bit0(0x01B3C1)) + prev(bitcount(0x01B3C2)) + prev(bitcount(0x01B3C3)) + prev(bit4(0x01B3C4)) +
               prev(bit2(0x01B3C4)) + prev(bit0(0x01B3C4)) + prev(bitcount(0x01B3C5)) + prev(bitcount(0x01B3C6)) +
               prev(bit7(0x01B3C7)) + prev(bit6(0x01B3C7)) + prev(bit4(0x01B3C7)) + prev(bit6(0x01B3C8)) +
               prev(bit5(0x01B3C8)) + prev(bit3(0x01B3C8)) + prev(bit0(0x01B3C8)) + prev(bit5(0x01B3C9)) +
               prev(bit1(0x01B3C9)) + prev(bit0(0x01B3C9)) + prev(bit5(0x01B3CA)) + prev(bit3(0x01B3CA)) +
               prev(bit2(0x01B3CA)) + prev(bit0(0x01B3CA)) + prev(bit7(0x01B3CB)) + prev(bit4(0x01B3CB)) +
               prev(bit3(0x01B3CB)) + prev(bit0(0x01B3CB)) + prev(bitcount(0x01B3CC)) + prev(bit1(0x01B3CD)) +
               prev(bit0(0x01B3CD)) - prev(bit3(0x01B3B2)) - prev(bit0(0x01B3B2)) - prev(bit7(0x01B3B6)) -
               prev(bit6(0x01B3B6)) - prev(bit5(0x01B3B6)) - prev(bit7(0x01B3C2)) - prev(bit4(0x01B3C2)) -
               prev(bit3(0x01B3C2)) - prev(bit7(0x01B3C3)) - prev(bit3(0x01B3C3)) - prev(bit5(0x01B3C5)) -
               prev(bit4(0x01B3C5)) - prev(bit0(0x01B3C5)) - prev(bit7(0x01B3C6)) - prev(bit4(0x01B3C6)) -
               prev(bit1(0x01B3C6)) - prev(bit5(0x01B3CC)) - prev(bit0(0x01B3CC))) <= 207)
)//Need to figure out the correct values for the drops and stuff
