// ~Hack~ Legend of Zelda, The: Echoes of the Past
// #ID = 20060

/////////////////////Function Definition////////////////
function MapID() => dword(0x000AA1)

function DeltaMapID() => prev(dword(0x000AA1))

function ItemGrab(mem, first_val, second_val) => prev(mem) == first_val && mem == second_val

function DamageTaken() => prev(byte(0x00f36d)) > byte(0x00f36d)

function MaxLifeIncrease() => byte(0x00f36c) > prev(byte(0x00f36c))

function MusicId() => byte(0x000130)

function MusicIdChange(delta_val, mem_val) => prev(MusicId()) == delta_val && MusicId() == mem_val


/////////////ITEM CHEEVOS//////////////////////

/// Dictionary of Items. key=Name of item, value=list(Name of Cheevo, point value,  map ID value, item memory location, not acquired vlaue, acquired value, extra strinf fro description)
ItemLookup = {
    "Lamp": ["Fear Of the Dark", 1, 0xA4D0303, byte(0x00F34A), 0, 1, ""],
    "Bombs": ["Bombs Away", 1, 0xA440104, byte(0x00F343), 9, 0x0A, ""],
    "Boomerang": ["It Comes Back Mate", 1, 0x0A440004, byte(0x00F341), 0, 1, ""],
    "Bug Net": ["Catching Up", 1, 0xA4D0303, byte(0x00F34D), 0, 1, ""],
    "Ice Rod": ["Frozen Rod", 1, 0x0A480505, byte(0x00F346), 0, 1, ""],
    "Pegasus Shoes": ["A Dashing Lad", 1, 0xA500F0F, byte(0x00F355), 0, 1, ""],
    "Book Of Mudora": ["Ancient VVisdom", 1, 0xa410303, byte(0x00F34E), 0, 1, ""],
    "Cane Of Somaria": ["Building Blocks Better", 1, 0xA4A0512, byte(0x00F350), 0, 1, ""],
    "Magic Mirror": ["Whose the Darkest of Them All", 1, 0x1102220, byte(0x00F353), 0, 2, ""],
    "Mushroom": ["Tower Tripping", 1, 0xA590505, byte(0x00F344), 0, 1, ""],
    "Moon Pearl": ["Moon Over My Bunny", 1, 0x0A480606, byte(0x00F357), 0, 1, ""],
    "Shovel": ["Scoop It Up", 1, 0xB113021, byte(0x00F34C), 0, 1, ""],
    "Ocarina": ["Ocarina of Thyme?", 1, 0x10F2120, byte(0x00F34C), 1, 2, ""],
    "Flute Boy's Bird": ["Ride the Sky", 5, 0x1062320, byte(0x00F34C), 2, 3, ""],
    "Magic Boomerang": ["Magic Carpet Ride", 5, 0xa470606, byte(0x00F341), 0, 2, ""], 
    "Bow": ["Chase Is Better Than the Catch", 1, 0xa530e0e, byte(0x00f340), 0, 1, ""],
    "Silver Arrows": ["Light Up the Darkness", 10, 0xa471212, byte(0x00f340), 3, 4, ""], 
    "Fire Rod": ["Burn Baby Burn", 1, 0xa5c0b0b, byte(0x00f345), 0, 1, ""],
    "Bombos Medallion": ["Da Bombos", 1, 0x11f2b20, byte(0x00f347), 0, 1, ""],
    "Quake Medallion": ["Earth Shaker", 1, 0xb164021, byte(0x00f349), 0, 1, ""],
    "Ether Medallion": ["Take Your Medicine", 1, 0x01102220, byte(0x00f348), 0, 1, ""],
    "Hookshot": ["Link Abdul-Jabbar", 1, 0x0a590707, byte(0x00f342), 0, 1, ""],
    "Magic Cape": ["Disappearing Act", 1, 0xa481001, byte(0x00f352), 0, 1, ""],
    "Cane Of Byrna": ["Byrna's Protection", 1, 0xa530e0e, byte(0x00f351), 0, 1, ""],
    "Magic Hammer": ["Pound It In", 1, 0xa5d0c0c, byte(0x00f34b), 0, 1, ""],
    "Magic Powder": ["Snow Blind", 5, 0x0a450303, byte(0x00f344), 0, 2, ""],
    "Power Glove": ["Now You're Playing With Power", 1, 0xa5b0a0a, byte(0x00f354), 0, 1, ""],
    "Titan's Mit": ["Clash Of The Titans", 5, 0xa530909, byte(0x00f354), 1, 2, ""], 
    "Zora's Flippers": ["Sleep With The Fishes", 1, 0x10e2f20, byte(0x00f356), 0, 1, ""],
    
    "Pendant Of Courage": ["Tales Of Courage", 5, 0xA490505, bit2(0x00F374), 0, 1, ""],
    "Pendant Of Power": ["Tales Of Power", 5, 0xA4B0512, bit1(0x00F374), 0, 1, ""],
    "Pendant Of Wisdom": ["Tales of Wisdom", 5, 0xA4C0505, bit0(0x00F374), 0, 1, ""],
    
    "First Crystal Maiden": ["Tales of Darkness", 5, 0xa550707, bit1(0x00f37a), 0, 1, " from the Dark Palace"],
    "Second Crystal Maiden": ["Tales of the Swamp", 5, 0xa540808, bit4(0x00f37a), 0, 1, " from the Swamp Palace"],
    "Third Crystal Maiden": ["Tales of the Skull", 5, 0xa5a0909, bit6(0x00f37a), 0, 1, " from the Skull Woods"],
    "Fourth Crystal Maiden": ["Tales of Gargoyle's", 5, 0xa600a0a, bit5(0x00f37a), 0, 1, " from the Gargoyle's Den"],
    "Fifth Crystal Maiden": ["Tales of Ice", 5, 0xa560b0b, bit2(0x00f37a), 0, 1, " from the Ice Palace"],
    "Sixth Crystal Maiden": ["Tales of Misery", 5, 0xa560c0c, bit0(0x00f37a), 0, 1, " from the Misery Mire"],
    "Zelda Crystal": ["Tales of the Turtle", 10, 0xa570d0d, bit3(0x00f37a), 0, 1, " from the Turtle Rock"],
    
    "Sword": ["Uncle's Trust", 1, 0xa440104, byte(0x00F359), 0, 1, ""],
    "Master Sword": ["Master Of the Wood", 5, 0x10C2F20, byte(0x00F359), 1, 2, ""],
    "Tempered Master Sword": ["Anger Management", 10, 0xa451111, byte(0x00F359), 0xFF, 3, ""],
    "Golden Master Sword": ["The Ecstasy of Gold", 10, 0xa471212, byte(0x00F359), 0, 4, ""],
    
    "Fire Shield": ["The Fire Within[m]", 5, 0xa470606, byte(0x00f35a), 0, 2, " without spending any money"],
    "Mirror Shield": ["Constant Reflection[m]", 5, 0xa510808, byte(0x00f35a), 2, 3, " while equipped with the Fire Shield"],
    
    "Blue Mail": ["If I was Green I Would Die", 1, 0xa660d0d, byte(0x00f35b), 0, 1, ""],
    "Red Mail": ["REDy to Rock", 5, 0xa471212, byte(0x00F359), 1, 2, " while equipped with the Blue Mail"],
    
    "All Bomb Upgrades": ["Bombs Over Hyrule", 5, 0xa470606, byte(0x00f370), 6, 7, ""],
    "All Arrow Upgrades": ["Linkolas", 5, 0xa470606, byte(0x00f371), 6, 7, ""], 
    "Magic Upgrade": ["Black Magic Ritual", 5, 0xa490606, bit0(0x00f37b), 0, 1, ""],
    }

