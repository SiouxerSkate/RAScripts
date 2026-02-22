// ~Hack~ Final Fantasy VI: Hope Eternal and Love Everlasting
// #ID = 36930

function InBattle() => byte(0x000055) == 0xFF
function BattleFormation() => word(0x0011E0)
function BattleBackground() => word(0x0011E2)
function VictoryFanfare() => byte(0x00628d) == 1 && prev(byte(0x00628d)) != 1
function TriggerVictory() => trigger_when(byte(0x00628d) == 1) && prev(byte(0x00628d)) != 1
function GetEnemySlot(slot) => word(0x003BFC + (slot - 1) * 2)
function MapID() => word(0x000082)
function InGame() => byte(0x00021f) == 1 //In game timer active


//Boss Cheevos
//ProgressionBossLookup = "Boss Name": ["Name of Cheevo", points, addional descriotn. Battle Formation, Battle Background, Health location(if fanfare doenst play), cheevo_id],
ProgressionBossDict = {
    "Ymir": ["Ride the Lightning", 1, " in the Mines of Narshe", 0x1b0, 0x09, 0, 572428, "progression"],
    "Marshal": ["Magitek Monster?", 1, " in the Mines of Narshe and save Terra", 0x04, 0x0a, 0, 572431, "progression"],
    "Ultros": ["Grabby Fish Bastard", 5, " on the river Lethe", 0x1d9, 0x0d, 0x003bfc, 572435, "progression"],
    "Dig Armor": ["This Is Not a Drill", 5, " and complete Locke's scenario", 0x1b4, 0x0a, 0, 572438, "progression"],
    "Muraenidae": ["Cliff Jumping", 5, " and arrive on the Veldt", 0x4f, 0x1f, 0, 572444, "progression"],
    "Dadaluma": ["G'Day Mate", 5, " in the town of Zozo", 0x1b6, 0x24, 0, 572451, "progression"],
    "Ultros again": ["King of the Opera", 5, ", this time during the Opera", 0x1da, 0x17, 0, 572452, "progression"],
    "Number 24": ["Barrier Breaker", 5, " in the Empire's Magitek Facility", 0x1b9, 0x1d, 0, 572504, "progression"],
    "Cranes": ["Ring Hell's Bells", 5, " when escaping the Empire", 0x1b8, 0x25, 0, 572515, "progression"],
    "Ultros again, this": ["Cream the Fish Face", 5, " time in the Esper Cave", 0x183, 0x0c, 0, 576032, "progression"],
    "Atma": ["The Fierce Battle", 25, " on the Floating Continent", 0x1c2, 0x15, 0, 578044, "progression"],
    "Tentacle Swarm": ["Spaghetti Ready", 5, " in the basement of Figaro Castle", 0x1c6, 0x37, 0, 578996, "progression"],
    "Humbaba": ["For the Love of Love", 5, " and recruit Terra in World of Ruin", 0x1a7, 0x05, 0, 580270, ""],
    "Shadow Dragon": ["Devour the Black Fangs", 10, " and earn the black blade", 0x1cd, 0x0c, 0, 581318, ""],
    "Gilkary": ["Belly of the Beast", 10, " in the belly of the beast", 0x160, 0x0c, 0x003bfc, 0, ""],
    "Inferno": ["Three's Company", 10, " during the raid of Kefka's Tower", 0x1e4, 0x1d, 0, 583474, "progression"],
    "Guardian": ["Tower Defense", 10, " during the raid of Kefka's Tower", 0x1be, 0x14, 0, 583585, "progression"],
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
            type = value_list[7],
            description = "Defeat " + key + value_list[2],
            trigger = BeatBoss(value_list),
            id=value_list[6]
        )
    }
}
ProgressionBosses()

achievement(
    title = "Person of Merit", points = 5, type="missable",
    description = "Defeat the Ymir's Shell and earn your reward",
    id=572429,
    trigger = BattleFormation() == 432 && BattleBackground() == 9 && word(0x003BFC) == 0 && InBattle() && VictoryFanfare()
)

