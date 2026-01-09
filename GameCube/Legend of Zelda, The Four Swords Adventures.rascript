// Legend of Zelda, The: Four Swords Adventures
// #ID = 3534


function WorldId() => dword_be(0x00529f04)
function LevelId() => dword_be(0x00529f08)
function ForceFairy() => dword_be(0x0052a038)
function PauseLockOnFairyUse(world, level) => disable_when(prev(ForceFairy()) > ForceFairy(), WorldID() == world && LevelID() == level)
function InLevel() => byte(0x0053acd0) == 0x01 && dword_be(0x00958788) == 0x07
function EnemyKillChain() => byte(0x00529fe1)


LinkColorDict = {
    "Green": 0x80000004,
    "Red": 0x80000008,
    "Blue": 0x8000000c,
    "Purple": 0x80000010,
}

LinkDataPointer = {
    "State": 0x8001240,
    "Force Gems": 0x80000c04 ,
    "Item": 0x80000c10,
    "ItemLevel2": 0x80000c14,
    "HoldingSomething": 0x80000d64,
    "Combo": 0x80000c74,
}

// key Item, value = [item value, obtain cheevo vame, level up cheevo name]
ItemLookup = {
    "Pegasus Boots": [0x01, "Run Like the Wind", "Mind the Gap"],
    "Lantern": [0x02, "Light the Dark", "NA"],
    "Boomerang": [0x03, "Catch!", "Speed Trap"],
    "Bow and Arrow": [0x04, "Archery Class", "Three's Company"],
    "Magic Hammer": [0x05, "Mashable", "Shockwave City"],
    "Fire Rod": [0x06, "Burn Baby Burn", "Block of Fire"],
    "Roc's Feather": [0x07, "Flying High", "Double Trouble"],
    "Bombs": [0x08, "This Blows", "Big Ole Bomb"],
    "Shovel": [0x09, "Dig Dug", "Treasure Detector"],
    "Slingshot": [0x0A, "Deku Demolisher", "Super Shooter"],
}

US_LINK_POINTER = 0x0053ac90
EU_LINK_POINTER = 0x00557fd8

////First Time Progression Cheevos 
//TODO: Need to find the same memory for the EU version and make alts...

///Progression Lookup
///Key = Name of World, value = [bit memory[file_1, file_2, file3], WorldId, LevelID, GameState, points, name of cheevo, extended description]
ProgressionLookup = {
    "Whereabouts of the Wind": [[bit3(0x0050ecab), bit3(0x0050ed73), bit3(0x0050ee3b)], 1, 0, 6, 05, "Four Links Awaken", "rescue the Blue Maiden."],
    "Eastern Hyrule":          [[bit7(0x0050ecab), bit7(0x0050ed73), bit7(0x0050ee3b)], 2, 0, 6, 05, "The Runaway Four", "rescue the Yellow Maiden."],
    "Death Mountain":          [[bit3(0x0050ecaa), bit3(0x0050ed72), bit3(0x0050ee3a)], 3, 0, 6, 05, "Quadruple Dynamite", "rescue the Green Maiden."],
    "Near the Fields":         [[bit7(0x0050ecaa), bit7(0x0050ed72), bit7(0x0050ee3a)], 4, 0, 6, 05, "Forsaken Four", "rescue the Cyan Maiden."],
    "The Dark World":          [[bit3(0x0050eca9), bit3(0x0050ed71), bit3(0x0050ee39)], 5, 0, 6, 10, "Four Links to the Dark World", "rescue the Red Maiden."],
    "The Desert of Doubt":     [[bit7(0x0050eca9), bit7(0x0050ed71), bit7(0x0050ee39)], 6, 0, 6, 10, "Mysterious Trap", "rescue the Purple Maiden."],
    "Frozen Hyrule":           [[bit3(0x0050eca8), bit3(0x0050ed70), bit3(0x0050ee38)], 7, 0, 6, 10, "Cold Quartet of Heroes", "rescue Zelda."],
    "Realm of the Heavens":    [[bit7(0x0050eca8), bit7(0x0050ed70), bit7(0x0050ee38)], 7, 3, 0xC, 25, "Four Sword Forever!", " and beat Ganon!"],
} 

function FileBitAlt(bit_list){
    return_value = always_false()
    for i in bit_list
    {
        return_value = return_value || (prev(i) == 0 && i == 1)
    }
    return return_value
}

for key in ProgressionLookup
{
    value_list = ProgressionLookup[key]
    trigger = WorldId() == value_list[1] && LevelId() == value_list[2] && prev(byte(0x0053acd0)) == 0x01 && dword_be(0x00958788) == value_list[3] && FileBitAlt(value_list[0])
    achievement(title=value_list[5], description="Clear " + key + " and " + value_list[6], points=value_list[4], trigger=trigger)
}



///Item Cheevos
/// In game check with EU needs to be tested
function LinkGrabItem(pointer_address, item_value) => 
    dword_be(LinkDataPointer["Item"] + dword_be(LinkColorDict["Green"] + dword_be(pointer_address))) == item_value && 
    prev(dword_be(LinkDataPointer["Item"] + prev(dword_be(LinkColorDict["Green"] + prev(dword_be(pointer_address)))))) != item_value

function LinkLevelUpItem(pointer_address, item_value) => 
    dword_be(LinkDataPointer["Item"] + dword_be(LinkColorDict["Green"] + dword_be(pointer_address))) == item_value &&
    dword_be(LinkDataPointer["ItemLevel2"] + dword_be(LinkColorDict["Green"] + dword_be(pointer_address))) == 2 &&
    prev(dword_be(LinkDataPointer["ItemLevel2"] + prev(dword_be(LinkColorDict["Green"] + prev(dword_be(pointer_address)))))) == 1

for key in ItemLookup
{
    trigger = InLevel() && LinkGrabItem(US_LINK_POINTER, ItemLookup[key][0])
    achievement(title=ItemLookup[key][1], description="Obtain the " + key + " for the first time.", points=1, trigger=trigger)
    if ItemLookup[key][2] != "NA"
    {
        trigger = InLevel() && LinkLevelUpItem(US_LINK_POINTER, ItemLookup[key][0])
        achievement(title=ItemLookup[key][2], description="Level up the " + key + " to Level 2.", points=5, trigger=trigger)
    }
}

    