function ItemGrabbed(map_id_value, item_memory_location, init_value, grabbed_value)
{
    return (MapID() == map_id_value) && ItemGrab(item_memory_location, init_value, grabbed_value)
}

function ItemCheevs()
{
    for key in ItemLookup
    {
        value_list = ItemLookup[key]
        title = value_list[0]
        description = "Acquire the " + key + value_list[6]
        points = value_list[1]
        trigger = ItemGrabbed(value_list[2], value_list[3], value_list[4], value_list[5])
        achievement(title, description, points, trigger)        
    }    
}
ItemCheevs()

////////Bottle Cheevos//////////////////////
function BottleGrabbed(mem)
{
    return ItemGrab(byte(mem), 0, 2) &&
        ((MapID() == 0x1062320) ||
        (MapID() == 0x10c2f20) ||
        (MapID() == 0x10a2020) ||
        (MapID() == 0xa410101))         
}

achievement(title="Bottle It Up", description="Acquire your first Bottle", points=1, 
            trigger=BottleGrabbed(0x00f35c)
            )

achievement(title="Legend Of Four Bottles", description="Acquire all four Bottles", points=5, 
            trigger=BottleGrabbed(0x00f35f) 
            )
            
////////Heart Cheevos//////////////////////
function HeartPieceGrab(memory_location, delta_val, mem_val)
{
    return MapID() != 0x0 &&
        DeltaMapID() != 0x0 && //Define for loading saves or find better save protection
        ItemGrab(memory_location, delta_val, mem_val)
}

achievement(title="Piece Of My Heart", description="Acquire your first Heart Piece", points=1, 
            trigger= HeartPieceGrab(byte(0x00F36B), 0, 1)
            )

achievement(title="Four Of Hearts", description="Acquire a Heart Container from grbbing four Heart Pieces", points=5, 
            trigger= HeartPieceGrab(byte(0x00F36B), 3, 0)
            )

achievement(title="Living On a Prayer", description="Acquire enough Heart Contianers to have ten hearts", points=10, 
            trigger= HeartPieceGrab(byte(0x00f36c), 0x40, 0x48)
            )
            
achievement(title="Total Eclipse Of My Heart", description="Acquire all Heart Pieces and Heart Containers", points=25, 
            trigger= HeartPieceGrab(byte(0x00f36c), 0x90, 0x98)
            )

///////////////Boss No Damage Cheevos///////////////////

