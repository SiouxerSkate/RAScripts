// Vandal Hearts
// #ID = 11333


///NOTHING DONE FOR OUT OF THE FRYING PAN AS IT HAS A MORE COMPLICATED ISSUE THERE....

//// Global Function Def
function Chapter() => byte(0x14053c)
function Level() => byte(0x14053d)
function InBattleReset() => never(byte(0x14058c) != 0x03)
function WinCondition(num_hits) => repeated(num_hits, (byte(0x1405a8) == 0x02))


//// Stage Data Structure
//// Key: Level Value(ex "1-1"), 
//// val: [
////       hex value of chapter, 
////       hex value of level,
////       name of normal cheevo, 
////       points normal, 
////       name of Challenge cheevo, 
////       points challenge, 
////       challnege description pre, 
////       challenge descriotion post,
////       item memory list,
////       chest memory list,
////       Character Positions list,
////       Level_cap = Process if > 0
////      ]
LevelDict = {
    "1-1": [0x01, 0x01, "Valley of Thieves", 5, "Ambush, Avoided", 10, "Grab all items and ", "", [0x1405b8, 0x1405b9], [], [0x17f2d8, 0x17f350], 0],
    "1-2": [0x01, 0x02, "Dover District", 5, "Good Use of the Archer", 5, "Grab all items and ", "", [0x1405b8, 0x1405b9], [0x13d6db, 0x13d21f], [0x17f2d8, 0x17f350], 0],
    "1-3": [0x01, 0x03, "Palace Ruins", 5, "Poor Clay Golems!...", 10, "Grab all items and ", "", [0x1405b8], [0x13d9cd, 0x13d221, ], [0x17f440, 0x17f4b8], 0],
    "1-4": [0x01, 0x04, "Rhine Bridge", 5, "Don't Burn your Bridges", 5, "", "", [], [], [0x17ef90, 0x17f5a8, 0x17f620, 0x17f698, 0x17f710], 0],
    "1-5": [0x01, 0x05, "Sand Dunes of Sea", 5, "Entomophobia", 5, "", "", [], [], [0x17f350, 0x17f3c8, 0x17f440, 0x17f4b8, 0x17f530], 0],
    "1-6": [0x01, 0x06, "A Premonition of War", 10, "Master of the Seven Seas", 5, "", "", [], [], [0x17f620, 0x17f698, 0x17f710, 0x17f788, 0x17f800, 0x17f878], 0],
    "2-1": [0x02, 0x01, "Village of Yuzu", 5, "Village of Yuzu's Savior", 10, "Grab all items and ", " and without killing any villager", [0x1405b8, 0x1405b9], [0x13d427, 0x13d441], [0x17f080, 0x17f0f8, 0x17f170, 0x17f260, 0x17f3c8, 0x17f440, 0x17f4b8, 0x17f5a8, 0x17f698, 0x17f800, 0x17f788, 0x17f878, 0x17f8f0, 0x17f968, 0x17f9e0], 0],
    "2-2": [0x02, 0x02, "Ygdra Canyon", 5, "The X Marks the Spot", 5, "Grab all items and ", "", [0x1405b8, 0x1405b9], [0x13d21f, 0x13d93b], [0x17f710, 0x17f788, 0x17f800, 0x17f878, 0x17f8f0, 0x17f968, 0x17f9e0, 0x17fa58, 0x17fad0], 0],
    "2-3": [0x02, 0x03, "Loris Beach", 5, "Poison Immunity", 5, "Grab all items and ", "", [0x1405b8], [], [0x17f710, 0x17f788, 0x17f800, 0x17f878, 0x17f8f0, 0x17f968, 0x17f9e0, 0x17fa58, 0x17fad0], 0],
    "2-4": [0x02, 0x04, "Elevator Fun", 5, "Wrong on Many Levels", 5, "Grab all items and ", " (LVL<=16)", [0x1405b8, 0x1405b9], [0x13d23d, 0x13d8d7], [0x17f800, 0x17f878, 0x17f8f0, 0x17f968, 0x17f9e0, 0x17fa58, 0x17fad0, 0x17fb48, 0x17fbc0], 17],
    "2-5": [0x02, 0x05, "Enter the Castle", 5, "General Magnus, Defeated", 5, "", " (LVL<=16)", [], [], [0x17f620, 0x17f698, 0x17f710, 0x17f788, 0x17f800, 0x17f878, 0x17f8f0, 0x17f968, 0x17f9e0], 17],
    "2-6": [0x02, 0x06, "Traitor, Revealed", 10, "Here, Doggie Doggie", 10, "Grab all Items and ", " (LVL<=16)", [0x1405b8, 0x1405b9], [], [0x17f5a8, 0x17f620, 0x17f698, 0x17f710, 0x17f788, 0x17f800], 17],
    "3-1": [0x03, 0x01, "Plain of Sorrow", 5, "Surrounded", 5, "", " (LVL<=17)", [], [], [0x17f260, 0x17f2d8], 18],
    "3-2": [0x03, 0x02, "Plain of Sorrow, Revisited", 5, "Master of Tower Defence", 10, "", " and saving all towers (LVL<=17)", [], [], [0x17f4b8, 0x17f530, 0x17f5a8, 0x17f260, 0x17f2d8, 0x17f350, 0x17f3c8], 18],
    "3-3": [0x03, 0x03, "3 Years Later...", 5, "Friends, Reunited", 10, "Grab all items and ", " (LVL<=18)", [0x1405b8, 0x1405b9], [0x13d9dd, 0x13d19d], [0x17f878, 0x17f8f0, 0x17f710, 0x17f968, 0x17f788, 0x17f800], 19],
    "3-4": [0x03, 0x04, "Forward!", 5, "Nice Formation", 5, "Grab all items and ", " (LVL<=18)", [0x1405b8, 0x1405b9], [0x13d945, 0x13d21f], [0x17f4b8, 0x17f530, 0x17f5a8, 0x17f620, 0x17f698, 0x17f710], 19],
    "3-5": [0x03, 0x05, "If This is your Mind", 5, "Then Let no One Escape", 10, "Grab all items and ", " (LVL<=19)", [0x1405b8], [], [0x17f440, 0x17f5a8, 0x17f4b8, 0x17f620, 0x17f530, 0x17f698], 20],
    "3-6": [0x03, 0x06, "Prison Break", 5, "Hello, Mimic", 10, "Grab all items and ", " (LVL<=19)", [], [0x13d33d, 0x13d32d, 0x13d52f, 0x13d8b9], [0x17f3c8, 0x17f440, 0x17f4b8], 20],
    "3-7": [0x03, 0x07, "Into the Fire!", 10, "Out of the Frying Pan...", 25, "Grab all items and ", " (LVL<=20)", [0x1405b8, 0x1405b9], [], [0x17f2d8, 0x17f350], 21],
    //Out of teh Frying Pan needs more logic as the character memory locations shifts mid battle. 
    "4-1": [0x04, 0x02, "Khanos City", 5, "Escaped Crimson Death", 10, "Grab all items and ", " (LVL<=21)", [0x1405b8], [0x13d7b5, 0x13d4a9], [0x17f800, 0x17f878, 0x17f8f0, 0x17f968, 0x17f9e0, 0x17fa58, 0x17fad0, 0x17fb48, 0x17fbc0, 0x17fc38, 0x17fcb0], 22],
    "4-2": [0x04, 0x03, "Great Masai Forest", 5, "Dark Forest I Summon Thee", 5, "Grab all items and ", " (LVL<=21)", [0x1405b8, 0x1405b9], [], [0x17f9e0, 0x17fa58, 0x17fad0, 0x17fb48, 0x17fbc0, 0x17fc38, 0x17fcb0, 0x17fd28, 0x17fda0, 0x17fe18, 0x17fe90], 22],
    "4-3": [0x04, 0x04, "Trade City Kerachi", 5, "Sketchy Trade Deal", 5, "", " (LVL<=22)", [], [], [0x17f710, 0x17fa58, 0x17f800, 0x17f878, 0x17f8f0, 0x17f968, 0x17f9e0, 0x17fad0, 0x17fb48, 0x17fbc0], 23],
    "4-4": [0x04, 0x05, "Magic Train Railroad", 5, "Hijacked The Train", 5, "Grab all items and ", " (LVL<=22)", [0x1405b8], [], [0x17f788, 0x17f800, 0x17f878, 0x17f8f0, 0x17f968, 0x17f9e0, 0x17fa58, 0x17fad0, 0x17fb48, 0x17fbc0, 0x17fc38], 23],
    "4-5": [0x04, 0x06, "The Successor", 10, "Destroyed the Death Device", 10, "Grab all items and ", " (LVL<=24)", [], [0x13dc6b, 0x13d427], [0x17fad0, 0x17fb48, 0x17fbc0, 0x17fc38, 0x17fcb0, 0x17fd28, 0x17fda0, 0x17fe18, 0x17fe90, 0x17ff08, 0x17ff80], 25],
    "5-1": [0x05, 0x01, "Wart Bay", 5, "Get Me Off This Boat", 5, "Grab all items and ", " (LVL<=25)", [], [0x13d225], [0x17f620, 0x17f698, 0x17f710, 0x17f788, 0x17f800, 0x17f878, 0x17f8f0, 0x17f968, 0x17f9e0, 0x17fa58, 0x17fad0, 0x17fb48], 26],
    "5-2": [0x05, 0x02, "Torog Mountains", 5, "Blood Soaked Snow", 10, "Grab all items and ", " (LVL<=26)", [0x1405b8, 0x1405b9], [], [0x17f710, 0x17f788, 0x17f800, 0x17f878, 0x17f8f0, 0x17f968, 0x17f9e0, 0x17fa58, 0x17fad0, 0x17fb48, 0x17fbc0, 0x17fc38], 27],
    "5-3": [0x05, 0x03, "Tsukue Plains", 5, "Save Little Leena", 5, "", " (LVL<=26)", [], [], [0x17f698, 0x17f710, 0x17f710, 0x17f788, 0x17f800, 0x17f878, 0x17f8f0, 0x17f968, 0x17f9e0, 0x17fa58, 0x17fad0, 0x17fb48, 0x17fbc0], 27],
    "5-4": [0x05, 0x04, "Smoking Bones Cave", 5, "Defeat the Fire Dragon", 10, "Grab all items and ", " (LVL<=27)", [0x1405b8], [0x13d849], [0x17f698, 0x17f710, 0x17f710, 0x17f788, 0x17f800, 0x17f878, 0x17f8f0, 0x17f968, 0x17f9e0, 0x17fa58, 0x17fad0, 0x17fb48, 0x17fbc0], 28],
    "5-5": [0x05, 0x05, "Frontier Village", 5, "Flames Of Judgement", 25, "Grab all items and ", " (LVL<=27)", [0x1405b8, 0x1405b9], [], [0x17f8f0, 0x17f968, 0x17f9e0, 0x17fa58, 0x17fad0, 0x17fb48, 0x17fbc0, 0x17fc38, 0x17fcb0, 0x17fd28, 0x17fda0], 28],
    "5-6": [0x05, 0x06, "The Legacy", 10, "Contract Of Blood", 10, "Grab all items and ", " (LVL<=28)", [], [0x13d1a7, 0x13d7c5], [0x17f350, 0x17f3c8, 0x17f440, 0x17f4b8, 0x17f530, 0x17f5a8, 0x17f620, 0x17f698, 0x17f710, 0x17f788, 0x17f800, 0x17f878], 29],
    "6-1": [0x06, 0x02, "Fort Gareth", 5, "Mindless Killing Machine", 10, "Grab all items and ", "", [0x1405b8], [], [0x17fa58, 0x17fad0, 0x17fb48, 0x17fbc0, 0x17fc38, 0x17fcb0, 0x17fd28, 0x17fda0, 0x17fe18, 0x17fe90, 0x17ff08, 0x17ff80], 0],
    "6-2": [0x06, 0x03, "Cobalt Beach", 5, "What Is This Place?", 10, "Grab all items and ", "", [], [0x13d2a5, 0x13d5b5, 0x13d85d], [0x17f698, 0x17f710, 0x17f710, 0x17f788, 0x17f800, 0x17f878, 0x17f8f0, 0x17f968, 0x17f9e0, 0x17fa58, 0x17fad0, 0x17fb48, 0x17fbc0], 0],
    "6-3": [0x06, 0x04, "Capital Shumeria", 5, "Xeno's End", 10, "Grab all items and ", "", [0x1405b8], [], [0x17f788, 0x17f800, 0x17f878, 0x17f8f0, 0x17f968, 0x17f9e0, 0x17fa58, 0x17fad0, 0x17fb48, 0x17fbc0, 0x17fc38, 0x17fcb0], 0],
    "6-4": [0x06, 0x05, "Capital Shumeria II", 25, "A Fool's Epitaph", 10, "", "", [], [], [0x17f698, 0x17f710, 0x17f710, 0x17f788, 0x17f800, 0x17f878, 0x17f8f0, 0x17f968, 0x17f9e0, 0x17fa58, 0x17fad0, 0x17fb48, 0x17fbc0], 0],
}

