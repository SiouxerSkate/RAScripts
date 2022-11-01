// Grand Master
// #ID = 8115


////////////////////////////////Function Declaration//////////////////////////////////////////////

function Area() => byte(0x0401)
function PlayingGame() => byte(0x0453) != 0
function ItemPickup(mem) => mem == 1 && prev(mem) == 0
function PickupKey() => ItemPickup(byte(0x0436))
function ItemEquip(mem) => mem ==2 && prev(mem) == 1
function ItemIncrease(mem) => mem > prev(mem)
function LevelUp(val) => byte(0x0456) == val && prev(byte(0x0456)) == val - 1


//////////Stages/////////////
achievement(
    title = "Cave", description = "Finish the Cave", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemPickup(byte(0x0430))
)

achievement(
    title = "Tower", description = "Finish the Tower", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemPickup(byte(0x0430))
)

achievement(
    title = "Castle", description = "Finish the Castle", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemPickup(byte(0x0430))
)

achievement(
    title = "Ice Cave", description = "Finish the Ice Cave", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemPickup(byte(0x0430))
)

achievement(
    title = "Pyramid", description = "Finish the Pyramid", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemPickup(byte(0x0430))
)

achievement(
    title = "Fortress", description = "Finish the Game with the Good Ending", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemPickup(byte(0x0430))
)

achievement(
    title = "Bad Ending", description = "Finish the Game with the Bad Ending", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemPickup(byte(0x0430))
)

/////////////////////////////Equip Cheevos////////////////////////////////////////////////////////////////
achievement(
    title = "Red Sword", description = "Find the Red Sword", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemPickup(byte(0x0430))
)

achievement(
    title = "Yellow Sword", description = "Find the Yellow Sword", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemIncrease(byte(0x0430)) && prev(byte(0x0430)) == 2
)

achievement(
    title = "Red Rod", description = "Find the Red Rod", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemPickup(byte(0x0432))
)

achievement(
    title = "Yellow Rod", description = "Find the Yellow Rod", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemIncrease(byte(0x0432)) && prev(byte(0x0432)) == 2
)

achievement(
    title = "Red Axe", description = "Find the Red Axe", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemPickup(byte(0x0431))
)

achievement(
    title = "Yellow Axe", description = "Find the Yellow Axe", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemIncrease(byte(0x0431)) && prev(byte(0x0431)) == 2
)

achievement(
    title = "Red M-Star", description = "Find the Red M-Star", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemPickup(byte(0x0433))
)

achievement(
    title = "Yellow M-Star", description = "Find the Yellow M-Star", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemIncrease(byte(0x0433)) && prev(byte(0x0433)) == 2
)

achievement(
    title = "Red Armor", description = "Find the Red Armor", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemPickup(byte(0x0439))
)

achievement(
    title = "Yellow Armor", description = "Find the Yellow Armor", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemIncrease(byte(0x0439)) && prev(byte(0x0439)) == 2
)

achievement(
    title = "Shield", description = "Find the Shield", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemPickup(byte(0x043a))
)

achievement(
    title = "Cross", description = "Find the Cross", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemPickup(byte(0x043b))
)

achievement(
    title = "Hourglass", description = "Find the Hourglass", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemPickup(byte(0x043c))
)

achievement(
    title = "Mirror", description = "Find the Mirror", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemPickup(byte(0x043e))
)

achievement(
    title = "Boots", description = "Find the Boots", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemPickup(byte(0x0435))
)

achievement(
    title = "Potion", description = "Find a Potion", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemPickup(byte(0x0438))
)

achievement(
    title = "Gem", description = "Find a Gem", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemPickup(byte(0x0437))
)

achievement(
    title = "Harp", description = "Find a Harp", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && ItemPickup(byte(0x0434))
)

/////////////Key Cheevos///////////////////////////
achievement(
    title = "Cave Key", description = "Find the Key in the Cave", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && PickupKey() && Area() == 2
)

achievement(
    title = "Castle Key", description = "Find the Key in the Castle", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && PickupKey() && Area() == 0
)

achievement(
    title = "Ice Cave Key", description = "Find the Key in the Ice Cave", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && PickupKey() && Area() == 1
)

achievement(
    title = "Pyramid Key", description = "Find the Key in the Pyramid", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && PickupKey() && Area() == 3
)

achievement(
    title = "Tower Key", description = "Find the Key in the Tower", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && PickupKey() && Area() == 4
)

achievement(
    title = "Half There", description = "Find the Key in third fortress area", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && PickupKey() && Area() == 5
)

achievement(
    title = "Final Fortress Key", description = "Find the Key in final fortress area", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && PickupKey() && Area() == 5
)

//////////Level Up Cheevos/////////////
achievement(
    title = "First level Up", description = "Get Rody's first Level Up", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && LevelUp(1)
)

achievement(
    title = "Level 4", description = "Raise Rody to level 4", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && LevelUp(4)
)

achievement(
    title = "Level 9", description = "Raise Rody to level 9", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && LevelUp(9)
)

//////////Endings-Events/////////////
achievement(
    title = "Meet Terry", description = "Meet Terry before he dies?", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && LevelUp(1)
)

achievement(
    title = "Save sister", description = "Save Your sister", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && LevelUp(4)
)

achievement(
    title = "Save Terrys sister", description = "Save Terrys sister", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && LevelUp(9)
)

achievement(
    title = "Best Ending", description = "Defeat Dante and svae teh world", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && LevelUp(4)
)

achievement(
    title = "Not Best Ending", description = "Damn the world or whatever", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && LevelUp(9)
)

achievement(
    title = "Cat ", description = "Get Turned into a cat", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PlayingGame() && LevelUp(9)
)