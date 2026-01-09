// ~Hack~ Final Fantasy VI: Hope Eternal and Love Everlasting
// #ID = 36930

function InBattle() => byte(0x000055) == 0xFF
function BattleFormation() => word(0x0011E0)
function BattleBackground() => word(0x0011E2)
function VictoryFanfare() => byte(0x00628d) == 1 && prev(byte(0x00628d)) != 1
function GetEnemySlot(slot) => word(0x003BFC + (slot - 1) * 2)
function MapID() => word(0x000082)
function InGame() => byte(0x00021f) == 1 //In game timer active


//Boss Cheevos
//ProgressionBossLookup = "Boss Name": ["Name of Cheevo", points, addional descriotn. Battle Formation, Battle Background, Health location(if fanfare doenst play)],
ProgressionBossDict = {
    "Ymir": ["Ride the Lightning", 1, " in the Mines of Narshe", 0x1b0, 0x09, 0],
    "Marshal": ["Magitek Monster?", 1, " in the Mines of Narshe and save Terra", 0x04, 0x0a, 0],
    "Ultros": ["Grabby Fish Bastard", 5, " on the river Lethe", 0x1d9, 0x0d, 0x003bfc],
    "Dig Armor": ["This is not a Drill", 5, " and complete Locke's scenario", 0x1b4, 0x0a, 0],
    "Muraenidae": ["Cliff Jumping", 5, " and arrive on the Veldt", 0x4f, 0x1f, 0],
    "Dadaluma": ["G'Day Mate", 5, " in the town of Zozo", 0x1b6, 0x24, 0],
    "Ultros again": ["King of the Opera", 5, " this time during the Opera", 0x1da, 0x17, 0],
}

function BeatBoss(value_list)
{
    trigger = always_false()
    if value_list[5] == 0
    {
        trigger = InBattle() && VictoryFanfare() && BattleFormation() == value_list[3] && BattleBackground() == value_list[4]
    }
    else
    {
        trigger = InBattle() && word(value_list[5]) == 0 && prev(word(value_list[5])) != 0 && BattleFormation() == value_list[3] && BattleBackground() == value_list[4]
    }
    return trigger
}

function ProgressionBosses()
{
    for key in ProgressionBossDict
    {
        value_list = ProgressionBossDict[key]
        
        achievement(
            title = value_list[0],
            points = value_list[1],
            type = "progression",
            description = "Defeat " + key + value_list[2],
            trigger = BeatBoss(value_list)
        )
    }
}
ProgressionBosses()

achievement(
    title = "Person Of Merit", points = 5, type="missable",
    description = "Defeat the Ymir's Shell and earn your reward",
    trigger = BattleFormation() == 432 && BattleBackground() == 9 && word(0x003BFC) == 0 && InBattle() && VictoryFanfare()
)

//RareEncounterDict = "Enemy Name": ["Name of CHeevo", points, [[battle formation, battle background]]]
RareEncounterDict = {
    "Garula": ["Garula Warfare", 5, [[0x13, 0x03], [0x13, 0x00], [0x13, 0x0C]]]
}

function RareAltTrigger(alt_list)
{
    start = always_true()
    length = length(alt_list)
    if length > 0
    {
        start = always_false()
    }
    for index in alt_list
    {
        start = start || (BattleFormation() == index[0] && BattleBackground() == index[1])
    }
    return start
}

function RareEncounters()
{
    for key in RareEncounterDict
    {
        value_list = RareEncounterDict[key]
        achievement(
            title = value_list[0],
            points = value_list[1],
            description = "Find and defeat " + key,
            trigger = InBattle() && VictoryFanfare() && RareAltTrigger(value_list[2])
        )
    }
}

RareEncounters()

//Misc Cheevos
achievement(
    title="The Kids Dynamite!", points=1,
    description="Trigger a hidden scene while escaping Figaro Castle",
    trigger = BattleFormation() == 0x1b2 && BattleBackground() == 0x02 && InBattle() && byte(0x001dd1) == 2 &&
              repeated(1, byte(0x000016) == 0x56 && prev(byte(0x000014)) != 0xFF && byte(0x000014) == 0xFF) && 
              never(byte(0x001dd1) != 2)
)

achievement(
    title="Motion Sickness?",
    points=1,
    type="missable",
    description="Have Bannon ride a chocobo",
    trigger = MapID() == 0 && prev(MapID()) != 0 && byte(0x0011fa) == 2 && byte(0x0011fb) == 0x11
    
)