//// Progression Cheevos
function Prog()
{
    for key in LevelDict
    {
        lookup_val = LevelDict[key]
        trigger = Chapter() == lookup_val[0] && Level() == lookup_val[1] && WinCondition(300) && InBattleReset()
        achievement(title=lookup_val[2], description="Clear Battle " + key + ".", points=lookup_val[3], trigger=trigger)
    }
}

Prog()

function ItemProcess(item_list)
{
    item_trigger = always_true()
    for i in item_list
    {
        item_trigger = item_trigger && trigger_when(byte(i) == 1)
    }
    return item_trigger
}

function ChestProcess(chest_list)
{
    chest_trigger = always_true()
    for i in chest_list
    {
        chest_trigger = chest_trigger && trigger_when(byte(i) == 0)
    }
    return chest_trigger
}

function EnemyDead(enemy_list)
{
    enemy_trigger = always_true()
    for i in enemy_list
    {
        enemy_trigger = enemy_trigger && byte(i) == 0
    }
    return enemy_trigger
}

function CharNoDeathProcess(char_list)
{
    char_trigger = always_true()
    for i in char_list
    {
        char_trigger = char_trigger && word(i) > 0
    }
    return char_trigger
}

function LevelCapProcess(char_list, cap)
{
    cap_trigger = always_true()
    if cap > 0
    {
        for i in char_list
        {
    
            cap_trigger = cap_trigger && byte(i - 0x2F) < cap
        }  
    }
    return cap_trigger
}