achievement(
    title = "A World Torn Apart", points = 10, type="missable",
    description = "Watch the end of the world as you know it...Make sure to save Shadow",
    id = 578120,
    trigger = bit0(0x1e94) == 1 && bit3(0x1e94) == 0 && bit4(0x1e94) == 0 && prev(word(0x90)) == 0 && word(0x90) == 0xFF &&
              prior(word(0x1f64)) == 0x03 && word(0x1f64) == 0x401
)

//RareEncounterDict = "Enemy Name": ["Name of CHeevo", points, [[battle formation, battle background]], missable, cheevo id, "extra description"]
RareEncounterDict = {
    "Garula": ["Garula Warfare", 5, [[0x13, 0x03], [0x13, 0x00], [0x13, 0x0C]], "missable", 572433, ""],
    " a pack of Cure Bunny": ["Cure What Ails You", 10, [[0xbd, 0x03]], "missable", 573501, ""],
    "Nightmare and receive the ultimate weapon": ["Nightmare Ultimus", 10, [[0x1c5, 0x2A]], "missable", 573506, ""],
    "Intagir": ["Intangible Behemoth", 10, [[0xd2, 0x03], [0xd2, 0x00]], "missable", 576041, " in the World of Balance"],
    "Tonberry": ["Bon Appetit", 10, [[0xfd, 0x0c], [0xfd, 0x0b]], "missable", 576333, " in the World of Balance"],
    "Gorgimera": ["Hunter's Delight", 5, [[0x10e, 0x0a]], "", 580274, ""],
    "Donberry": ["Yes Chef!", 10, [[0xeb, 0x0a], [0xeb, 0x1a]], "", 580706, ""],
    // "Deathgaze": ["Bahamut's Bane", 10, [[0x1cf, 0x29]], "", 0, ""],
    "Valigarmanda": ["Tri-Disaster", 5, [[0x1e7, 0x12]], "", 581158, ""],
    "Hunter": ["Hunt or Be Hunted", 5, [[0x112, 0x05], [0x112, 0x01]], "", 583022, ""],
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
            type=value_list[3],
            description = "Find and defeat " + key + value_list[5],
            id=value_list[4],
            trigger = InBattle() && VictoryFanfare() && RareAltTrigger(value_list[2])
        )
    }
}

RareEncounters()

//Misc Cheevos
achievement(
    title="The Kids Dynamite!", points=1,
    description="Trigger a hidden scene while escaping Figaro Castle",
    type="missable",
    id=572432,
    trigger = BattleFormation() == 0x1b2 && BattleBackground() == 0x02 && InBattle() && byte(0x001dd1) == 2 &&
              repeated(1, byte(0x000016) == 0x56 && prev(byte(0x000014)) != 0xFF && byte(0x000014) == 0xFF) && 
              never(byte(0x001dd1) != 2)
)

achievement(
    title="Motion Sickness?",
    points=1,
    type="missable",
    description="Have Bannon ride a chocobo",
    id=572439,
    trigger = MapID() == 0 && prev(MapID()) != 0 && byte(0x0011fa) == 2 && byte(0x0011fb) == 0x11
    
)

achievement(
    title="You Know What to Do",
    points=1,
    type="missable",
    description="Perform Meteor Strike on a train",
    id=572442,
    trigger = BattleFormation() == 0x1b5 && BattleBackground() == 0x21 && InBattle() && byte(0x0011a0) == 0x7e && prev(byte(0x0011a9)) != 0x60 && byte(0x0011a9) == 0x60

)

achievement(
    title = "Two for One", points = 10, type="missable",
    description = "Earn two Gorgon's Darts by defeating Mimic Whelk head and shell at same time",
    id = 579022,
    trigger = BattleFormation() == 0x1b1 && BattleBackground() == 0x26 && InBattle() && VictoryFanfare() && word(0x003bfc) == 0 && word(0x003bfe) == 0
)

