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
function ItemPrior(mem) => Prior(mem) == 1 && mem == 0


// Use only with bit events
function EventDelta(mem) => Delta(mem) == 0 && mem == 1

// Use only with bit events
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
                                     
function Character() => byte(0x0f8668)

function IsChris() => Character() == 0

function IsJill() => Character() == 1

function IsRebecca() => Character() == 3

function WeaponEquipped() => byte(0x0f5127)


//////////////////////////////Acheivements////////////////////////////////////////////////////////////


//////////////////////////////Chris Run Acheivements////////////////////////////////////////////////////////////
achievement(
    title = "Where Are They?", description = "Obtain Jill's Beretta", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && ItemPickup(bit5(0x0f86de)) && Room() == 0x0006              
)

achievement(
    title = "Whoa!...What Is It?", description = "Meet Rebecca", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && EventPrior(bit5(0x0f8699)) && Room() == 0x0000 &&  View() == 0x03            
)

achievement(
    title = "Chris Shotgun", description = "Obtain the shotgun as Chris. Must place the broken shotgun in its place", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && ItemPrior(bit7(0x0f86dd)) && EventDelta(bit6(0x0f86dd))&& Room() == 0x0016           
)

achievement(
    title = "Chris SERUM", description = "As Rebecca, Save Chris with the Serum", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && bit2(0x0f869e) == 1 && EventDelta(bit1(0x0f869e)) && Room() == 0x010E           
)

achievement(
    title = "Chris VJOLT", description = "As Rebecca, Use VJolt on Plant42", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsRebecca() && EventDelta(bit4(0x0f8703))&& Room() == 0x030f           
)

achievement(
    title = "Chris Kill YAWN", description = "As Chris, Kill YAWN", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && EventDelta(bit1(0x0f86c2))&& Room() == 0x060C           
)

achievement(
    title = "Chris Colt Python", description = "Obtain the Colt Python as Chris", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && ItemPickup(bit0(0x0f86f0)) && Room() == 0x050D           
)

achievement(
    title = "Get Ready For the Heat Wave", description = "AS Chris, Equip a Flamethrower", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && WeaponEquipped() == 0x06 && Room() >= 0x0200 && Room() <= 0x0300           
)

achievement(
    title = "Double Crosser!", description = "AS Chris, Watch a scene with a fellow stars member in the Underground", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && EventDelta(bit7(0x0f869c)) && Room() == 0x020A           
)

/////////////////////KEY CHEEVOS///////////////////////////

//Need to find more small keys and put them in the alt chain
achievement(
    title = "Small Key", description = "Pick up a small key", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && ((ItemPickup(bit2(0x0f86ef)) && Room() == 0x0111)  ||   
              (ItemPickup(bit5(0x0f86e1)) && Room()== 0x001B) || (ItemPickup(bit5(0x0f86e9)) && Room()== 0x0301) ||
              (ItemPickup(bit5(0x0f86e8)) && Room()== 0x030F) || (ItemPickup(bit3(0x0f86f9)) && Room()== 0x061C))
)

achievement(
    title = "Obtain the Sword", description = "Find the Sword Key", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && ItemPickup(bit1(0x0f86df)) && Room() == 0x0000 && View() == 0x01         
)

achievement(
    title = "Unlock the Sword", description = "Unlock all possible doors with the Sword Key", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && Prior(byte(0x0f8662)) != 0x1f  &&
              (Delta(bit4(0x0f86b4)) + Delta(bit6(0x0f86b4)) + Delta(bit1(0x0f86b5))) == 2 && 
              measured(bit4(0x0f86b4) + bit6(0x0f86b4) + bit1(0x0f86b5) == 3)  
)

achievement(
    title = "Obtain the Shield", description = "Find the Shield Key", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && ItemPickup(bit6(0x0f86e1)) && Room() == 0x0005         
)

achievement(
    title = "Unlock the Shield", description = "Unlock all possible doors with the Shield Key", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Prior(byte(0x0f8662)) != 0x1f  &&
              Delta(bit0(0x0f86b5)) == 0 && 
              bit0(0x0f86b5) == 1  
)

achievement(
    title = "Obtain the Armor", description = "Find the Armor Key", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && ItemPickup(bit4(0x0f86de)) && Room() == 0x000C         
)