function Challenge()
{
    for key in LevelDict
    {
        if key != "3-7"
        {
            lookup_val = LevelDict[key]
            trigger = Chapter() == lookup_val[0] && Level() == lookup_val[1] && trigger_when(WinCondition(300)) && 
                      ItemProcess(lookup_val[8]) && ChestProcess(lookup_val[9]) && CharNoDeathProcess(lookup_val[10]) && LevelCapProcess(lookup_val[10], lookup_val[11]) && InBattleReset()
            achievement(title=lookup_val[4], description=lookup_val[6] + "Clear Battle " + key + " without deaths" + lookup_val[7] + ".", points=lookup_val[5], trigger=trigger)
        }
    }
}

Challenge()

///Class Advancedment
AshClassDict = {
    "Baby Steps": ["Champion", 0x1402f4, 0x0A, 5],
    "Ready for Some Killing": ["Paragon", 0x1402f5, 0x0A, 10],
    "Feel The Power!": ["Vandalier", 0x1402f3, 0x01, 25],
}

//// key - Name of cheevo, val - [Name of class, [memory start list], value of memory, add for advance class, vlaue of advance, points]
OtherClassDict = {
    "Excalibur Here I Go!": ["Swordsman", [0x140315, 0x1403bf, 0x1403e1], 0, 1, 0x0A, 5],
    "1x1 Anyone?": ["Duelist", [0x140315, 0x1403bf, 0x1403e1], 0, 2, 0x0A, 10],
    "Hit me Harder!": ["Guardsmen", [0x140315, 0x1403bf, 0x1403e1], 1, 1, 0x0A, 5],
    "What, no Jumps?": ["Dragoon", [0x140315, 0x1403bf, 0x1403e1], 1, 2, 0x0A, 10],
    "Legolas in Training": ["Bowman", [0x140337, 0x14039D, 0x140403, 0x140469], 0, 1, 0x0A, 5],
    "Just Like an Elf!": ["Sniper", [0x140337, 0x14039D, 0x140403, 0x140469], 0, 2, 0x0A, 10],
    "Growing Wings": ["Hawknight", [0x140337, 0x14039D, 0x140403, 0x140469], 1, 1, 0x0A, 5],
    "Up and Away!": ["Sky Lord", [0x140337, 0x14039D, 0x140403, 0x140469], 1, 2, 0x0A, 10],
    "Gimme my Mage Hat!": ["Sorceror", [0x140359, 0x140447], 0, 1, 0x0A, 5],
    "Salamander, Anyone?": ["Enchanter", [0x140359, 0x140447], 0, 2, 0x0A, 1],
    "His Holyness": ["Bishop", [0x14037b, 0x140425], 0, 1, 0x0A, 5],
    "Next Step, Pope!": ["Archbishop", [0x14037b, 0x140425], 0, 2, 0x0A, 10],
    "Who Needs Spells?": ["Monk", [0x140359, 0x14037b, 0x140425, 0x140447], 1, 1, 0x0A, 5],
    "Less Stealthy than Expected": ["Ninja", [0x140359, 0x14037b, 0x140425, 0x140447], 1, 2, 0x0A, 10],
}