achievement(
    title="You Know What To Do",
    points=1,
    type="missable",
    description="Perform Meteor Strike on a train",
    trigger = BattleFormation() == 0x1b5 && BattleBackground() == 0x21 && InBattle() && byte(0x0011a0) == 0x7e && prev(byte(0x0011a9)) != 0x60 && byte(0x0011a9) == 0x60

)

//Event Based "Name of Cheevo": [points, description, event bit, map id, type]
EventLookup = {
    "Straight To Hell Boy": [5, "Defeat Vargas at Mt Koltz and recruit Sabin", bit0(0x001e82), 0x62, "progression"],
    "Hope Is Lost": [1, "Refuse to help the Returers", bit6(0x001e82), 0x6C, "missable"],
    "Oracle's Ordeal": [5, "Complete Bannon's scenario", bit1(0x001e84), 0x1e, "progression"],
    "Where I Go Death Follows": [1, "Recruit Shadow to help during Sabin's scenario", bit2(0x001eac), 0x73, "missable"],
    "Suck At Machines": [1, "While riding the Phantom Train, trigger a scene showing Cyan's disdain for machines", bit7(0x001eb4), 0x92, "missable"],
    "Love's Savior": [5, "In Mobliz, receive a gift for corresponding with a soldier's love", bit5(0x001ed1), 0xa5, "missable"],
    "Uncouth Child of the Night": [1, "In Nikeah, trigger a scene with Cyan and a certain woman...", bit3(0x001e88), 0xac, "missable"],
    "Rollling On a River": [5, "Complete Sabin's scenario", bit4(0x001e88), 0xbb, "progression"],
    "A Game of Thrones?": [1, "View the optional scene that decided the King of Figaro", bit2(0x001e89), 0x3B, "missable"],
    "Locke's Treasure": [1, "View the optional scene that set Locke on his path to the Returners", bit5(0x001e89), 0xC5, "missable"],
}

function EventCheevos()
{
    for key in EventLookup
    {
        value_list = EventLookup[key]
        achievement(
            title=key, points=value_list[0],
            description=value_list[1],
            type=value_list[4],
            trigger=MapID() == value_list[3] && prev(value_list[2]) == 0 && value_list[2] == 1
        )
    }
}

EventCheevos()


///Elixer Cheevos
achievement(
    title="Time Has Come Today", points=1, 
    description="Find the first available Elixir hidden in a clock",
    trigger = MapID() == 0x1E && prev(bit2(0x001e40)) == 0 && bit2(0x001e40) == 1
)
ElixirList = [bit2(0x001e40), bit2(0x001e41), bit7(0x001e43), bit5(0x001e47), bit6(0x001e47), bit5(0x001e48), bit7(0x001e4c), bit2(0x001e41), bit3(0x001e46)]

function Elixirs(num_to_check)
{
    add_list = 0
    delta_add_list = 0
    for elixir in ElixirList
    {
        add_list = add_list + elixir
        delta_add_list = delta_add_list + prev(elixir)
    }
    trigger = measured(add_list == num_to_check) && delta_add_list == (num_to_check - 1)
    return trigger
}

achievement(
    title="Half elixer Needs Name", points=5, 
    description="Find half of the Elixirs hidden in a clock",
    trigger = Elixirs(5)
)

achievement(
    title="All elixer Needs Name", points=10, 
    description="Find all of the Elixirs hidden in a clock",
    trigger = Elixirs(9)
)

//Item Cheevos. "Cheevo name": [points, [list of bits], description addition, number to check]

