// ~Hack~ Chrono Trigger+
// #ID = 17944
function RoomId() => word(0x000100)
function MusicId() => byte(0x0029AE)
function Gold() => tbyte(0x002C53)
function EarnSilverPoints(amount) => (byte(0x010052) - prev(byte(0x010052))) == amount
function StoryProgression() => byte(0x10000)
function HpToZero(location) => word(location) == 0 && prev(word(location)) != 0
function HpPriorZero(location) => word(location) == 0 && prior(word(location)) != 0

//BasicBattleCheevos Key-Enemy: [Title, description addition, points, RoomID, enemyID location, Enemy ID value, HP location, tyep, cheevo id]
BattleLookup = {
    "Masa & Mune": ["Ride the Wind", "", 5, 0x97, 0x00612d, 0x99, 0x006130, "progression", 586454],
    "Nizbel": ["Tighten Your Tongue", " in the Reptite Lair", 5, 0x121, 0x005FAD, 0x9B, 0x005FB0, "progression", 586417],
    "Magus": ["Black Winds Howl", " in his castle", 10, 0xac, 0x005FAD, 0xF9, 0x005FB0, "progression", 587880],
    "Azala & Black Tyranno": ["Twinkle Twinkle Little Red Star", " in the Tyrano Lair", 5, 0x12d, 0x005FAD, 0xbc, 0x005FB0, "progression", 588964],
    "Frog King": ["A True Hero", " in the Frog Woods", 5, 0xcc, 0x005FAD, 0xc3, 0x005FB0, "", 589819],
    "Giga Gaia": ["Tears of Woe", " on the summit of Mt. Woe", 10, 0x18d, 0x00612d, 0xd1, 0x006130, "progression", 589842],
    "Prophet": ["The False Prophet", " in Kajar", 5, 0x1cd, 0x005fad, 0xc9, 0x005FB0, "missable", 590492],
    //The space in Magus below is intentional so we can have both Magus fights in one data structure
    "Magus ": ["A Score Settled", " in a solo battle with Frog and avenge a dear friend", 10, 0x1ac, 0x005fad, 0xfa, 0x005FB0, "missable", 590875],
    "Rust Tyrano": ["Shake Off the Rust", " in the Giant's Claw", 5, 0xc5, 0x005FAD, 0xbd, 0x005fb0, "", 600089],
    "Son of Sun": ["Soaked Up the Sun", " in the Sun Palace of 23000 AD", 5, 0xFB, 0x005FAD, 0xf6, 0x005fb0, "", 601441],
    "Mother Brain": ["Stop the Genocide", " in Geno Dome", 5, 0x10c, 0x005FAD, 0xBE, 0x005fb0, "", 601444],
    "Diego": ["Clever Girl", " in the Dactyl Nest of 1999", 5, 0x119, 0x0061ad, 0xC5, 0x0061b0, "", 602897],
    //"Zeal": ["Nothing Can Live Forever", " on top of the Black Omen", 10, 0x6b, 0x005fad, 0xb0, 0x005fb0, "", 603659],
    
}

function BattleCheevos()
{
    for key in BattleLookup
    {
        value_list = BattleLookup[key]
        achievement(
            title=value_list[0], points=value_list[2], 
            description="Defeat " + key + value_list[1],
            type=value_list[7], id=value_list[8],
            trigger=RoomId() == value_list[3] && word(value_list[4]) == value_list[5] && HpToZero(value_list[6])
        )
    }
}

BattleCheevos()