function ClassCheevos()
{
    for key in AshClassDict
    {
        lookup_val = AshClassDict[key]
        achievement(title=key, 
                   description="Advance Ash to " + lookup_val[0] + " class", 
                   trigger=prev(byte(0x123391)) == 0x39 && prev(byte(lookup_val[1])) == 0 && byte(lookup_val[1]) >= lookup_val[2],
                   points=lookup_val[3]
                  )
    }
    
    for key in OtherClassDict
    {
        lookup_val = OtherClassDict[key]
        class_or_trigger = always_false()
        for i in lookup_val[1]
        {
            class_or_trigger = class_or_trigger || (byte(i) == lookup_val[2] && prev(byte(i + lookup_val[3])) == 0 && byte(i + lookup_val[3]) >= lookup_val[4]) 
        }
        achievement(title=key, 
                   description="Advance someone to the " + lookup_val[0] + " class", 
                   trigger=prev(byte(0x123391)) == 0x39 && class_or_trigger,
                   points=lookup_val[5]
                  )
    }
}
    
ClassCheevos()


/// Trial Dict
/// key = Trial name, val - [vlaue of word(0x0f0000), byte(val) where chest is, earliest Chapter, earliest level]
TrialDict = {
    "Nova": [0x009644, 0x13d53f, 1, 5, "Nova Trial"],
    "Earth": [0x009114, 0x13d5c1, 2, 3, "Earth Trial"],
    "Mana": [0x0095e4, 0x13db43, 3, 5, "Mana Trial"],
    "Chaos": [0x009a1c, 0x13d229, 3, 5, "Chaos Trial"],
    "Logos": [0x009f14, 0x13da41, 4, 5, "Logos Trial"],
    "Heaven": [0x008e74, 0x13d19d, 6, 1, "Always Keep the Faith"],
}