ItemLookup ={
    "Thats TREASURE HUNTER": [5,
      [bit2(0x001e40), bit3(0x001e41), bit4(0x001e41), bit6(0x001e41), bit7(0x001e41), bitcount(0x001e42), bitcount(0x001e43), bit4(0x001e44), bit5(0x001e44), bit6(0x001e44), 
       bit7(0x001e44), bitcount(0x001e45), bit0(0x001e46), bit1(0x001e4c), bit2(0x001e51), bit3(0x001e51), bit4(0x001e51), bit5(0x001e51), bit6(0x001e5c), bit7(0x001e5c), 
       bit4(0x001e5f), bit0(0x001e60)],
      "before jumping onto the River Lethe",
      43,
    ],
    
    //"Needs Name"; [5,
    //[bit4(0x001e40), bit5(0x001e40), bit6(0x001e40), bit7(0x001e40), bit0(0x001e41), bit1(0x001e41), bit2(0x00x001e41), 
    // bit5(0x001e41), bit0(0x001e44), bit1(0x001e44), bit2(0x001e44), bit3(0x001e44), bit2(0x001e46), bit7(0x001e46), 
    // bitcount(0x001e47), bit0(0x001e48), bit1(0x001e48), bit2(0x001e48), bit5(0x001e48), bit0(0x001e49), bit1(0x001e49), bit2(0x001e49), bit3(0x001e49), bit4(0x001e49) ,bit5(0x001e5c), 
    // bit3(0x001e5e), bit5(0x001e5f), bit6(0x001e5f), bit7(0x001e5f), bit5(0x001e61),  bit6(0x001e61),  bit7(0x001e61),
    //],
    //"between River Lethe and catching a ride to the Empire",
    //10,
    //],
}

function ItemCalculate(list_to_check, num_to_check)
{
    add_list = 0
    delta_add_list = 0
    for bit in list_to_check
    {
        add_list = add_list + bit
        delta_add_list = delta_add_list + prev(bit)
    }
    trigger = measured(add_list == num_to_check) && delta_add_list == (num_to_check - 1)
    return trigger
}

function ItemCheevo()
{
    for key in ItemLookup
    {
        value_list = ItemLookup[key]
        achievement(
            title=key, points=value_list[0],
            description="Find all items that are available " + value_list[2],
            trigger=ItemCalculate(value_list[1], value_list[3])
        )
    }
}

ItemCheevo()

//Tech Cheevos {cheevoName: [points, memory, number, description]}
TechLookup = {
    "Cut Through Flesh Like Butter": [5, [0x001cf7], 8, "Learn all of Cyan's Bushido techniques"],
    "Blitz Need Name": [5, [0x001d28], 8, "Learn all of Sabin's Blitz techniques"],
    "Dance Need Name": [5, [0x001d4c], 8, "Learn all of Mog's Dance techniques"],
    "Lore need Name": [25, [0x001d29, 0x001d2a, 0x001d2b], 24, "Learn all of ??? Lore techniques"],
}

function TechCheevo()
{
    for key in TechLookup
    {
        value_list = TechLookup[key]
        if length(value_list[1]) == 1
        {
            cheevo_trigger = measured(bitcount(value_list[1][0]) == value_list[2]) && prev(bitcount(value_list[1][0])) == value_list[2] - 1
        }
        else
        {
            add_list = 0
            delta_add_list = 0
            for i in value_list[1]
            {
                add_list = add_list + bitcount(i)
                delta_add_list = delta_add_list + prev(bitcount(i))
            }
            cheevo_trigger = measured(add_list == value_list[2]) && delta_add_list == value_list[2] - 1
        }
        achievement(
            title=key, points=value_list[0],
            description=value_list[3],
            trigger = cheevo_trigger && InGame()
        )
    }
}

TechCheevo()


//Rage Cheevos {cheevoName: [number, points, desription]}
RageLookup = {
    "Walk of the Wild Boy": [64, 5, "Learn a quarter of Gau's Rages"],
    "Walk of the Beast Master": [128, 10, "Learn half of Gau's Rages"]
}

function RageCount(num_rages)
{
    rage_count = 0
    delta_rage_count = 0
    for i in range(0, 31)
    {
        rage_count = rage_count + bitcount(0x001d2c + i)
        delta_rage_count = delta_rage_count + prev(bitcount(0x001d2c + i))
    }
    trigger = measured(rage_count == num_rages) && delta_rage_count <= (num_rages - 1)
    return trigger
}

function RageCheevos()
{
    for key in RageLookup
    {
        value_list = RageLookup[key]
        achievement(
            title=key, points=value_list[1],
            description=value_list[2],
            trigger=RageCount(value_list[0]) && InGame()
        )
    }
}

RageCheevos()


//Challenges
achievement(
    title="In On the Hunt", points=5,
    description="Defeat all Imperial soldiers at least once and then defeat Kefka in Narshe",
    type="missable",
    trigger=unless(bit5(0x001E88) != 1) && unless(bit6(0x001E88) != 0) &&
            measured((bit6(0x001EA7) + bit7(0x001EA7) + bitcount(0x001EA8) + bit0(0x001EA9)) == 0x0B) && 
             prev(word(0x001F64)) == 0x16 && trigger_when(word(0x001F64) == 0x17)
)