achievement(
    title="Shadow's Shadow", points=5,
    description="View all of Shadow's dreams",
    type="missable",
    id=0,
    trigger=(prev(bit4(0x001e84)) + 
             prev(bit6(0x001e84)) + 
             prev(bit7(0x001e84)) + 
             prev(bit0(0x001e85)) == 0x03) && 
            measured((bit4(0x001e84) + 
                      bit6(0x001e84) + 
                      bit7(0x001e84) + 
                      bit0(0x001e85)) == 0x04)
            && unless(bit0(0x001e94) == 0)
)

//Event Based "Name of Cheevo": [points, description, event bit, map id, type, cheevo id]
EventLookup = {
    "Straight to Hell Boy": [5, "Defeat Vargas at Mt Koltz and recruit Sabin", bit0(0x001e82), 0x62, "progression", 572434],
    "Hope Is Lost": [1, "Refuse to help the Returners", bit6(0x001e82), 0x6C, "missable", 572436],
    "Oracle's Ordeal": [5, "Complete Bannon's scenario", bit1(0x001e84), 0x1e, "progression", 572440],
    "Where I Go Death Follows": [1, "Recruit Shadow to help during Sabin's scenario", bit2(0x001eac), 0x73, "missable", 572441],
    "Suck at Machines": [1, "While riding the Phantom Train, trigger a scene showing Cyan's disdain for machines", bit7(0x001eb4), 0x92, "missable", 572443],
    "Love's Savior": [5, "In Mobliz, receive a gift for corresponding with a soldier's love", bit5(0x001ed1), 0xa5, "missable", 572445],
    "Uncouth Child of the Night": [1, "In Nikeah, trigger a scene with Cyan and a certain woman...", bit3(0x001e88), 0xac, "missable", 572446],
    "Rolling on a River": [5, "Complete Sabin's scenario", bit4(0x001e88), 0xbb, "progression", 572447],
    "A Game of Thrones?": [1, "View the optional scene that decided the King of Figaro", bit2(0x001e89), 0x3B, "missable", 572449],
    "Locke's Treasure": [1, "View the optional scene that set Locke on his path to the Returners", bit5(0x001e89), 0xC5, "missable", 572450],
    "Man's Best Moogle": [1, "Choose to save Mog's life in Narshe", bit2(0x1edf), 0x17, "missable", 572519],
    "A Real Passion": [1, "View an optional scene about Setzer's past in World of Balance", bit1(0x1e90), 0x07, "missable", 573712],
    "Order of the Load Bearing Monks": [5, "Save the child in Tzen and meet back up with a friend", bit2(0x1ed1), 0x131, "progression", 578851],
    "Kiss the Clouds": [10, "Obtain the Falcon", bit5(0x001e99), 0x0, "progression", 579024],
    "No More Syrup": [5, "Re-recruit Cyan in the World of Ruin", bit2(0x1e9a), 0xb4, "", 579025],
    "Fight for a Living": [5, "Re-recruit Shadow in the World of Ruin", bit3(0x001ede), 0x19d, "missable", 580268],
    "Never Stop Painting": [5, "Re-recruit Relm in the World of Ruin", bit0(0x001edf), 0xd0, "", 580655],
    "Learn to Live Once More": [5, "Re-recruit Locke in the World of Ruin", bit1(0x001ede), 0xc3, "", 580879],
    "Do You Want to Build a Snowman": [5, "Recruit Umaro", bit5(0x001edf), 0x11b, "", 581159],
    "I Think of Demons": [5, "View an optional scene about Gau's heritage", bit1(0x001ec9), 0x83, "", 581162],
    "The Kids Love This One": [5, "Find a Flamethrower", bit2(0x001e58), 0x114, "", 581317],
    "Heavily Clothed Mystery": [5, "Recruit Gogo", bit4(0x001edf), 0x116, "", 0],
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
            id=value_list[5],
            trigger=MapID() == value_list[3] && prev(value_list[2]) == 0 && value_list[2] == 1
        )
    }
}

EventCheevos()

