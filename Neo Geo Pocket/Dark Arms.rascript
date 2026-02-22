// Dark Arms
// #ID = 10297


function Room() => byte(0x001a)
function Map() => byte(0x0018)
function AtDeathsDoor() => Room() == 0xFF && Map() == 0

//Weapon Lookup = "Gun Name": ["Name of cheevo", points, weapon unlcok from bit7 memory, weapon ID, delta Weapon id, cheevo id, badge id]
WeaponLookup = {
    "Sub M Gun": ["Two Fer", 5, 0x059e, 0x1F, 0x01, 55927, "58508"],
    "MachineGun": ["Three Fer", 5, 0x0581, 0x02, 0x1F, 55928, "58509"],
    "ProtectM Gun": ["Machiniman", 5, 0x0587, 0x08, 0x02, 55934, "58515"],
    "Sub ShotGun": ["DoubleShot", 5, 0x059f, 0x20, 0x01, 55943, "58524"],
    "ShotGun": ["Split Shooter", 5, 0x0582, 0x03, 0x20, 55929, "58510"],
    "ProtectS Gun": ["Mechattack", 5, 0x0588, 0x09, 0x03, 55935, "58516"],
    "BeamGun": ["Beam Counter", 5, 0x000583, 0x04, 0x01, 55930, "58511"],
    "Vanisher": ["The Vanishment of Ziad", 5, 0x000584, 0x05, 0x04, 55931, "58512"],
    "Mano": ["FistBump", 1, 0x058b, 0x0c, 0x26, 55953, "58535"],
    "StrongMano": ["Mano a Mano", 5, 0x059c, 0x1d, 0x0c, 55951, "58532"],
    "ShovedMano": ["Strong Arm", 5, 0x058C, 0x0D, 0x1D, 55937, "58533"],
    "SwingT": ["Swinger", 2, 0x0594, 0x15, 0x26, 55955, "58537"],
    "RoundT": ["All Round Protector", 5, 0x0596, 0x17, 0x16, 55947, "58528"],
    "Crawler": ["Crawlin'", 5, 0x0599, 0x1a, 0x15, 55948, "58529"],
    "Ambusher": ["It's a Bare trap", 5, 0x000598, 0x19, 0x1A, 55949, "58530"],
    "Scamper": ["Mob-ilizer", 5, 0x0597, 0x18, 0x19, 55950, "58531"],
    "Tentacles": ["H-Ready'", 5, 0x0589, 0x0a, 0x15, 55936, "58517"],
    "WideT": ["Wide Guard", 5, 0x0595, 0x16, 0x0A, 55946, "58527"],
    "Shell": ["By the Seashore", 5, 0x0585, 0x06, 0x15, 55932, "58513"],
    "BombShell": ["ShellShocker", 5, 0x0586, 0x07, 0x06, 55933, "58514"],
    "Dummy": ["Crash Tester", 2, 0x00058D, 0x0E, 0x26, 55954, "58536"],
    "AttackDummy": ["Manequina", 5, 0x058F, 0x10, 0x0E, 55938, "58519"],
    "BurstDummy": ["Exploding Pinata", 5, 0x058E, 0x0F, 0x10, 55939, "58520"],
    "DummyTrap": ["Rat Catcher", 5, 0x592, 0x13, 0x0F, 55941, "58521"],
    "Messer": ["Guilletiner", 2, 0x059A, 0x1B, 0x26, 55956, "58538"],
    "StrongMesser": ["Stab Happy", 5, 0x059B, 0x1C, 0x1B, 55944, "58525"],
    "Counterstab": ["Illegit if you don't get hit", 5, 0x000591, 0x12, 0x1C, 55945, "58526"],
    "Tasten": ["T for Tasty", 2, 0x058A, 0x0b, 0x26, 55952, "58534"],
    "SuperTasten": ["Tasten Ramen", 5, 0x0593, 0x14, 0x0B, 55940, "58522"],
    "MoveTasten": ["Prime Mover", 5, 0x00059D, 0x1E, 0x14, 55942, "58523"], 
}

