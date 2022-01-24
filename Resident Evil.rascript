// Resident Evil
// #ID = 7140

////////////////////////////////Function Declaration//////////////////////////////////////////////

function Delta(mem) => prev(mem)

function Prior(mem) => prior(mem)

function PauseIf(compairison) => unless(compairison)

function PauseLock(compairison, reset) => disable_when(compairison, until=reset)

function ResetIf(compairison) => never(compairison)

function Room() => word(0x0f8660)

function View() => byte(0x0f8663)

// Use only with bit intem pickups
function ItemPickup(mem) => Delta(mem) == 1 && mem == 0

// Use onyl with bit events
function EventDelta(mem) => Delta(mem) == 0 && mem == 1

// Use onyl with bit events
function EventPrior(mem) => Prior(mem) == 0 && mem == 1

function Inventory1() => byte(0x0f8785)
function DeltaInventory1() => prev(byte(0x0f8785))

function Inventory2() => byte(0x0f8787)
function DeltaInventory2() => prev(byte(0x0f8787))

function Inventory3() => byte(0x0f8789)
function DeltaInventory3() => prev(byte(0x0f8789))

function Inventory4() => byte(0x0f878b)
function DeltaInventory4() => prev(byte(0x0f878b))

function Inventory5() => byte(0x0f878d)
function DeltaInventory5() => prev(byte(0x0f878d))

function Inventory6() => byte(0x0f878f)
function DeltaInventory6() => prev(byte(0x0f878f))

function Inventory7() => byte(0x0f8791)
function DeltaInventory7() => prev(byte(0x0f8791))

function Inventory8() => byte(0x0f8793)
function DeltaInventory8() => prev(byte(0x0f8793))

function SmallKeyPutInInventory() => (DeltaInventory1() == 0 && Inventory1() == 0x3D) || (DeltaInventory2() == 0 && Inventory2() == 0x3D) ||
                                     (DeltaInventory3() == 0 && Inventory3() == 0x3D) || (DeltaInventory4() == 0 && Inventory4() == 0x3D) ||
                                     (DeltaInventory5() == 0 && Inventory5() == 0x3D) || (DeltaInventory6() == 0 && Inventory6() == 0x3D)
                                     
function Character() => byte(0x0f8669)

function IsChris() => Character() == 0


//////////////////////////////Acheivements////////////////////////////////////////////////////////////

achievement(
    title = "Where Are They?", description = "Obtain Jill's Beretta", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && ItemPickup(bit5(0x0f86de)) && Room() == 0x0006              
)

achievement(
    title = "Zombie Clips(Chris)", description = "Grab 2 clips then kill zombie no damage[m]", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && Delta(bit3(0x0f86be)) == 0 && bit3(0x0f86be) == 1 && Room() == 0x0004 &&
              bit0(0x0f86e0) == 0 && bit6(0x0f86e0) == 0 && bit4(0x0f8695) == 0 &&
              PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() != 0x0004)            
)

//Need to find more small keys and put them in the alt chain
achievement(
    title = "Small Key", description = "Pick up a small key", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && ((ItemPickup(bit2(0x0f86ef)) && Room() == 0x0111)  ||   
              (ItemPickup(bit5(0x0f86e1)) && Room()== 0x001B))
)

achievement(
    title = "Whoa!...What Is It?", description = "Meet Rebecca", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && EventPrior(bit5(0x0f8699)) && Room() == 0x0000 &&  View() == 0x03            
)

achievement(
    title = "Unlock the Sword", description = "Find the Sword Key", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && ItemPickup(bit1(0x0f86df)) && Room() == 0x0000 && View() == 0x01         
)