// Gauntlet Legends
// #ID = 3739

// Functions

function LevelId() => word(0x28d3ec)
function PriorLevelId() => prior(word(0x28d3ec))
function Player1Class() => byte(0x28cc78)
function BeatLevelFirstTime() => prev(word(0x28d43c)) < word(0x28d43c)
function InValidLevel() => LevelId() != 0x0d00 && LevelId() >= 0x0100 && LevelId() <= 0x0805
function RuneCount(val) => (prev(bitcount(0x28d448)) + prev(bitcount(0x28d448))) == val - 1 && measured((bitcount(0x28d448) + bitcount(0x28d448)) == val)
function ObeliskCount(val) => (prev(bitcount(0x28d440)) + prev(bitcount(0x28d441))) == val - 1 && measured((bitcount(0x28d440) + bitcount(0x28d441)) == val)
function Char1LevelUp(val) => prev(byte(0x28d424)) == val -1 && byte(0x28d424) == val
function ObtainCoin(count) => measured(tally(count, prev(dword(0x28d434)) < dword(0x28d434)))

// Lookup Tables
// level lookup key = mem value, val = [Name of level, bool to make cheevs, points if applicable]
LevelLookup = {
    0x0D00: ["Tower", false],

    0x0200: ["Valley of Fire", true, 1],
    0x0201: ["Dagger Peak", true, 1],
    0x0202: ["Cliffs of Desolation", true, 5],
    0x0203: ["Lost Cave", true, 5],
    0x0204: ["Volcanic Cavern", true, 5],
    0x0205: ["Dragon's Lair", false],
    
    0x0700: ["Poison Fields", true, 5],
    0x0100: ["Castle Courtyard", true, 5],
    0x0102: ["Tower Armory", true, 5],
    0x0103: ["Castle Treasury", true, 5],
    0x0105: ["Dungeon of Torment", true, 5],
    0x0104: ["Chimera's Keep", false],
    
    0x0300: ["City Ruins", true, 5],
    0x0301: ["Temple of the Magi", true, 5],
    0x0302: ["Mystic Pyramid", true, 5],
    0x0303: ["Tombs of the Undead", true, 5],
    0x0304: ["Genie's Sanctum", false],
    
    0x0400: ["Acid Swamp", true, 5],
    0x0401: ["Twisted Roots of Evil", true, 5],
    0x0402: ["Ancient Tree", true, 5],
    0x0403: ["Gnarled Branches", true, 5],
    0x0404: ["Web of the Queen Spider", false],
    
    0x0500: ["Desecrated Temple", true, 5],
    0x0501: ["Altar of Skorne", false],

    0x0800: ["Battle Trenches", true, 5],
    0x0803: ["Battle Trenches II", true, 5],
    0x0801: ["Fortified Towers", true, 5],
    0x0804: ["Fortified Towers II", true, 5],
    0x0802: ["Infernal Fortress", true, 5],
    0x0805: ["Infernal Fortress II", true, 5],
    
    0x0600: ["Gates of the Underworld", true, 10],
    0x0601: ["Throne of Skorn", false],
    
    0x0C00: ["Bonus Level 3", false],
    0x0C01: ["Bonus Level 4", false],
    0x0C02: ["Bonus Level 2", false],
    0x0C03: ["Bonus Level 1", false],
    0x0C04: ["Bonus Level 5", false],
    0x0703: ["Mausoleum", false]
}

ClassLookup = {
    0x00: "Warrior",
    0x01: "Valkyrie",
    0x02: "Wizard",
    0x03: "Archer",
    0x04: "Dwarf",
    0x05: "Knight",
    0x06: "Sorceress",
    0x07: "Jester",
    0x08: "Minotaur",
    0x09: "Falconess",
    0x0A: "Jackal",  
    0x0B: "Tigress",
}

CharColorLookup = {
    0: "Yellow",
    1: "Blue",
    2: "Red",
    3: "Green",
}


///Complete Level Cheevos
function LevelCheevos()
{
    for key in LevelLookup
    {
        lookup_val = LevelLookup[key]
        mem_val = key
        if lookup_val[1] == true
        {
            trigger = PriorLevelId() == mem_val && BeatLevelFirstTime() && LevelId() != mem_val
            achievement(title=lookup_val[0], description="Complete the Level, " + lookup_val[0], points=lookup_val[2], trigger=trigger) 
        }
    }
}

