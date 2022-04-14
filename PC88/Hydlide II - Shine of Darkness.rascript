// Hydlide II - Shine of Darkness
// #ID = 14243


////////////////////////////////Function Declaration//////////////////////////////////////////////

function MapID() => byte(0x00f800)
function PlayingGame() => MapID() != 0x20
function ItemPickup(mem) => mem == 1 && prev(mem) == 0
function ItemEquip(mem) => mem ==2 && prev(mem) == 1
function ItemIncrease(mem) => mem > prev(mem)
function LevelUp(val) => byte(0x00fe29) == val && prev(byte(0x00fe29)) == val - 1


/////////////////////////////Equip Cheevos////////////////////////////////////////////////////////////////
achievement(
    title = "Short Sword", description = "Equip the Short Sword", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemEquip(byte(0x00fe40))
)

achievement(
    title = "Holy Sword", description = "Equip the Holy Sword", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemEquip(byte(0x00fe41))
)

achievement(
    title = "Laser Sword", description = "Equip the Laser Sword", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemEquip(byte(0x00fe42))
)

achievement(
    title = "Skull Rod", description = "Equip the Skull Rod", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemEquip(byte(0x00fe4c))
)

achievement(
    title = "Gem Rod", description = "Equip the Gem Rod", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemEquip(byte(0x00fe4d))
)

achievement(
    title = "Dream Staff", description = "Equip the Dream Staff", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemEquip(byte(0x00fe4d))
)

achievement(
    title = "Helmet", description = "Equip the Helmet", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemEquip(byte(0x00fe3b))
)

achievement(
    title = "Chain Armor", description = "Equip the Chain Armor", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemEquip(byte(0x00fe3c))
)

achievement(
    title = "Plate Armor", description = "Equip the Plate Armor", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemEquip(byte(0x00fe3d))
)

achievement(
    title = "Mind Shield", description = "Equip the Mind Shield", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemEquip(byte(0x00fe3e))
)

achievement(
    title = "Life Shield", description = "Equip the Life Shield", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemEquip(byte(0x00fe3f))
)

/////////////////////////////Items Cheevos////////////////////////////////////////////////////////////////
achievement(
    title = "Lamp", description = "Obtain the Lamp", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemPickup(byte(0x00fe4a))
)

achievement(
    title = "Tree Key", description = "Obtain a Key from a tree on the world map", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = MapID() == 0x36 && ItemIncrease(byte(0x00fe43))
)

achievement(
    title = "Antidote", description = "Obtain an Antidote", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemIncrease(byte(0x00fe39))
)

achievement(
    title = "Orc Key", description = "Obtain a Key from an Orc in the Desert Tower", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (MapID() == 0x58 || MapID() == 0x59) && ItemIncrease(byte(0x00fe43))
)

achievement(
    title = "Salve", description = "Obtain a Salve", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemIncrease(byte(0x00fe3a))
)

achievement(
    title = "Labyrinth Key", description = "Obtain a key from a chest in the Labyrinth", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = MapID() == 0x4b && ItemIncrease(byte(0x00fe3a))
)

achievement(
    title = "River Key", description = "Obtain a key from a chest in the River Dungeon", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = MapID() == 0x51 && ItemIncrease(byte(0x00fe3a))
)

achievement(
    title = "Black Crystal", description = "Obtain a Black Crystal", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemPickup(byte(0x00fe49))
)

achievement(
    title = "Green Crystal", description = "Obtain a Green Crystal in the River Dungeon", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = MapID() == 0x4f && ItemPickup(byte(0x00fe46))
)

achievement(
    title = "Mystic Drug", description = "Obtain the Mystic Drug", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = MapID() == 0x29 && ItemPickup(byte(0x00fe37))
)

achievement(
    title = "Yellow Crystal", description = "Obtain a Yellow Crystal in the Final Dungeon", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = MapID() == 0x4f && ItemPickup(byte(0x00fe46))
)