/// Dictionary of Bested Boss. key=Boss name, value=list(point value, map ID Value, Dungeon Name)
BossLookup = {
    "Armos Knight":[5, 0xa490505, "Eastern Palace"],
    "The Lanmolas":[5, 0xa4b0512, "Desert Palace"],
    "Moldorm":[5, 0xa4c0505, "Tower Of Hera"],
    "Helmasaur King":[25, 0xa550707, "Dark Palace"],
    "Arrghus":[10, 0xa540808, "Swamp Palace"],
    "Mothula":[10, 0xa5a0909, "Skull Woods"],
    "Blind":[25, 0xa600a0a, "Gargoyle's Domain"],
    "Kholdstare":[10, 0xa560b0b, "Ice Palace"],
    "Vitreous":[10, 0xa560c0c, "Misery Mire"],
    "Trinexx":[10, 0xa570d0d, "Turtle Rock"],
}

function BestedBoss(map_id)
{
    return disable_when(DamageTaken(), until=(MapID() != map_id)) &&
         MapID() == map_id &&
         trigger_when(MaxLifeIncrease()) &&
         unless(MusicId() != 0x15)
}

function BestedCheevs()
{
    for key in BossLookup
    {
        value_list = BossLookup[key]
        title = "Bested " + key + "[m]"
        description = "Defeat " + key + " and grab the Heart Container at the " + value_list[2] + " without taking damage"
        points = value_list[0]
        trigger = BestedBoss(value_list[1])
        achievement(title, description, points, trigger)
    }
}
BestedCheevs()

/////////Other Boss Cheevos Like Agahnim and Ganon/////////////////////

/// Dictionary of Other Boss. key=Boss name, value=list(point value, bested point value, reset map ID Value, map ID of fight, map ID transistion, Dungeon Name, Name of non bested cheevo)
OtherBossLookup = {
    "Agahnim":[5, 10, 0xa670204, 0xa520204, 0x1072120, "Hyrule Castle Tower", "The Dark World"],
    "Dark Agahnim":[10, 25, 0xa4c0e0e, 0xa580e0e, 0xb263b21, "Dark Tower", "Unlock the Darkness"],
    "Gannon":[25, 50, 0xb263b21, 0xa621313, 0x10e2f20, "Pyramid of Power", "Behold the Triforce"],
}

function BestedOtherBoss(reset_map_id, delta_map_id, complete_map_id)
{
    return disable_when(DamageTaken(), until=(MapID() == reset_map_id)) &&
        DeltaMapID() == delta_map_id &&
        trigger_when(MapID() == complete_map_id)
}

function BeatOtherBoss(delta_map_id, complete_map_id)
{
    return DeltaMapID() == delta_map_id &&
        MapID() == complete_map_id
}

function OtherBossCheevs()
{
    for key in OtherBossLookup
    {
        value_list = OtherBossLookup[key]
        title = "Bested " + key + "[m]"
        description = "Defeat " + key + " at the " + value_list[5] + " without taking damage"
        points = value_list[1]
        trigger = BestedOtherBoss(value_list[2], value_list[3], value_list[4])
        achievement(title, description, points, trigger)
        title = value_list[6]
        description = "Defeat " + key + " at the " + value_list[5]
        points = value_list[0]
        trigger = BeatOtherBoss(value_list[3], value_list[4])
        achievement(title, description, points, trigger)
    }
}
OtherBossCheevs()

/////////Other Cheevos/////////
trigger =  MapID() == 0x0a460404 && MusicIdChange(0x10, 0x14) && byte(0x00F35C) == 0
achievement("My Savior", "Bring Zelda To the Sanctuary", 1, trigger) ///DONT UPDATE LOCAL ON THIS. Calibrated with UI tp use ANDNext for the trigger to be perfect

trigger =  MapID() == 0x0a460404 && MusicIdChange(0x10, 0x14) && byte(0x00F35C) == 0 && trigger_when(byte(0x000130) == 0x14) && once(byte(0x00F359) == 0) && once(byte(0x00F34A) == 0) && disable_when(DamageTaken()) && (always_true() || never(MapID() == 0x17d5123)) // Need to test and verify trigger works
achievement("Super Savior", "From begining of the game bring Zelda to the Sanctuary without taking damage", 10, trigger) 

trigger =  MapID() == 0x0a460404 && DeltaMapID() ==  0xa520204 && trigger_when(MapID() ==  0x1072120) && disable_when(DamageTaken()) && (always_true() || never(MapID() == 0x1012420)) 
achievement("Walk Of the Wizard", "From entry to Hyrule Tower, naviagte to Agahnim's room without taking damage", 10, trigger) ///DONT UPDATE LOCAL ON THIS. Calibrated with UI tp use ANDNext for the trigger to be perfect

trigger = MapID() == 0xa570d0d && prev(byte(0x00f37a)) == 0 && bit3(0x00f37a) == 1
achievement("Trampled By Turtle", "Save Zelda at Turtle Rock before saving any other Maiden", 25, trigger)

trigger = MapID() == 0x10e2f20 && DeltaMapID() == 0xa621313 && byte(0x00f35b) == 0
achievement("It Ain't Easy Being Green", "Beat the game equipped with Green Mail", 25, trigger)