LevelCheevos()

///Beat Boss Cheevos

// Boss stuff Lookup
// Key = Boss Name, val = [defeat bit, level value, bit of special item, "Cheevo Name", points, "Special Item used Cheevo Name"]
BossLookup = {
    "Dragon":                  [bit1(0x28d44c), 0x0205, "Dragon Defeated", 10, "Dragon item used"],
    "Chimera":                 [bit2(0x28d44c), 0x0104, "Chimera Defeated", 10, "Chimera item used"],
    "Genie":                   [bit3(0x28d44c), 0x0304, "Genie Defeated", 10, "Genie item used"],
    "Spider Queen":            [bit4(0x28d44c), 0x0404, "Spider Defeated", 10, "Spider item used"],
    "Skorn of the Altar":      [bit5(0x28d44c), 0x0501, "Skorn Defeated", 25, ""],
    "Skorn of the Underworld": [bit6(0x28d44c), 0x0601, "Under Skorn Defeated", 50, ""],
}

function BossCheevos()
{
    for key in BossLookup
    {
        boss_name = key
        defeat_val = BossLookup[key][0]
        level_id = BossLookup[key][1]
        cheevo_title = BossLookup[key][2]
        points = BossLookup[key][3]
        trigger = LevelId() == level_id && prev(defeat_val) == 0 && defeat_val == 1
        achievement(title=cheevo_title, description="Defeat the " + boss_name, points=points, trigger=trigger) 
    }
}

BossCheevos()

//Acquire/use special Item Cheevos

//Item Lookup
//Key Item name, value = [mem of item, level id where to get it, level id where to use it, Name of use, Name of Boss to use]
SpecialItemLookup = {
    "Scimitar of Rasha":         [bit1(0x28d444), 0x0000, 0x0104, "Burn the Beast", "Chimera"],
    "Ice Axe of Untar":                  [bit2(0x28d444), 0x0000, 0x0205, "Freeze the Wyvern", "Dragon"],
    "Lamp of Dark Obstruction": [bit3(0x28d444), 0x0000, 0x0304, "Contain the Dark", "Genie"],
    "Toxic Bellows":            [bit4(0x28d444), 0x0000, 0x0404, "Poison the Queen", "Queen of Spiders"],
    "Soul Savior":              [bit5(0x28d444), 0x0500, 0x0000, "", ""],
}

function SpecialItemCheevos()
{
    for key in SpecialItemLookup
    {
        item_name = key
        item_val = SpecialItemLookup[key][0]
        level_id = SpecialItemLookup[key][1]
        trigger = LevelId() == level_id && prev(item_val) == 0 && item_val == 1
        achievement(title=item_name, description="Obtain the " + item_name, points=5, trigger=trigger)
        use_cheevo = SpecialItemLookup[key][3]
        if use_cheevo != ""
        {
            trigger = LevelId() == SpecialItemLookup[key][2] && prev(item_val) == 1 && item_val == 0
            achievement(title=use_cheevo, description="Use the " + item_name + " against the " + SpecialItemLookup[key][4], points=1, trigger=trigger)
        }
    }
}

SpecialItemCheevos()

//Other in Level Cheevos rune, Obelisk, Leveling
RuneLookup = [
    ["Finder", 1, 1, "a Rune"], 
    ["Hunter", 6, 5, "six Runes"],
    ["Master", 11, 10, "all Runes"]
]

for i in RuneLookup{
    trigger = InValidLevel() && RuneCount(i[1])
    achievement(title="Rune " + i[0], description="Obtain " + i[3], points=i[2], trigger=trigger)
}

ObeliskLookup = [
    ["Finder", 1, 1, "an Obelisk"], 
    ["Hunter", 4, 5, "four Obelisks"],
    ["Master", 9, 10, "all Obelisks"]
]

for i in ObeliskLookup{
    trigger = InValidLevel() && ObeliskCount(i[1])
    achievement(title="Obelisk " + i[0], description="Find " + i[3], points=i[2], trigger=trigger)
}