function TrialCheev()
{
    for key in TrialDict
    {
        lookup_val = TrialDict[key]
        achievement(title=lookup_val[4],
                    description="Clear " + key + " Trial and Grab the " + key + " Prism",
                    trigger=never(word(0x0f0000) != lookup_val[0]) && byte(lookup_val[1]) == 0 && Chapter() >= lookup_val[2] && WinCondition(700) && InBattleReset(),
                    points=10
        )
    }
}

TrialCheev()

///Trial Challenge Dict
///key - name of cheev0, val - [vlaue of word(0x0f0000), byte(val) where chest is, challenge type(1-kill all, 2-kill nonene, 3- no deaths), list values to check]
TrialChallengeDict = {
    "Mimic Treasure Hunt": ["Mana Trial", "Clear Mana Trial, grab the Mana Prism, and kill all Mimics", 0x0095e4, 0x13db43, 1, [0x13d21f, 0x13d22b, 0x13d237, 0x13d3ab, 0x13d3b7, 0x13d3c3, 0x13d52b, 0x13d537, 0x13d543, 0x13d6b7, 0x13d6c3, 0x13d837, 0x13d843, 0x13d84f, 0x13d9c3, 0x13d9cf, 0x13d9db, 0x13db4f, 0x13db5b]],
    "No Mimes Here": ["Mana Trial", "Clear Mana Trial and Grab the Mana Prism without making a Mimic appear", 0x0095e4, 0x13db43, 2, [0x13d21f, 0x13d22b, 0x13d237, 0x13d3ab, 0x13d3b7, 0x13d3c3, 0x13d52b, 0x13d537, 0x13d543, 0x13d6b7, 0x13d6c3, 0x13d837, 0x13d843, 0x13d84f, 0x13d9c3, 0x13d9cf, 0x13d9db, 0x13db4f, 0x13db5b]],
    "Dark Pyramid": ["Logos Trial", "Clear Logos Trial and Grab the Logos Prism Without Any Deaths", 0x009f14, 0x13da41, 3, [0x17fc38, 0x17fcb0, 0x17fd28, 0x17fda0, 0x17fe18, 0x17fe90, 0x17ff08, 0x17ff80, 0x17fff8, 0x180070, 0x1800e8, 0x180160]],
    "Star Road of Death": ["Heaven Trial", "Clear Heaven Trial and Grab the Heaven Prism Without Any Deaths", 0x008e74, 0x13d19d, 3, [0x17fc38, 0x17fcb0, 0x17fd28, 0x17fda0, 0x17fe18, 0x17fe90, 0x17ff08, 0x17ff80, 0x17fff8, 0x180070, 0x1800e8, 0x180160]],
}

