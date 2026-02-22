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
    "Yakra": ["Allowedith The Honor", " and Save Queen Leene", 5, "progression", 0x005FAD, 0x90,
              never(RoomId() != 198) && HpPriorZero(0x005fb0) && MusicId() == 0x1B && repeated(50, MusicId() == 0x29),
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
    //"Come now, \"Sir\" Crono": ["Team up with Lucca to save Queen Leene", 1, "progression", 0x6C, 0x78, prev(byte(0x002981)) == 128 && byte(0x002981) == 2, 586388], uses a priorMpa
    "Hang On To Your Butts": ["Enter a Time Portal with four team members", 5, "progression", 0xE3, 0x1D0, StoryProgression() == 0x45, 586414],
    "Where In Time?": ["Navigate the End Of Time", 1, "", 0x1D0, 0x1C6, StoryProgression() >= 0x4B, 586416],
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
     "Treasure Hunting Through Time I": ["between End of Time and entering Magus' Castle: Heckran Cave, Cursed Woods, Denadoro Mts, Mystic Mts, Forest Maze, Reptite Lair",
                                          5, 0x66,
                                          [bit2(0x010002), bit3(0x010002), bit4(0x010002), bit5(0x010002), bit6(0x010002), bit0(0x010006), bit1(0x010006), bit2(0x010006),
                                          bit3(0x010006), bit4(0x010006), bit6(0x010006), bit0(0x010007), bit3(0x010007), bit4(0x010007), bit5(0x010007), bit6(0x010007), 
                                          bit7(0x010007), bitcount(0x010008), bit5(0x010014), bit6(0x010014), bit7(0x010014), bit0(0x010015), bit1(0x010015), 
                                          bit2(0x010015), bit3(0x010015), bit4(0x010015), bit5(0x010015), bit6(0x010015), bit1(0x010016), bit3(0x010016), bit5(0x010016), 
                                          bit6(0x010016)],
                                          39, "", 586452],
    //bit0(0x010005), bit5(0x01000a), bit6(0x01000a), bit4(0x01001e),  
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
    "second": ["Refresher", 2, 0xE1, 0],
    "third": ["Choice", 3, 0xE2, 0],
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