achievement(
    title="From Beyond the Gate", points=5,
    description="Meeting the Espers doesn't go so well....",
    type="progression",
    id=573507,
    trigger=prior(MapID()) == 0x06 && prev( bit2(0x1e8f)) == 0 &&  bit2(0x1e8f) == 1
)

achievement(
    title="War Is Over?", points=10,
    description="Max out Emperor Gestahl's favor during the banquet",
    type="missable",
    id=573705,
    trigger=measured(byte(0x1fc2) == 0x5D, when=MapID() == 0xFB, format="percent") && bit4(0x1e8f) == 1 && prev(bit5(0x1e8f)) == 0 && bit5(0x1e8f) == 1
)


///Elixer Cheevos
achievement(
    title="Time Has Come Today", points=1, 
    description="Find the first available Elixir hidden in a clock",
    id=572430,
    trigger =  MapID() == 0x1E && prev(bit2(0x001e40)) == 0 && bit2(0x001e40) == 1
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
    title="Time Is on Our Side", points=5, 
    description="Find half of the Elixirs hidden in a clock",
    id=572459,
    trigger = Elixirs(5)
)

achievement(
    title="Time to Be Alive", points=10, 
    description="Find all of the Elixirs hidden in a clock",
    id=579716,
    trigger = Elixirs(9)
)

//Item Cheevos. "Cheevo name": [points, [list of bits], description addition, number to check, cheevo_id]