//ChallengeBattles Key->enemy name: [title, additional description, points, type, enemyId location, enemy ID, additional trigger, cheevo ID]
//Challenges and or progression that need additional details for better triggereing location
ChallengeLookup = {
    "Yakra": ["Allowedith the Honor", " and Save Queen Leene", 5, "progression", 0x005FAD, 0x90,
              never(RoomId() != 198) && HpPriorZero(0x005fb0) && MusicId() == 0x1B && repeated(50, prev(MusicId()) == 0x29),
              586398,],
    "Dragon Tank": ["Beat the Unbeatable", "", 5, "progression", 0x005FAD, 0x93, 
                    word(0x000100) == 28 && byte(0x0029AE) == 41 && prev(byte(0x001E01)) != 154 && byte(0x001E01) == 154, 
                    586404,],
    "Guardian and Bits": ["Bit Blocker", " without triggering a Delta Attack", 5, "missable", 0x005FAD, 0xD4, 
                          disable_when(byte(0x00B18C) == 26, until=word(0x000100) != 219) && prev(word(0x005FB0)) > 0 &&
                          trigger_when(word(0x005FB0) == 0),
                          586406, ],
    "Heckran": ["Prehistoric Slam Dance", " with Ayala in the party", 5, "missable", 0x005FAD, 0xA9, 
                word(0x000100) == 47 && prev(word(0x005FB0)) > 0 && trigger_when(word(0x005FB0) == 0) && 
                (byte(0x002980) == 5 || byte(0x002981) == 5 || byte(0x002982) == 5),
                586422, ],
    "Magus": ["Brought Fists to a Magic Fight", " in his castle with a party of Frog, Ayala, and Robo", 10, "missable", 0x005FAD, 0xF9, 
              RoomId() == 0xAC && prev(word(0x005FB0)) > 0 && trigger_when(word(0x005FB0) == 0) && 
                (byte(0x002980) == 5 || byte(0x002981) == 5 || byte(0x002982) == 5) && (byte(0x002980) == 3 || byte(0x002981) == 3 || byte(0x002982) == 3),
                587881],
    "Mud Imp": ["Mud Blood", " without felling any of the beasts", 5, "missable", 0x0062ad, 0x0f, 
                RoomId() == 0x184 && prev(word(0x0062b0)) > 0 && trigger_when(word(0x0062b0) == 0) && word(0x005fb0) > 0 && word(0x0061b0) > 0,
                589835],
    //"Golem": ["BLUURP", " in the kingdom of Zeal", 5, "missable", 0x005FAD, 0x95, 
    //          never(RoomId() != 0x14C) && HpPriorZero(0x005fb0) && MusicId() == 0x0 && repeated(50, MusicId() == 0x29), 589274]
    "Dalton": ["True King of Zeal", " on the Blackbird with only Magus with him being leader of the party - Ayala cannot be in the party", 5, "missable", 0x005FAD, 0xA2,
               RoomId() == 0x179 && prev(word(0x005FB0)) > 0 && trigger_when(word(0x005FB0) == 0) && byte(0x002980) == 6 && 
               byte(0x002981) != 0x05 && byte(0x002982) != 0x05 && byte(0x005df3) == 0 && byte(0x005df5) == 0,
               593493],
    "Yakra XIII": ["Order in the Court", "in Guardia Castle 1000AD", 5, "", 0x005FAD, 0xc7, 
                   never(RoomId() != 0x1b6) && HpPriorZero(0x005fb0) && MusicId() == 0x1D && repeated(50, prev(MusicId()) == 0x29),
                   600090],
}

function ChallengeCheevos()
{
    for key in ChallengeLookup
    {
        value_list = ChallengeLookup[key]
        achievement(
            title=value_list[0], points=value_list[2], 
            description="Defeat " + key + value_list[1],
            type=value_list[3], id=value_list[7],
            trigger=word(value_list[4]) == value_list[5] && value_list[6]
        )
    }
}

ChallengeCheevos()

//MapBasedCheevos Title: [description, points, type, RoomId(delta), RoomId(), StoryProgression Trigger, id]
MapBasedLookup = {
    "What's This Mom?": ["Venture to where no son should be allowed", 1, "", 0x01, 0xC1, bit0(0x010140) == 1, 586356],
    //"Come Now, \"Sir\" Crono": ["Team up with Lucca to save Queen Leene", 1, "progression", 0x6C, 0x78, prev(byte(0x002981)) == 128 && byte(0x002981) == 2, 586388], uses a priorMpa
    "Hang on to Your Butts": ["Enter a Time Portal with four team members", 5, "progression", 0xE3, 0x1D0, StoryProgression() == 0x45, 586414],
    "Where in Time?": ["Navigate the End Of Time", 1, "", 0x1D0, 0x1C6, StoryProgression() >= 0x4B, 586416],
    "Precision Agricuture": ["Help Fiona in the Middle Ages, and reunite with Robo", 5, "", 0x39, 0x1B4, bit3(0x1019e) == 0, 599912],
    "Party Like It's 1999": ["Enter a portal inside the Cult Of Lavos", 5, "", 0x1e2, 0xc0, always_true(), 601934],
    "And the Oscar Goes To": ["Go to a cinematic viewing of 'Masamune'", 1, "", 0x1eb, 0x6A, always_true(), 601938],
    "Magic Skip": ["Skip Magus's Castle in a NG+", 1, "", 0xa6, 0x1bf, always_true(), 609007]
}