LevelUpLookup = [
    ["Whelp", 2, 1],
    ["Squire", 10, 5],
    ["Marquis", 25, 10],
    ["Viceroy", 50, 25],
    ["GOD", 99, 50],
]

for i in LevelUpLookup{
    trigger = InValidLevel() && Char1LevelUp(i[1])
    achievement(title=i[0], description="Level up a character to level " + i[1], points=i[2], trigger=trigger)
}

SpecialChars = [
    ["Minotaur", 0x08, "Minotaur cheevo Name"],
    ["Falconess", 0x09, "Falconess cheevo Name"],
    ["Jackal", 0x0A, "Jackal cheevo Name"],
    ["Tigeress", 0x0B, "Tigeress cheevo Name"],
]

for i in SpecialChars{
    trigger = InValidLevel() && Char1LevelUp(5) && Player1Class() == i[1]
    achievement(title=i[2], description="Level up a " + i[0] + " to level 5", points=10, trigger=trigger)
}

// Stat Cheevo Lookup Table
// Key = Stat name, Val= [memory location of stat, Name 1st tier, Name of 2nd tier, name of third tier]
StatLookup = {
    "Strength": [0x28cd58, "Gym Rat", "Player is Strong", "MR. UNIVERSE"],
    "Speed": [0x28cd64, "With the Quickness", "Ninja Speed", "Like the Flash"],
    "Armor": [0x28cd5c, "Realm Protector", "Divine Protection", "Shield of Legend"],
    "Magic": [0x28cd60, "Magical Apprentice", "Archmage", "He Who Shall Not Be Named"],
}

StatList = [[300.0, 1], [600.0, 5], [999.0, 10]]

for key in StatLookup{
    stat_name = key
    value_list = StatLookup[key]
    title_int = 1
    for i in StatList{
        trigger = prev(float(value_list[0])) < i[0] && float(value_list[0]) == i[0] && LevelId() == 0xd00
        achievement(title=value_list[title_int], description="Raise the stat, " + key + " to the value " + i[0], points=i[1], trigger=trigger)
        title_int = title_int + 1
    }
}

///Bonus Level lookup
// key = Bonus Level, val = [LevelId Value, num of coins, points, Title]
BonusLookup = {
    "Bonus Level 1": [0x0C03, 23, 05, "Run the Gauntlet"],
    "Bonus Level 2": [0x0C02, 23, 05, "Moonage Day Dream"],
    "Bonus Level 3": [0x0C00, 22, 10, "Office Space"],
    "Bonus Level 4": [0x0C01, 23, 10, "Stunning Landscape"],
    "Bonus Level 5": [0x0C04, 13, 25, "Trench Warfare"],
}

for key in BonusLookup{
    val_list = BonusLookup[key]
    trigger = ObtainCoin(val_list[1]) && LevelId() == val_list[0] && never(LevelId() != val_list[0])
    achievement(title=val_list[3], description="Obtain " + val_list[1] + " coins while in " + key, points=val_list[2], trigger=trigger)
}


achievement(title="Mausoleum", description="Complete the Level, Masoleum", points=10, 
            trigger=prev(byte(0x28cd50)) == 0x01 && byte(0x28cd50) == 0x07 && LevelId() == 0x0703
)



///Temp shot for docs pointer shit
//function midwayPointer() => 0x0073F810
//function isNotHome() => 0x056
//function GameMode() => 0x056

//function PointerCheckFunction(movie){
//    return_val = always_true()
//    return_val = return_val || (prev(dword(dword(midwayPointer())+movie ) + 0x20) != 0x01) && dword(dword(midwayPointer())+movie )+0x20 == 0x01
//    return_val = return_val || prev(dword(dword(midwayPointer())+movie ) + 0x24) != 0x01 && dword(dword(midwayPointer())+movie )+0x24 == 0x01
//    return return_val
//}

//function cinema(movie,name) {

//cinemaPoint = 


//achievement(
//    title = "hello", points = 0,
//    description = "unlock the movie", published = " ",
//    trigger = isNotHome() != 0x305f75 || isNotHome() != 0x315f6f || isNotHome() != 0x325f6f || isNotHome() != 0x00 && GameMode() == 0x00 && 
//    PointerCheckFunction(movie)
//)


//}

//cinema(0x23, "hello")