ItemLookup = {
    "That's TREASURE HUNTER": [5,
      [bit2(0x001e40), bit3(0x001e41), bit4(0x001e41), bit6(0x001e41), bit7(0x001e41), bitcount(0x001e42), bitcount(0x001e43), bit4(0x001e44), bit5(0x001e44), bit6(0x001e44), 
       bit7(0x001e44), bitcount(0x001e45), bit0(0x001e46), bit1(0x001e4c), bit2(0x001e51), bit3(0x001e51), bit4(0x001e51), bit5(0x001e51), bit6(0x001e5c), bit7(0x001e5c), 
       bit4(0x001e5f), bit0(0x001e60)],
      "items that are available before jumping onto the River Lethe",
      43,
      572437,
    ],
    "Novice Treasure Hunter": [5,
      [bit4(0x001e40), bit5(0x001e40), bit6(0x001e40), bit7(0x001e40), bit0(0x001e41), bit1(0x001e41), bit2(0x0001e41), bit5(0x001e41), 
       bit0(0x001e44), bit1(0x001e44), bit2(0x001e44), bit3(0x001e44), bit2(0x001e46), bit7(0x001e46), 
       bitcount(0x001e47), bit0(0x001e48), bit1(0x001e48), bit2(0x001e48), bit5(0x001e48), bit6(0x001e48), bit7(0x001e48), 
       bit0(0x001e49), bit1(0x001e49), bit2(0x001e49), bit3(0x001e49), bit4(0x001e49),
       bit2(0x001e4a), bit3(0x001e4a), bit4(0x001e4a), bit5(0x001e4a), bit6(0x001e4a), bit7(0x001e4a), 
       bit0(0x001e4b), bit1(0x001e4b), bit4(0x001e4b), bit5(0x001e4b),
       bit2(0x001e4c), bit4(0x001e4c), bit5(0x001e4c), bit6(0x001e4c), bit7(0x001e4c), 
       bit3(0x001e5a), bit4(0x001e5a), bit5(0x001e5c), bit7(0x001e5d), bit3(0x001e5e), bit4(0x001e5e), bit5(0x001e5e), 
       bit5(0x001e5f), bit6(0x001e5f), bit7(0x001e5f), bit5(0x001e61),  bit6(0x001e61),  bit7(0x001e61)],
      "items that are available between River Lethe and catching a ride to the Empire",
      61,
      572511,
    ],
    "Advanced Treasure Hunter": [10,
      [bit3(0x001e40), bit3(0x001e46), bit4(0x001e46), bit4(0x001e48), bit5(0x001e49), bit6(0x001e49), bit7(0x001e49), bit0(0x001e4a), bit1(0x001e4a), 
       bit7(0x001e4b), bit0(0x001e4c), bit3(0x001e4c), bitcount(0x001e4d), bitcount(0x001e4e), bitcount(0x001e4f), 
       bitcount(0x001e50), bit0(0x001e51), bit1(0x001e51), bit3(0x001e56), bit6(0x001e5e), bit7(0x001e5e), bit0(0x001e5f), bit1(0x001e5f)],
      "remaining items in the World of Balance",
      51,
      578047, 
    ],
    "Competent Treasure Hunter": [10,
      [bit6(0x001e51), bit7(0x001e51), bitcount(0x001e52), bitcount(0x001e53), bit0(0x001e54), bit1(0x001e54), 
       bit3(0x001e5f), bit3(0x001e61), bit4(0x001e61), bitcount(0x001e62), bit0(0x001e63), bit1(0x001e63), 
      ],
      "items that are available prior to getting the Falcon in the World of Ruin",
      33,
      578997,
    ],
    "Proficient Treasure Hunter": [25,
      [
        bit2(0x001e54), bit3(0x001e54), bit4(0x001e54), bit5(0x001e54), bit6(0x001e54), bitcount(0x001e55),
        bit0(0x001e56), bit1(0x001e56), bit6(0x001e57), bit7(0x001e57), bitcount(0x001e58), bit0(0x001e59), bit1(0x001e59), bit7(0x001e59), 
        bit0(0x001e5a), bit1(0x001e5a), bit4(0x001e5c), bit0(0x001e5d), bit1(0x001e5d), bit4(0x001e5d), bit5(0x001e5d), 
        bit0(0x001e61), bit1(0x001e61), bit2(0x001e61),
      ],
      "items in caves in the World of Ruin: Cave on the Veldt, Figaro Castle Cave, Narshe Caves, Mt. Zozo, Star Cave, Zone Ender Cave",
      38,
      0,
    ],
    "Master Treasure Hunter": [50,
      [
        bit7(0x001e54), bit4(0x001e56), bit5(0x001e56), bit6(0x001e56), bit1(0x001e57), bit3(0x001e57), bit4(0x001e57), bit5(0x001e57), 
        bit4(0x001e59), bit5(0x001e59), bit6(0x001e59), bit5(0x001e5a), bit6(0x001e5a), bit7(0x001e5a), bitcount(0x001e5b), 
        bit0(0x001e5c), bit1(0x001e5c), bit2(0x001e5c), bit3(0x001e5d), bit1(0x001e5e), bit2(0x001e60), 
        bit3(0x001e64), bit4(0x001e64), bit5(0x001e64), bit6(0x001e64), bit1(0x001ecb), bit2(0x001ecb), bit3(0x001ecb), bit4(0x001ecb),
      ],
      "remaining items in the World of Ruin",
      36,
      0,
    ],
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
            description="Find all " + value_list[2],
            type="missable",
            id=value_list[4],
            trigger=ItemCalculate(value_list[1], value_list[3])
        )
    }
}

ItemCheevo()

//Tech Cheevos {cheevoName: [points, memory, number, description, in battle, cheevo_id]}
TechLookup = {
    //"Cut Through Flesh Like Butter": [5, [0x001cf7], 8, "Learn all of Cyan's Bushido techniques", 0, 0],
    //"Blitz Bum": [5, [0x001d28], 8, "Learn all of Sabin's Blitz techniques", 0, 0],
    "Moogle Slam Dance": [5, [0x001d4c], 8, "Learn all of Mog's Dance techniques", 1, 0],
    "Daffy Old Fart": [25, [0x001d29, 0x001d2a, 0x001d2b], 24, "Learn all of Strago's Lore techniques", 1, 0],
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
        if value_list[4] == 1
        {
            extra_trigger = InBattle()
        }
        else
        {
            extra_trigger = InGame()
        }
        achievement(
            title=key, points=value_list[0],
            description=value_list[3],
            id=value_list[5],
            trigger = cheevo_trigger && extra_trigger
        )
    }
}

TechCheevo()