achievement(
    title = "Purple Crystal", description = "Obtain a Purple Crystal in the Final Dungeon", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = MapID() == 0x4f && ItemPickup(byte(0x00fe46))
)

achievement(
    title = "Red Crystal", description = "Obtain a Red Crystal in the Final Dungeon", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = MapID() == 0x4f && ItemPickup(byte(0x00fe46))
)

achievement(
    title = "Blue Crystal", description = "Obtain a Blue Crystal in the Final Dungeon", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = MapID() == 0x4f && ItemPickup(byte(0x00fe46))
)

achievement(
    title = "Revive", description = "Obtain a Revive Potion in the Final Dungeon", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = MapID() == 0x4f && ItemPickup(byte(0x00fe46))
)

/////////////////////////////Level Cheevos////////////////////////////////////////////////////////////////
achievement(
    title = "First Level Up", description = "Level Up for the first time", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && LevelUp(2)
)

achievement(
    title = "Level 5", description = "Level up to Level 5", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && LevelUp(5)
)

achievement(
    title = "Level 10", description = "Level up to Level 10", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && LevelUp(10)
)

achievement(
    title = "Last 15", description = "Level Up to Level 15", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && LevelUp(15)
)

achievement(
    title = "Final level", description = "Level Up to Level 20", points = 50,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && LevelUp(20)
)
/////////////////////////////Events/////////////////////////////////////////
achievement(
    title = "Tombstone", description = "Destroy the Tombstone", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = MapID() == 0x33 && prev(byte(0x00fe50)) < 0x14 && byte(0x00fe50) == 0x14
)

achievement(
    title = "Labyrinth Rock", description = "Destroy the Rock to open up the Labyrinth", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = MapID() == 0x2f && prev(byte(0x00fe52)) < 0x14 && byte(0x00fe52) == 0x14
)

achievement(
    title = "Learn the Password", description = "Stand in the spot to learn a password", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = MapID() == 0x33 && prev(byte(0x00fe50)) < 0x14 && byte(0x00fe50) == 0x14
)

achievement(
    title = "Enter the Final Dungeon", description = "Enter the Final Dungeon", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = MapID() == 0x33 && prev(byte(0x00fe50)) < 0x14 && byte(0x00fe50) == 0x14
)

achievement(
    title = "Save the Fairy", description = "Save the Fairy in the Final Dungeon", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = MapID() == 0x2f && prev(byte(0x00fe52)) < 0x14 && byte(0x00fe52) == 0x14
)

achievement(
    title = "Complete the Game", description = "Finish the game", points = 50,
    id = 0, badge = "0", published = "", modified = "",
    trigger = MapID() == 0x2f && prev(byte(0x00fe52)) < 0x14 && byte(0x00fe52) == 0x14
)


////////////////////////Upgrades///////////////////////////////////
achievement(
    title = "Magic Upgrade", description = "Buy a Magic Upgrade", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = MapID() == 0x29 && ItemIncrease(high4(0x00fe21))
)

achievement(
    title = "Full Magic Upgrade", description = "Buy 6 Magic Upgrades", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = MapID() == 0x29 && high4(0x00fe21) == 6 &&  prev(high4(0x00fe21)) == 5
)

achievement(
    title = "Strength Upgrade", description = "Buy a Strength Upgrade", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = MapID() == 0x29 && ItemIncrease(high4(0x00fe21))
)

achievement(
    title = "Full Strength Upgrade", description = "Buy 6 Strength Upgrades", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = MapID() == 0x29 && high4(0x00fe21) == 6 &&  prev(high4(0x00fe21)) == 5
)

achievement(
    title = "The Evil One", description = "Walk the path of Evil(decrease Furth into the red)", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && byte(0x00fe28) <= 0x21 &&  prev(byte(0x00fe28)) > 0x21
)

achievement(
    title = "Path Of Justice", description = "Walk the path of Justice(increase Furth into the green)", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && byte(0x00fe28) >= 0x43 &&  prev(byte(0x00fe28)) < 0x43
)