function WeaponCheevs()
{
    for key in WeaponLookup
    {
        value_list = WeaponLookup[key]
        achievement(
            title = value_list[0],
            points = value_list[1],
            description = "Create the " + key,
            id = value_list[5],
            badge = value_list[6],
            trigger = AtDeathsDoor() && prev(bit7(value_list[2])) == 0 && bit7(value_list[2]) == 1 &&
               (
                (prev(byte(0x00043E)) == value_list[4] && byte(0x00043E) == value_list[3]) ||
                (prev(byte(0x00044E)) == value_list[4] && byte(0x00044E) == value_list[3]) ||
                (prev(byte(0x00045E)) == value_list[4] && byte(0x00045E) == value_list[3]) ||
                (prev(byte(0x00046E)) == value_list[4] && byte(0x00046E) == value_list[3]) ||
                (prev(byte(0x00047E)) == value_list[4] && byte(0x00047E) == value_list[3]) ||
                (prev(byte(0x00048E)) == value_list[4] && byte(0x00048E) == value_list[3]) ||
                (prev(byte(0x00049E)) == value_list[4] && byte(0x00049E) == value_list[3]) ||
                (prev(byte(0x0004AE)) == value_list[4] && byte(0x0004AE) == value_list[3]) ||
                (prev(byte(0x0004BE)) == value_list[4] && byte(0x0004BE) == value_list[3]) ||
                (prev(byte(0x0004CE)) == value_list[4] && byte(0x0004CE) == value_list[3]))
        )
        
    }
}
WeaponCheevs()


//Item Lookup = "Item Name": ["Name of cheevo", points, item unlock bit memory, map id, room id, cheevo id, badge id]
ItemLookup = {
    "Dummy Oum": ["Fresh Bait", 5, bit4(0x04e1), 0x03, 0xc2, 56058, "58562"],
    "second oum seed": ["Return to Source", 5, bit1(0x0004E2), 0x01, 0x04, 56050, "58545"],
    "third oum seed": ["Drawing the Third", 5, bit2(0x0004E2), 0x02, 0x1A, 56051, "58545"],
    "fourth oum seed": ["Just Reward", 5, bit3(0x0004E2), 0x02, 0xBF, 56502, "58545"],
    "fifth oum seed": ["House Sitter", 5, bit4(0x0004E2), 0x03, 0x3C, 56055, "58545"],
    "sixth oum seed": ["Hidden Treasure", 5, bit5(0x0004E2), 0x03, 0x56, 56056, "58545"],
    "seventh oum seed": ["Traps and Tiles", 5, bit6(0x0004E2), 0x04, 0x5C, 56059, "58545"],
    "eigth oum seed": ["Demonic Provision", 10, bit7(0x0004E2), 0x02, 0x15, 56068, "58545"],
    "ninth oum seed": ["Undying Gift", 5, bit0(0x0004E3), 0x05, 0x7C, 56072, "58545"],
    "tenth oum seed": ["Hard Return", 10, bit1(0x0004E3), 0x04, 0x70, 56067, "58545"],
}

function ItemCheevos()
{
    for key in ItemLookup
    {
        value_list = ItemLookup[key]
        achievement(
            title = value_list[0],
            points = value_list[1],
            description = "Obtain the " + key,
            id = value_list[5],
            badge = value_list[6],
            trigger = Room() == value_list[4] && Map() == value_list[3] &&
                      prev(value_list[2]) < value_list[2]
        )
    }
}
ItemCheevos()

achievement(
    title = "Basic Training", points = 1, type="progression",
    description = "Obtain a Seed and build the Ray Gun",
    id = 55957, badge = "58503", published = "12/13/2017 2:34:29 PM", modified = "6/30/2021 7:29:42 AM",
    trigger = bit0(0x0004E2) == 1 && prev(byte(0x00043E)) == 38 && byte(0x00043E) == 1 && byte(0x000018) == 0 &&
              byte(0x00001A) == 255
)