achievement(
    title = "Unlock the Armor", description = "Unlock all possible doors with the Armor Key", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Prior(byte(0x0f8662)) != 0x1f  &&
              (Delta(bit1(0x0f86b4)) + Delta(bit2(0x0f86b4)) + Delta(bit5(0x0f86b4)) + Delta(bit2(0x0f86b5)) + Delta(bit3(0x0f86b5)) + Delta(bit7(0x0f86b7))) == 5 && 
              measured(bit1(0x0f86b4) + bit2(0x0f86b4) + bit5(0x0f86b4) + bit2(0x0f86b5) + bit3(0x0f86b5) + bit7(0x0f86b7) == 6)  
)

achievement(
    title = "Obtain the Helmet", description = "Find the Helmet Key", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && ItemPickup(bit7(0x0f86e6)) && Room() == 0x030C         
)

achievement(
    title = "Unlock the Helmet", description = "Unlock all possible doors with the Helmet Key", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Prior(byte(0x0f8662)) != 0x1f  &&
              (Delta(bit6(0x0f86b6)) + Delta(bit7(0x0f86b6)) + Delta(bit3(0x0f86b4))) == 2 && 
              measured(bit6(0x0f86b6) + bit7(0x0f86b6) + bit3(0x0f86b4) == 3)  
)

achievement(
    title = "Unlock the Guard", description = "Unlock all possible doors in the Guardhouse", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Prior(byte(0x0f8662)) != 0x1f  &&
              (Delta(bit4(0x0f86b8)) + Delta(bit5(0x0f86b8)) + Delta(bit6(0x0f86b8)) + Delta(bit3(0x0f86b9))) == 3 && 
              measured(bit4(0x0f86b8) + bit5(0x0f86b8) + bit6(0x0f86b8) + bit3(0x0f86b9) == 4)  
)

achievement(
    title = "Unlock the Lab", description = "Unlock all possible doors in the Labratory", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Prior(byte(0x0f8662)) != 0x1f  &&
              (Delta(bit1(0x0f86b9)) + Delta(bit2(0x0f86b9)) + Delta(bit2(0x0f86b6)) + Delta(bit2(0x0f86b8))) == 3 && 
              measured(bit1(0x0f86b9) + bit2(0x0f86b9) + bit2(0x0f86b6) + bit2(0x0f86b8) == 4)  
)

///////////////Misc Items Cheevos/////////////////////////////


/////////////Either Jill or Chris Cheevos //////////////////////////////////

achievement(
    title = "It's Too Dangerous To Go Outside", description = "Try to leave the Spencer Mansion", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && EventDelta(bit3(0x0f8695)) && Room() == 0x0006         
)

achievement(
//Popped on seeing enrico so need to check during cutscens and pause if cutscene playing or find all scenes that cause a trigger and add a Room != flag
    title = "Stomp or Kick", description = "Stomp or Kick off a zombie head", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = ((IsChris() && byte(0x0f51aa) == 0x04) || (IsJill() && byte(0x0f51aa) == 0x04)) && Room() != 0         
)

achievement(
    title = "The Gate Of New Life Opened", description = "Unlock the door to the garden with the four crests", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x001a &&
              (Delta(bit3(0x0f870c)) + Delta(bit4(0x0f870c)) + Delta(bit5(0x0f870c)) + Delta(bit6(0x0f870c))) == 3 && 
              measured(bit3(0x0f870c) + bit4(0x0f870c) + bit5(0x0f870c) + bit6(0x0f870c) == 4) 
)

achievement(
    title = "Box Puzzle - Name Needed", description = "Solve the box puzzle in the Guardhouse", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x030d && EventDelta(bit6(0x0f8706))
)

achievement(
    title = "Eagle Vs Wolf", description = "Empty water fountain by placing the medals", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0205 && 
              (Delta(bit3(0x0f8702)) + Delta(bit4(0x0f8702))) == 1 && 
              measured(bit3(0x0f8702) + bit4(0x0f8702) == 2) 
)

///////////////Chris Challenges/////////////////////////////

achievement(
    title = "Zombie Clips(Chris)", description = "Grab 2 clips then kill zombie no damage[m]", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && Delta(bit3(0x0f86be)) == 0 && bit3(0x0f86be) == 1 && Room() == 0x0004 &&
              bit0(0x0f86e0) == 0 && bit6(0x0f86e0) == 0 && bit4(0x0f8695) == 0 &&
              PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() != 0x0004)            
)

///////////////Jill Challenges/////////////////////////////



///////////////Rebecca Challenges/////////////////////////////


///////////////Either Challenges/////////////////////////////



///////////////Battle Mode/////////////////////////////

