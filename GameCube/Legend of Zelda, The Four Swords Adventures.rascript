// Legend of Zelda, The: Four Swords Adventures
// #ID = 3534


function WorldId() => dword_be(0x00529f04)
function LevelId() => dword_be(0x00529f08)
function ForceFairy() => dword_be(0x0052a038)
function PauseLockOnFairyUse(world, level) => disable_when(prev(ForceFairy()) > ForceFairy(), WorldID() == world && LevelID() == level)
function InLevel() => byte(0x0053acd0) == 0x01 && dword_be(0x00958788) == 0x07
function EnemyKillChain() => byte(0x00529fe1)



////First Time Progression Cheevos

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