function MapBasedCheevos()
{
    for key in MapBasedLookup
    {
        value_list = MapBasedLookup[key]
        achievement(
            title=key, points=value_list[1],
            description=value_list[0], type=value_list[2],
            id=value_list[6],
            trigger=prev(RoomId()) == value_list[3] && RoomId() == value_list[4] && value_list[5]
        )
    }
}

MapBasedCheevos()

//BitEventCheevosLookup "title": ["description", points, mapId, bit flipped in event, additional trigger, tyoe, cheevo id]
EventLookup = {
    "Eternal Repose": ["Learn Poyozo Dance", 5, 0xc2, bit7(0x00285a), always_true(), "missable", 589273],
    "Epochly Latered": ["Obtain Belthasar greatest creation", 5, 0xF3, bit0(0x0100cd), always_true(), "progression", 589808],
    "Ozzie's in a Pickle": ["Defeat Ozzie in his fort before scaling Mt. Woe", 10, 0xb5, bit2(0x010216), bit7(0x101a1) == 1 && StoryProgression() < 0xb4, "missable", 589820],
    "Ghost of a Hero": ["Power up the Masamune to its full potential", 5, 0x49, bit6(0x101a3), always_true(), "", 599529],
    "Lara's Legs": ["Save someone close to Lucca", 5, 0x04, bit7(0x1007c), always_true(), "missable", 599913],
    "It's So Cute": ["Purchase a Octobino", 1, 0xc0, bit1(0x010208), always_true(), "", 601941],
    "I'm Gonna Pop Some Tags": ["Purchase Some Moon Armor", 5, 0xc0, bit1(0x010226), always_true(), "", 601959],
    "Enhanced Chakra": ["Purchase the Medina Enhancement Chip", 1, 0x1c7, bit4(0x010226), always_true(), "", 602129],
    "Play With Power": ["Purchase a Power Chip", 1, 0x1a5, bit3(0x010248), always_true(), "", 602131],
    "Rat Race": ["Win a pair of Speed Shoes", 1, 0x10A, bit4(0x002896), always_true(), "", 602132],
    "Croaker": ["Win an Accuracy Enhancement Chip", 1, 0x10A, bit6(0x010226), always_true(), "", 602133],
    "Down the Drain": ["Obtain a Venus Bow in the Sewers", 1, 0xec, bit0(0x01028a), always_true(), "", 602158],
    "Welcome to the Thunder Dome": ["Win the fighting tournament as the Time Crunchers", 10, 0xcf, bit4(0x010214), always_true(), "missable", 602160],
    "Malware Bites": ["Stop the malicous update to the artifical lifeforms", 5, 0x86, bit6(0x010212), always_true(), "", 602162],
    "Sparkle Of Life": ["Gain the ability to fly the epoch around in 1999", 5, 0x18c, bit0(0x00288f), always_true(), "", 602996],
    "Sleep Well": ["Learn Spin Strike", 5, 0x124, bit7(0x002859), always_true(), "", 603012],
    "Neuga, Ziena, Zieber, Zom...": ["Purchase a statue of Middle Ages dictator", 1, 0xc0, bit2(0x010208), always_true(), "", 603367], 
    "Dreams of Children": ["Learn Grand Dream", 5, 0x8f, bit7(0x00285b), always_true(), "", 603369],
}

function EventCheevo()
{
    for key in EventLookup
    {
        value_list = EventLookup[key]
        achievement(
            title=key, points=value_list[1],
            description=value_list[0], type=value_list[5],
            id=value_list[6],
            trigger=RoomId() == value_list[2] && prev(value_list[3]) == 0 && value_list[3] == 1 && value_list[4]
        )
    }
}

EventCheevo()