//Rage Cheevos {cheevoName: [number, points, desription, cheevo id]}
RageLookup = {
    "Walk of the Wild Boy": [64, 5, "Learn a quarter of Gau's Rages", [], 0],
    "Walk of the Beast Master": [128, 10, "Learn half of Gau's Rages", [], 0],
    "Walk of the Dragon Master": 
      [32, 25, "Learn all of Gau's Rages from Dragons or Dinosaurs", 
      [
        bit6(0x1d2e), bit1(0x1d30), bit0(0x1d3c), bit1(0x1d3c), bit2(0x1d3c), bit3(0x1d3c), bit4(0x1d3c), bit2(0x1d48),
      ],
    0]
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

//Not sure how I killed the rage cheevos...
//RageCheevos()

//Magicite Cheevos
achievement(
    title="Magical Development", points=5,
    description="Find 15 pieces of magicite before going to the Floating Continent",
    type="missable",
    id=576042,
    trigger=(prev(bitcount(0x001a69)) +
             prev(bitcount(0x001a6a)) + 
             prev(bitcount(0x001a6b)) == 0x0E) && 
            measured((bitcount(0x001a69) + 
                      bitcount(0x001a6a) + 
                      bitcount(0x001a6b)) == 0x0F) && unless(bit0(0x001e94) == 1)
)

achievement(
    title="Master Magi", points=50,
    description="Find all pieces of magicite",
    type="missable",
    id=583722,
    trigger=(prev(bitcount(0x001a69)) +
             prev(bitcount(0x001a6a)) + 
             prev(bitcount(0x001a6b)) +
             prev(bitcount(0x001a6c)) == 0x1A) && 
            measured((bitcount(0x001a69) + 
                      bitcount(0x001a6a) + 
                      bitcount(0x001a6b) +
                      bitcount(0x001a6c)) == 0x1B) && unless(bit0(0x001e94) == 0)
)

//Character Recruit
achievement(
    title="Stronger Together", points=10,
    description="Recruit every character",
    type="missable",
    id=0,
    trigger=(prev(bitcount(0x001ede)) + 
             prev(bit0(0x001edf)) + 
             prev(bit1(0x001edf)) + 
             prev(bit2(0x001edf)) + 
             prev(bit3(0x001edf)) + 
             prev(bit4(0x001edf)) + 
             prev(bit5(0x001edf)) == 0x0D) && 
            measured((bitcount(0x001ede) + 
                      bit0(0x001edf) + 
                      bit1(0x001edf) + 
                      bit2(0x001edf) + 
                      bit3(0x001edf) + 
                      bit4(0x001edf) + 
                      bit5(0x001edf)) == 0x0E)
            && unless(bit0(0x001e94) == 0)
)


//Challenges
achievement(
    title="In on the Hunt", points=5,
    description="Defeat all Imperial soldiers at least once and then defeat Kefka in Narshe",
    type="missable",
    id=572448,
    trigger=unless(bit5(0x001E88) != 1) && unless(bit6(0x001E88) != 0) &&
            measured((bit6(0x001EA7) + bit7(0x001EA7) + bitcount(0x001EA8) + bit0(0x001EA9)) == 0x0B) && 
             prev(word(0x001F64)) == 0x16 && trigger_when(word(0x001F64) == 0x17)
)

//Cant figure out best way for the AndNexts so keeping this commented out
//achievement(
//    title="Could Use Some Water", points=10,
//    description="Defeat Flame Eater without using Aqua Breath or Summons",
//    type="missable",
//    id=0,
//    trigger=BattleFormation() == 0x1c1 && BattleBackground() == 0x019 && InBattle() && VictoryFanfare()
//)

achievement(
    title="Turbulent Flight", points=5,
    description="Defeat Air Force without using Items",
    type="missable",
    id=576343,
    trigger=InBattle() && BattleFormation() == 0x1cb && BattleBackground() == 0x07 && TriggerVictory() &&
    disable_when(byte(0x0000b5) == 2, until=byte(0x000055) != 0xFF)
)

//achievement(
//    title="Battle to the Death", points=25,
//    description="Defeat Atma on the Floating Continent with a desperation attack",
///    type="missable",
//    id=0,
//    trigger=InBattle()
//)

function CheckRelics(relic_value)
{
    trigger = byte(0x001623) != relic_value && byte(0x001624) != relic_value &&
              byte(0x001648) != relic_value && byte(0x001649) != relic_value &&
              byte(0x00166d) != relic_value && byte(0x00166e) != relic_value &&
              byte(0x001691) != relic_value && byte(0x001692) != relic_value &&
              byte(0x0016b7) != relic_value && byte(0x0016b8) != relic_value &&
              byte(0x0016dc) != relic_value && byte(0x0016dd) != relic_value &&
              byte(0x001701) != relic_value && byte(0x001702) != relic_value &&
              byte(0x001726) != relic_value && byte(0x001727) != relic_value &&
              byte(0x00174b) != relic_value && byte(0x00174c) != relic_value &&
              byte(0x001770) != relic_value && byte(0x001771) != relic_value &&
              byte(0x001795) != relic_value && byte(0x001796) != relic_value &&
              byte(0x0017ba) != relic_value && byte(0x0017bb) != relic_value &&
              byte(0x0017df) != relic_value && byte(0x0017e0) != relic_value &&
              byte(0x001804) != relic_value && byte(0x001805) != relic_value
    return trigger
}

achievement(
    title="Bringer of Death", points=5,
    description="Defeat Punishment without any Angel Rings equipped",
    type="missable",
    id=579934,
    trigger=InBattle() && BattleFormation() == 0x07E && BattleBackground() == 0x0A && TriggerVictory() && CheckRelics(0xdc)
)

achievement(
    title="Fatal Portrait", points=5,
    description="Defeat Still Life without any Angel Rings, Jeweled Rings, or Ribbons equipped",
    type="missable",
    id=580653,
    trigger=InBattle() && BattleFormation() == 0x122 && BattleBackground() == 0x20 && TriggerVictory() && CheckRelics(0xdc) && CheckRelics(0xca) && CheckRelics(0xb5)
)

achievement(
    title="Thamasan Warriors", points=5,
    description="Defeat Hidon with only the three heroes from Thamasa",
    type="missable",
    id=0,
    trigger=InBattle() && BattleFormation() == 0x1d0 && BattleBackground() == 0x0A && TriggerVictory() &&
            bit0(0x001850) == 0 && bit0(0x001851) == 0 && bit0(0x001852) == 0 && bit0(0x001853) == 1 && 
            bit0(0x001854) == 0 && bit0(0x001855) == 0 && bit0(0x001856) == 0 && bit0(0x001857) == 1 && 
            bit0(0x001858) == 1 && bit0(0x001859) == 0 && bit0(0x00185a) == 0 && bit0(0x00185b) == 0 && 
            bit0(0x00185c) == 0 && bit0(0x00185d) == 0
)

//Cant figure out best way for the AndNexts so keeping this commented out
//achievement(
//    title="Survive the Shower", points=10,
//    description="Defeat second Sr. Behemoth with one attack and survive the counter attack",
//    type="missable",
//    id=0,
//    trigger=InBattle() && BattleFormation() == 0x01a8 && BattleBackground() == 0x0A && TriggerVictory()    
//)


//Limit Breaks or Desperation Attacks

///LimitLookup Char Name: [Name, Attack Index, Ability Value, Cheevo Name, id]
//
LimitLookup = {
    "Terra": ["Riot Blade", 0x02, 0xF0, "Esper Riot", 0],
    "Locke": ["Mirage Dive", 0x02, 0xF1, "Sabotage", 0],
    "Edgar": ["Royal Shock",0x02, 0xF4, "Shock of the King", 0],
    "Sabin": ["Tiger Break", 0x02, 0xF5, "King of the Jungle", 0],
    "Celes": ["Spinning Edge", 0x02, 0xF6, "Spin to Win", 0],
    "Shadow": ["Shadow Fang", 0x02, 0xF3, "What We Do in the Shadows", 0],
    "Cyan": ["Tsubame Gaeshi", 0x02, 0xF2, "Doma's Black Blade", 0],
    "Setzer": ["Red Card", 0x02, 0xF9, "Game Ejection", 0],
    "Mog": ["Moogle Rush", 0x02, 0xFA, "Running of the Moogles", 0],
    "Strago": ["Sabre Soul", 0x02, 0xF7, "Cut Through the Soul", 0],
    "Relm": ["Star Prism", 0x02, 0xF8, "Big Bang", 0],
    "Gogo": ["Massive Meteor", 0x02, 0xFB, "Tellah's Legacy", 0],
}

function LimitCheevos()
{
    for key in LimitLookup
    {
        value_list = LimitLookup[key]
        achievement(
            title=value_list[3], points=5,
            description="Use the desperation attack, " + value_list[0] + ", with " + key,
            id=value_list[4],
            trigger=InBattle() && byte(0x0000b5) == value_list[1] && byte(0x0000b6) == value_list[2] && prev(byte(0x0000b6)) != value_list[2]
        )
    }
}

LimitCheevos()

achievement(
    title="Jokes on You", points=5,
    description="Cast 7-7-7 Joker Doom with Slots",
    id=0,
    trigger=InBattle() && byte(0x0000b5) == 0x0f && byte(0x0000b6) == 0x94 && prev(byte(0x0000b6)) != 0x94
)

///Defeat and Steal
///lookup -> Enemy Name: [Cheevo Name, points, Name of stolen Item, battle background, enemy formation, item value from steal flag, cheevo id]
StealLookup = {
    "MagiMaster": ["End of the World as We Know It", 10, "Ragnarok", 0x162, 0x2D, 0x1b, 583219],
    "Sophia": ["Shining Stars of the Goddess", 10, "Three Stars", 0x1d5, 0x14, 0xce, 583725],
    "Zurvan": ["Maximum Muscle", 10, "Muscle Belt", 0x1d6, 0x16, 0x83, 583723],
    "Sephirot": ["Orb of Vishnu", 10, "Crystal Orb", 0x1d4, 0x1d, 0x9f, 583724],
}

function StealBeatCheevos()
{
    for key in StealLookup{
        value_list = StealLookup[key]
        achievement(
            title=value_list[0], points=value_list[1],
            description="Steal a " + value_list[2] + " from " + key + " and win the battle",
            type="missable",
            id=value_list[6],
            trigger=InBattle() && VictoryFanfare() && BattleFormation() == value_list[3] && BattleBackground() == value_list[4] &&
                    never(byte(0x000055) != 0xFF) && once(byte(0x002f35) == value_list[5]) && byte(0x002e72) == value_list[5]
            )
    }
}

StealBeatCheevos()

//Colliseum Lookup -> Item Name: [Cheevo Name, points, cooliesum item value, enemy fought value, coliseum win item, battle formation, chevvo_id]
ColliseumLookup = {
    "Lightbringer": ["True Bringer of Light", 5, 0x1b, 0xfe, 0x1a, 0x23f, 585485],
    "Shooting Star": ["Lost Star of the Chief", 5, 0xfa, 0x45, 0x4b, 0x23f, 585493],
    "Yeti Fur": ["Cozy Up", 5, 0xa0, 0x24, 0xa2, 0x23f, 585505],
    "Cactuar Suit": ["100000 Needles", 5, 0x8e, 0x27, 0xe6, 0x23f, 587344],
}

function ColliseumCheevos()
{
    for key in ColliseumLookup
    {
        value_list = ColliseumLookup[key]
        achievement(
            title=value_list[0], points=value_list[1],
            description="Win a " + key + " from the Dragon Neck's Coliseum",
            type="missable",
            id=value_list[6],
            trigger=InBattle() && VictoryFanfare() && BattleFormation() == value_list[5] && BattleBackground() == 0x1c &&
                    byte(0x000205) == value_list[2] && byte(0x000206) == value_list[3] && byte(0x000207) == value_list[4]
        )
    }
}

ColliseumCheevos()