function TrialChallengeCheev()
{
    for key in TrialChallengeDict
    {
        lookup_val = TrialChallengeDict[key]
        if lookup_val[4] == 1
        {
            trigger_addition = always_true()
            for i in lookup_val[5]
            {
                trigger_addition = trigger_addition && byte(i) != 0x65 
            }
            points = 10
            
        }
        else if lookup_val[4] == 2
        {
            trigger_addition = always_true()
            for i in lookup_val[5]
            {
                trigger_addition = trigger_addition && byte(i) == 0x65 
            }
            points = 01
        }
        else if lookup_val[4] == 3
        {
            trigger_addition = always_true()
            for i in lookup_val[5]
            {
                trigger_addition = trigger_addition && word(i) != 0 
            }
            points = 25
        }
        achievement(
            title=key,
            description=lookup_val[1],
            points=points,
            trigger=never(word(0x0f0000) != lookup_val[2]) && byte(lookup_val[3]) == 0 && WinCondition(700) && InBattleReset() && trigger_addition 
        )
    }
}

TrialChallengeCheev()

achievement(
    title="Crimson Guard? Hah!",
    points=25,
    description="Kill All Enemies in 4-1 and Clear Level Without Deaths(LVL <= 21)",
    trigger=Chapter() == 4 && Level() == 2 && trigger_when(WinCondition(300)) && 
            CharNoDeathProcess([0x17f800, 0x17f878, 0x17f8f0, 0x17f968, 0x17f9e0, 0x17fa58, 0x17fad0, 0x17fb48, 0x17fbc0, 0x17fc38, 0x17fcb0]) && 
            LevelCapProcess([0x17f800, 0x17f878, 0x17f8f0, 0x17f968, 0x17f9e0, 0x17fa58, 0x17fad0, 0x17fb48, 0x17fbc0, 0x17fc38, 0x17fcb0], 22) &&
            ChestProcess([0x17ef90, 0x17f008, 0x17f080, 0x17f0f8, 0x17f170, 0x17f1e8, 0x17f260, 0x17f2d8, 0x17f350, 0x17f3c8, 0x17f440, 0x17f4b8, 0x17f530, 0x17f5a8, 0x17f620, 0x17f698, 0x17f710, 0x17f788]) &&
            InBattleReset()
)

MoneyBagsDict = {
    "Gold Bags": [5, "150k", 0x0249f0],
    "Buckets of Gold": [10, "300k", 0x0493e0],
}

function MoneyBags()
{
    for key in MoneyBagsDict
    {
        lookup_val = MoneyBagsDict[key]
        achievement(
            title=key,
            points=lookup_val[0],
            description="Save " + lookup_val[1] + " Gold.",
            trigger=prev(Chapter()) != 0 && prev(Chapter()) <= 6 && prev(Level()) != 0 && prev(Level()) <= 7 && prev(dword(0x140700)) < lookup_val[2] && dword(0x140700) >= lookup_val[2]
            )
    }
}

MoneyBags()