//StoryProgressLopkup "title": ["description", points, mapID, delta value, trigger value, type, cheevo id
StoryLookup = {
    "Fall of a Nation": ["View the fate of those who challenge Lavos", 5, 0x1a7, 0xc9, 0xcb, "progression", 590837],
    "Cult of Lavos": ["Watch the Black Omen rise", 5, 0x1dd, 0xd3, 0xd4, "progression", 593504],
    "Crono Trigger": ["Use the Time Egg to save a dear friend", 5, 0x1d0, 0xd4, 0xd5, "progression", 596345]
    
}

function StoryCheevo()
{
    for key in StoryLookup
    {
        value_list = StoryLookup[key]
        achievement(
            title=key, points=value_list[1],
            description=value_list[0], type=value_list[5],
            id=value_list[6],
            trigger=RoomId() == value_list[2] && prev(StoryProgression()) == value_list[3] && StoryProgression() == value_list[4]     )
    }
}

StoryCheevo()


//TreasureHuntingLookup cheevo name: [description, points, StroyProgressionValue, [memory bits], number of chests, "missable flag", cheevo_id]
TreasureLookup = {
     "Great Scott!": ["in present time and before going back to the future", 5, 0x24, 
                      [bit2(0x010001), bit3(0x010001), bit7(0x010002), bit3(0x010004), bit4(0x010004), bit5(0x010004), bit6(0x010004), bit7(0x010004),
                       bitcount(0x010005), bitcount(0x01000d), bit3(0x01001e), bit2(0x01001f), ],
                      25, "missable", 586403],
     "Prison Raid": ["during Guardia Prison sequence", 5, 0x2E,
                     [bit1(0x010002), bitcount(0x010003), bit0(0x010004), bit6(0x01001F)], 
                     11, "missable", 586405],
     "Future Primitive": ["on the first visit to the Future: Lab16, Arris Dome, Sewers, Lab32, Factory", 5, 0x42,
                          [bit5(0x01000E), bit6(0x01000E), bit7(0x01000E), bit0(0x01000F), bit1(0x01000F), bit7(0x01000F), bitcount(0x010010),
                           bit0(0x010011), bit1(0x010011), bit2(0x010011), bit3(0x010011), bit4(0x010011), bit5(0x010011), bit6(0x010011), 
                           bit3(0x010013), bit4(0x010013), bit0(0x01001B)], 
                          24, "missable", 586413],
     "Treasure Hunting Through Time": ["between End of Time and figting Magus: Heckran Cave, Cursed Woods, Denadoro Mts, Mystic Mts, Forest Maze, Reptite Lair, Magus's Castle",
                                          5, 0x89,
                                          [bit2(0x010002), bit3(0x010002), bit4(0x010002), bit5(0x010002), bit6(0x010002), bit0(0x010005), 
                                           bit0(0x010006), bit1(0x010006), bit2(0x010006), bit3(0x010006), bit4(0x010006), bit6(0x010006), 
                                           bitcount(0x010007), bitcount(0x010008), 
                                           bit3(0x01000a), bit4(0x01000a), bit5(0x01000a), bit6(0x01000a), bit7(0x01000a), 
                                           bit1(0x01000b), bit2(0x01000b), bit3(0x01000b), bit6(0x01000f), bit5(0x010014), bit6(0x010014), bit7(0x010014), 
                                           bitcount(0x010015), bit0(0x010016), bit1(0x010016), bit2(0x010016), bit3(0x010016), bit4(0x010016), bit5(0x010016), bit6(0x010016),
                                           bit3(0x01001e), bit4(0x01001e), bit5(0x01001e), bit6(0x01001e), bit7(0x01001e), bit0(0x01001f), bit1(0x01001f)],
                                          62, "missable", 586452],
    "Break the Seal": ["sealed behind doors by a mysterious power", 5, 0xf0, 
                       [bit0(0x01000e), bit1(0x01000e), bit2(0x01000e), bit3(0x01000e), bit4(0x01000e), bit2(0x01000f), bit3(0x01000f), bit4(0x01000f), bit5(0x01000f), 
                        bit0(0x010079), bit2(0x0100d5), bit3(0x0100d5), bit0(0x0100d9), bit1(0x010070), bit5(0x01014a), bit6(0x01014a), bit7(0x01014a), bit0(0x0101a0), bit2(0x0101a0), 
                        bit5(0x0101d1), bit6(0x0101d1), bit7(0x0101d1), bit0(0x0101d2), bit1(0x0101d2), bit7(0x0101d2), ],
                       20, "missable", 605007],
    "Over Zealous": ["between Magus's Castle and fighting Lavos in the Ocean Palace", 5, 0xc0,
                     [bit2(0x010004), bit4(0x01000b), bit5(0x01000b), bit6(0x01000b), bit7(0x01000b), bit0(0x01000c), bit1(0x01000c), bit7(0x010016), 
                      bit0(0x010017), bit1(0x010017), bit2(0x010017), bit3(0x010017), bit5(0x010017), bit6(0x010017), 
                      bit0(0x010018), bit1(0x010018), bit2(0x010018), bit3(0x010018),
                      bit1(0x01001b), bit2(0x01001b), bit3(0x01001b), bit4(0x01001b), bit5(0x01001b), bit6(0x01001b), bit7(0x01001b),
                      bitcount(0x01001c), bit0(0x01001d), bit1(0x01001d), bit2(0x01001d), bit3(0x01001d), bit4(0x01001d), bit5(0x01001d), bit6(0x01001d)],
                     40, "missable", 590494],
    "Death Mountain Blues": ["on Death Peak", 5, 0xf0, 
                             [bit7(0x010011), bit0(0x010012), bit1(0x010012), bit2(0x010012), bit5(0x010013), bit6(0x010013), bit7(0x010013), bit0(0x010014),], 
                             8, "", 596344,],
    "Blast from the Past": ["in 600AD once the Black Omen shines", 5, 0xf0, 
                            [bitcount(0x010009), bit0(0x01000a), bit1(0x01000a), bit2(0x01000a), bit4(0x01000b), bit5(0x01000b), bit6(0x01000b), bit7(0x01000b), bitcount(0x01000c), bit1(0x0101ac), bit3(0x0101ac),],
                            25, "missable", 599877],
    "Presents from the Present": ["in 1000AD once the Black Omen shines", 5, 0xf0, 
                                  [bit4(0x010001), bit5(0x010001), bit6(0x010001), bit7(0x010001), bit0(0x010002), bit0(0x01001e), bit1(0x01001e), bit2(0x01001e), 
                                   bit3(0x01001f), bit4(0x01001f), bit5(0x01001f), bit0(0x0101ac), bit2(0x0101ac), bit7(0x0100a7)],
                                  14, "", 600091],
    "Leveled Up": ["from sealed chests", 5, 0xf0,
                   [bit0(0x010079), bit0(0x0100d9), bit1(0x0100d9), bit2(0x0100d9), bit4(0x01014a), bit5(0x01014a), bit6(0x01014a), bit7(0x01014a),
                    bit0(0x0101a0), bit2(0x0101a0), bit0(0x0101a6), bit1(0x0101a6), bit2(0x0101a6), bit5(0x0101a9), bit6(0x0101a9), bit7(0x0101a9),
                    bit5(0x0101d1), bit6(0x0101d1), bit7(0x0101d1), bit0(0x0101d2), bit1(0x0101d2), bit7(0x0101d2), bit4(0x0101d3), bit5(0x0101d3)],
                   23, "missable", 600092],
    "Future Futures": ["during end game future", 5, 0xf0,
                       [bit3(0x010012), bit4(0x010012), bit5(0x010012), bit6(0x010012), bit7(0x010012), bit0(0x010013), bit1(0x010013), bit2(0x010013), 
                        bit1(0x010014), bit2(0x010014), bit3(0x010014), bit4(0x010014)],
                       12, "", 601933],
    "Black Sabbath": ["in the Black Omen", 5, 0xf0,
                      [bit4(0x010018), bit5(0x010018), bit6(0x010018), bit7(0x010018), 
                       bit0(0x010019), bit1(0x010019), bit2(0x010019), bit3(0x010019), bit4(0x010019), bit5(0x010019), bit6(0x010019), bit7(0x010019),
                       bit0(0x01001A), bit1(0x01001A), bit2(0x01001a), bit3(0x01001a), bit4(0x01001a), bit5(0x01001a), bit6(0x01001a), bit7(0x01001a)],
                      20, "", 603370]
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

function TreasureCheevos()
{
    for key in TreasureLookup
    {
        value_list = TreasureLookup[key]
        achievement(
            title=key, points=value_list[1],
            type=value_list[5], id=value_list[6],
            description="Acquire all available items " + value_list[0],
            trigger=StoryProgression() <= value_list[2] && ItemCalculate(value_list[3], value_list[4])
        )
    }
}

TreasureCheevos()

//SpekkioLookup number of form : [Name string, points, spekkio enemy id, cheevo id]
SpekkioLookup = {
    "first": ["Frog", 1, 0xE0, 0],
    "second": ["Bear", 1, 0xE1, 0],
    "third": ["Goblin", 5, 0xE2, 0],
    "fourth": ["Monster", 5, 0xE3, 0],
    "fifth": ["Master", 10, 0xE4, 0],
    "final": ["Nu", 25, 0xE5, 0],
}


function SpekkioCheevs()
{
    for key in SpekkioLookup
    {
        value_list = SpekkioLookup[key]
        achievement(
            title=value_list[0] + " of War",
            points=value_list[1], id=value_list[3],
            description="Defeat Spekkio's " + key + " form",
            trigger=RoomId() == 0x1D1 && prev(word(0x005FB0)) > 0 && word(0x005FB0) == 0 && word(0x005FAD) == value_list[2]
        )
    }
}

SpekkioCheevs()

//SilverPoints lookup cheevo name: [Room ID, Number of silver Points, points, description, cheevo_id]
SilverPointLookup = {
    "Ring My Bell": [0x05, 1, 1, "Win a Silver Point for ringing a bell at the Millennial Fair", 586358],
    "That Is A Weird Looking Horse": [0x05, 20, 1, "Win 20 Silver Points betting on a race at the Millenial Fair", 586359],
    "Zicke Zacke, Hoi, Hoi, Hoi!": [0x1B7, 5, 1, "Quickly guzzle 8 sodas at the Millenial Fair", 586385],
    "Bat Dat Cat": [0x06, 15, 1, "Win Silver Points for defeating Gato at the Millenial Fair", 586360],
}

function SilverPoints()
{
    for key in SilverPointLookup
    {
        value_list = SilverPointLookup[key]
        achievement(
            title = key, points = value_list[2],
            id=value_list[4],
            description = value_list[3],
            trigger = RoomId() == value_list[0] && EarnSilverPoints(value_list[1])
        )
    }
}

SilverPoints()

//BekklerPrizes Thing: [Title, points, locations, cheevo id]
BekklerLookup = {
    //"Poyozo Doll": ["Really Brings the Room Together", 1, 0x01025C, " a ", 0],
    "Crono clone": ["Weird Science", 1, 0x01025E, " a ", 0],
    //"Cat Food": ["Cat Dad", 1, bit7(0x01025C), " some ", 0],
}

function BekklerCheevos()
{
    for key in BekklerLookup
    {
        value_list = BekklerLookup[key]
        achievement(
            title = value_list[0], points = value_list[1],
            id=value_list[4],
            description = "Win" + value_list[3] + key + " from the Tent of Horrors",
            trigger = RoomId() == 0x1B2 && prev(byte(value_list[2])) == 0 && byte(value_list[2]) > 0
        )
    }
}

BekklerCheevos()

///Singles gernated when making the script

achievement(
    title = "Damn Gina!", points = 1, type="missable",
    description = "Receive an allowance",
    id=586355,
    trigger = bit0(0x010140) == 1 && prev(tbyte(0x002C53)) < tbyte(0x002C53) && word(0x000100) == 1
)

achievement(
    title = "I Love Ferry Rides!", points = 1,
    id=586357,
    description = "Purchase a ferry ticket to Choras",
    trigger = RoomId() == 0x38 && (prev(tbyte(0x002C53)) - tbyte(0x002C53)) == 20
)

achievement(
    title="Don't Blow Up a City", points=5,
    id=602130,
    description="Upgrade the WonderShot to the Gradeus",
    trigger=RoomId() == 0x1ec && prev(byte(0x0026c9)) != 0x29 && byte(0x0026c9) == 0x29
)

achievement(
    title="Master Melchoir's Gift", points=5,
    id=602163,
    description="Upgrade the Masamune to the Mastermune",
    trigger=RoomId() == 0xb6 && prev(byte(0x002769)) != 0x2d && byte(0x002769) == 0x2d
)
