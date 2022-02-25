// Resident Evil
// #ID = 7140

////////////////////////////////Function Declaration//////////////////////////////////////////////

function Delta(mem) => prev(mem)

function Prior(mem) => prior(mem)

function PauseIf(compairison) => unless(compairison)

function PauseLock(compairison, reset) => disable_when(compairison, until=reset)

function ResetIf(compairison) => never(compairison)

function Room() => word(0x0f8660)
function DeltaRoom() => Delta(Room())

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
function DeltaIsChris() => Delta(Character()) == 0

function IsJill() => Character() == 1
function DeltaIsJill() => Delta(Character()) == 1

function IsRebecca() => Character() == 3

function WeaponEquipped() => byte(0x0f5127)

function FilesNum() => bit0(0x0f8720) + bit1(0x0f8720) + bit3(0x0f8720) + bit4(0x0f8720) + bit5(0x0f8720) + bit6(0x0f8720) + bit7(0x0f8720) +
                       bit0(0x0f8721) + bit2(0x0f8721) + bit3(0x0f8721) + bit4(0x0f8721) + bit6(0x0f8723) + bit7(0x0f8723)
                       
function FilesDelta() => Delta(bit0(0x0f8720)) + Delta(bit1(0x0f8720)) + Delta(bit3(0x0f8720)) + Delta(bit4(0x0f8720)) + Delta(bit5(0x0f8720)) + 
                         Delta(bit6(0x0f8720)) + Delta(bit7(0x0f8720)) + Delta(bit0(0x0f8721)) + Delta(bit2(0x0f8721)) + Delta(bit3(0x0f8721)) + 
                         Delta(bit4(0x0f8721)) + Delta(bit6(0x0f8723)) + Delta(bit7(0x0f8723))
                         
function EnemyNum() => bitcount(dword(0x0f86bc)) + bitcount(dword(0x0f86c0)) + bitcount(dword(0x0f86c4)) + bitcount(dword(0x0f86c8)) + bitcount(dword(0x0f86cc)) 
                       + bitcount(dword(0x0f86d0))
                       
function EnemyDelta() => Delta(bitcount(dword(0x0f86bc))) + Delta(bitcount(dword(0x0f86c0))) + Delta(bitcount(dword(0x0f86c4))) + Delta(bitcount(dword(0x0f86c8)))
                         + Delta(bitcount(dword(0x0f86cc))) + Delta(bitcount(dword(0x0f86d0)))
                         
function HunterNum() => bit0(0x0f86bc) + bit1(0x0f86bc) + bit5(0x0f86bd) + bit1(0x0f86bf) + bit2(0x0f86bf) + bit0(0x0f86c0) + bit2(0x0f86c2) + bit3(0x0f86c2) 
                        + bit4(0x0f86c2) + bit5(0x0f86c2) + bit0(0x0f86c8) + bit1(0x0f86c8) + bit1(0x0f86cb) + bit2(0x0f86cb) + bit0(0x0f86ce) + bit1(0x0f86ce)
                        + bit3(0x0f86ce) + bit4(0x0f86ce) + bit6(0x0f86d0)
                       
function HunterDelta() => Delta(bit0(0x0f86bc)) + Delta(bit1(0x0f86bc)) + Delta(bit5(0x0f86bd)) + Delta(bit1(0x0f86bf)) + Delta(bit2(0x0f86bf)) + Delta(bit0(0x0f86c0))
                          + Delta(bit2(0x0f86c2)) + Delta(bit3(0x0f86c2)) + Delta(bit4(0x0f86c2)) + Delta(bit5(0x0f86c2)) + Delta(bit0(0x0f86c8))
                          + Delta(bit1(0x0f86c8)) + Delta(bit1(0x0f86cb)) + Delta(bit2(0x0f86cb)) + Delta(bit0(0x0f86ce)) + Delta(bit1(0x0f86ce))
                          + Delta(bit3(0x0f86ce)) + Delta(bit4(0x0f86ce)) + Delta(bit6(0x0f86d0))
                          
function TickNum() => bit0(0x0f86c4) + bit1(0x0f86c4) + bit2(0x0f86c4) + bit3(0x0f86c4) + bit4(0x0f86c4) + bit7(0x0f86c7) + bit4(0x0f86ca) + bit5(0x0f86ca) 

function TickDelta() => Delta(bit0(0x0f86c4)) + Delta(bit1(0x0f86c4)) + Delta(bit2(0x0f86c4)) + Delta(bit3(0x0f86c4)) + Delta(bit4(0x0f86c4))
                        + Delta(bit7(0x0f86c7)) + Delta(bit4(0x0f86ca)) + Delta(bit5(0x0f86ca))
                        
function ChimeraNum() => bit5(0x0f86c9) + bit6(0x0f86c9) + bit6(0x0f86ca) + bit7(0x0f86ca)

function ChimeraDelta() => Delta(bit5(0x0f86c9)) + Delta(bit6(0x0f86c9)) + Delta(bit6(0x0f86ca)) + Delta(bit7(0x0f86ca))

function CalcBattleGamePoints() => word(0x0fffa6) + (byte(0x0fffa8) * 6) + (byte(0x0fffa9) * 2) + (byte(0x0fffaa) * 15) +
                                   (byte(0x0fffab) * 10) + (byte(0x0fffac) * 15) + (byte(0x0fffad) * 15) + (byte(0x0fffaf) * 150)
                         

//////////////////////////////Acheivements////////////////////////////////////////////////////////////

//////////////////////////////Chris Run Acheivements////////////////////////////////////////////////////////////

achievement(
    title = "Where Are They?", description = "As Chris, Obtain Jill's Beretta", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && ItemPickup(bit5(0x0f86de)) && Room() == 0x0006              
)

achievement(
    title = "Whoa!...What Is It?", description = "AS Chris, Meet Rebecca in the Medical Storgae Room", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && EventPrior(bit5(0x0f8699)) && Room() == 0x0000 &&  View() == 0x03            
)

achievement(
    title = "Chris Shotgun", description = "AS Chris, Obtain the shotgun(Must place the broken shotgun in its place).", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && ItemPrior(bit7(0x0f86dd)) && EventDelta(bit6(0x0f86dd))&& Room() == 0x0016           
)

achievement(
    title = "Chris SERUM", description = "As Rebecca, Save Chris with the Serum", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && bit2(0x0f869e) == 1 && EventDelta(bit1(0x0f869e)) && Room() == 0x010E           
)

achievement(
    title = "Chris VJOLT", description = "As Rebecca, Use VJolt on Plant 42 roots", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsRebecca() && EventDelta(bit4(0x0f8703))&& Room() == 0x030f           
)

achievement(
    title = "Rebecca Hunter - Need Name", description = "As Chris, Save Rebecca from a Hunter", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && EventDelta(bit1(0x0f86c2))&& Room() == 0x0606 // Need event delta memory for the rebecca save           
)

achievement(
    title = "Chris Kill YAWN", description = "As Chris, Kill YAWN", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && EventDelta(bit1(0x0f86c2))&& Room() == 0x060C           
)

achievement(
    title = "Chris Colt Python", description = "As Chris, Obtain the Colt Python", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && ItemPickup(bit0(0x0f86f0)) && Room() == 0x050D           
)

achievement(
    title = "Get Ready For the Heat Wave", description = "As Chris, Equip a Flamethrower", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && WeaponEquipped() == 0x06 && Room() >= 0x0200 && Room() <= 0x0300           
)

achievement(
    title = "Double Crosser!", description = "As Chris, Watch a scene with a fellow stars member in the Underground", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && EventDelta(bit7(0x0f869c)) && Room() == 0x020A           
)

achievement(
    title = "Man vs Man...?", description = "As Chris, Destory the ultimate lifeform in the Labratory", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && EventDelta(bit7(0xf86cb)) && Room() == 0x0413           
)

achievement(
    title = "Best ending Chris - Need Name", description = "As Chris, Finish the game with the best possible outcome(Save Jill and Rebecca)", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && Room() == 0x0203 && EventDelta(bit6(0xf86c6)) // Need memory for saving Jill and Rebecca alive
)

achievement(
    title = "Secret Costume Chris - Need Name", description = "As Chris, Change costume in the secret room", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (Room() ==0x001C || Room() == 0x051C || Room() == 0x0012 || Room() == 0x0512) && 
              DeltaIsChris() && bit7(0xf86bb) == 1 && EventDelta(bit7(0xf870f))
                      
)

////////////////////Jill Run Cheevos//////////////////////

achievement(
    title = "Stay Alert", description = "As Jill, Kill the first zombie on first encounter[m]", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsJill() && EventDelta(bit3(0xf86be)) && bit6(0xf86a9) == 0 && Room() == 0x0004         
)

achievement(
    title = "Master Of Unlocking", description = "As Jill, Recieve the lockpick from Barry", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsJill() && EventDelta(bit3(0xf870e)) && Room() == 0x0006           
)

achievement(
    title = "Jill Sandwhich", description = "As Jill, Have Barry save you from a collapsing room", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsJill() && EventDelta(bit6(0xf8699)) && Room() == 0x0009           
)

achievement(
    title = "A Gift From Forrest", description = "As Jill, Obtain a Bazooka", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsJill() && ItemPickup(bit1(0xf86dd)) && Room() == 0x0112           
)

achievement(
    title = "Drug Runner", description = "As Jill, Give Richard the Serum and receive his radio", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsJill() && ItemPickup(bit0(0xf870e)) && Room() == 0x010D           
)

achievement(
    title = "Jill Vjolt - Need Name", description = "As Jill, Use VJOLT on Plant 42 roots", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsJill() && EventDelta(bit4(0x0f8703))&& Room() == 0x030f           
)

achievement(
    title = "Burn Baby Burn", description = "As Jill, Watch Barry Roast Plant 42", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsJill() && EventDelta(bit7(0x0f86c9)) && bit4(0x0f8703) == 0 && Room() == 0x030C           
)

achievement(
    title = "Jill Kill YAWN", description = "As Jill, Kill YAWN", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsJill() && EventDelta(bit1(0x0f86c2))&& Room() == 0x060C           
)

achievement(
    title = "I HAVE THIS", description = "As Jill, Obtain the Colt Python", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsJill() && ItemPickup(bit0(0x0f86f0)) && Room() == 0x050D           
)

achievement(
    title = "STARS are doomed", description = "As Jill, Watch a scene with a fellow stars member in the Underground", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsJill() && EventDelta(bit7(0x0f869c)) && Room() == 0x020A           
)

achievement(
    title = "Tyrant Or Something...I Think", description = "As Jill, Destory the ultimate lifeform in the Labratory", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsJill() && EventDelta(bit7(0xf86cb)) && Room() == 0x0413           
)

achievement(
    title = "Best ending Jill - Need Name", description = "As Jill, Finish the game with the best possible outcome(Save Barry and Chris)", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsJill() && Room() == 0x0203 && EventDelta(bit6(0xf86c6)) && bit4(0x0f869c) == 1 && bit4(0x0f869e) == 1 && bit7(0x0f869e) == 1      
)

achievement(
    title = "Secret Costume Jill - Need Name", description = "As Jill, Change costume in the secret room", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (Room() ==0x001C || Room() == 0x051C || Room() == 0x0012 || Room() == 0x0512) && 
              DeltaIsJill() && bit7(0xf86bb) == 1 && EventDelta(bit7(0xf870f))
                      
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

achievement(
    title = "Green Herbs", description = "Combine 3 green herbs into one", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Prior(byte(0x0f8662)) != 0x1f
              // Need memory for the green herbs 0x4A is value for the G+G+G
)

achievement(
    title = "Rainbow Herb", description = "Combine 3 different colored herbs into one", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Prior(byte(0x0f8662)) != 0x1f
              // Need memory for the green herbs 0x4A is value for the G+R+B
)


achievement(
    title = "Spencer Cartographer", description = "Find all maps", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Prior(byte(0x0f8662)) != 0x1f  &&
              (Delta(bit0(0x0f871e)) + Delta(bit1(0x0f871e)) + Delta(bit2(0x0f871e)) + Delta(bit3(0x0f871e)) + Delta(bit7(0x0f8721))) == 4 && 
              measured(bit0(0x0f871e) + bit1(0x0f871e) + bit2(0x0f871e) + bit3(0x0f871e) + bit7(0x0f8721) == 5)  
)

achievement(
    title = "Spencer's House Keeper", description = "Pick up every possible item", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Prior(byte(0x0f8662)) != 0x1f 
               // Need to figure out how to do this
)


achievement(
    title = "Start the Investigation", description = "Find your first file", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Prior(byte(0x0f8662)) != 0x1f &&
              FilesDelta() == 0 && FilesNum() == 1  
)

achievement(
    title = "Finish the Investigation", description = "Find all files", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Prior(byte(0x0f8662)) != 0x1f  &&
              FilesDelta() == 12 && measured(FilesNum() == 13)  
)

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
    title = "Battery - Name Needed", description = "Obtain the battery to power the Garden elevator", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0619 && 
              ItemPickup(bit6(0xf86e2))
)

achievement(
    title = "Eagle Vs Wolf", description = "Empty water fountain by placing the medals", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0205 && 
              (Delta(bit3(0x0f8702)) + Delta(bit4(0x0f8702))) == 1 && 
              measured(bit3(0x0f8702) + bit4(0x0f8702) == 2) 
)

achievement(
    title = "Lab Power - Need Name", description = "Turn On Labratory power", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x040f && 
              EventDelta(bit1(0x0f8704)) 
)

achievement(
    title = "Unlock Lab Jail - Need Name", description = "Unlock Lab door using three passcodes", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0408 && 
              (Delta(bit1(0xf8707)) + Delta(bit2(0xf8707)) + Delta(bit3(0xf8707))) == 2 && 
              measured(bit1(0xf8707) + bit2(0xf8707) + bit3(0xf8707) == 3) 
)

achievement(
    title = "Escape the Nightmare", description = "Escape from the Spencer Mansion", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EventDelta(bit6(0xf86c6)) 
)

////////////////Challenge Runs///////////////////////////////

achievement(
    title = "Launch Party", description = "Beat game in under three hours and unlock your prize", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EventDelta(bit6(0xf86c6)) 
)

achievement(
    title = "Low On Ink", description = "Beat game without saving", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EventDelta(bit6(0xf86c6)) 
)

achievement(
    title = "BOW Mansions", description = "Kill all BOWs in the mansion before the Guardhouse", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 &&
              EnemyDelta() == 1 &&
              measured(EnemyNum() == 2) 
)

achievement(
    title = "BOW Guardhouse", description = "Kill all BOWs in the garden and Guardhouse before returning to the Mansion", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EnemyDelta() == 1 &&
              measured(EnemyNum() == 2) 
)

achievement(
    title = "BOW Mansion and Underground", description = "Kill all BOWs in the second trip to the Mansion and Underground", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EnemyDelta() == 1 &&
              measured(EnemyNum() == 2) 
)

achievement(
    title = "BOW Lab", description = "Kill all BOWs in the Labratory", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EnemyDelta() == 1 &&
              measured(EnemyNum() == 2)  
)

achievement(
    title = "BOW All", description = "Kill all BOWs in the game", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EnemyDelta() == 1 &&
              measured(EnemyNum() == 2) 
)

achievement(
    title = "Spencer Explorer", description = "Visit every room in all areas of the game(must be 2nd playthrough and enter dressing room)", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EventDelta(bit6(0xf86c6)) 
)

achievement(
    title = "Mansion Knife - Need Name", description = "From beginning of game, Unlock the Crest Door only equipped with Knife", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EventDelta(bit6(0xf86c6)) 
)

achievement(
    title = "Guardhouse Knife - Need Name", description = "Starting at unlocking crest door, Navigate the Guardhouse and kill Plant 42 equipped only with the knife", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EventDelta(bit6(0xf86c6)) 
)

achievement(
    title = "Mansion Knife II - Need Name", description = "Starting at First Hunter scene, Open the path to the Labratory equipped only with the knife", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EventDelta(bit6(0xf86c6)) 
)

achievement(
    title = "Lab Knife II - Need Name", description = "Starting on draing water to lab, Compelte the game only equipped with the knife", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EventDelta(bit6(0xf86c6)) 
)

achievement(
    title = "Pecifist run - Need Name", description = "Beat the game without killing any BOWs(only Plant 42, YAWN, and Tyrants)(Jill first zombie ok)", points = 50,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EnemyNum() == 3
)

///////////////Chris Challenges/////////////////////////////

achievement(
    title = "Zombie Clips(Chris)", description = "Grab 2 clips then kill zombie no damage[m]", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && Delta(bit3(0x0f86be)) == 0 && bit3(0x0f86be) == 1 && Room() == 0x0004 &&
              bit0(0x0f86e0) == 0 && bit6(0x0f86e0) == 0 && bit4(0x0f8695) == 0 &&
              PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() != 0x0004)            
)

achievement(
    title = "Nav to Becca", description = "As Chris, from the start of game navigate to first meeting of Rebecca in Medical Room killing at least 9 BOWs no damage[m] ", 
    points = 5, id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && Room() == 0 && 
              measured(EnemyNum() == 9) &&
              PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() == 0)  
              //Figure out when to do the room reset           
)

achievement(
    title = "The (UN)Master Of Unlocking, description", description = "Unlock all possible doors with the Armor Key", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && Prior(byte(0x0f8662)) != 0x1f  &&
              (Delta(bit0(0x0f86b6)) + Delta(bit1(0x0f86b6)) + Delta(bit4(0x0f86b9)) + Delta(bit5(0x0f86b9)) + Delta(bit6(0x0f86b9)) + Delta(bit7(0x0f86b9))) == 5 && 
              measured(bit0(0x0f86b6) + bit1(0x0f86b6) + bit4(0x0f86b9) + bit5(0x0f86b9) + bit6(0x0f86b9) + bit7(0x0f86b9) == 6)  
)

///////////////Jill Challenges/////////////////////////////

achievement(
    title = "Zombie Clips(Jill)", description = "As Jill, Grab 2 clips of Kenneth then have Barry kill zombie no damage[m]", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsJill() && Delta(bit3(0x0f86be)) == 0 && bit3(0x0f86be) == 1 && Room() == 0x0004 &&
              bit0(0x0f86e0) == 0 && bit6(0x0f86e0) == 0 && bit4(0x0f8695) == 0 &&
              PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() != 0x0004)            
)

achievement(
    title = "Nav to Barry", description = "As Jill, from the start of game navigate to meeting of Barry on 2nd florr killing at least 10 BOWs no damage[m]", 
    points = 5, id = 0, badge = "0", published = "", modified = "",
    trigger = IsJill() && Room() == 0 && 
              measured(EnemyNum() == 10) &&
              PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() == 0)
              //Figure out when to do the room reset
             
)

///////////////Rebecca Challenges/////////////////////////////

achievement(
    title = "Zombie Rebecca", description = "As Rebecca, kill at least 5 BOWs in mansion no damage[m]", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsRebecca() && Delta(bit3(0x0f86be)) == 0 && bit3(0x0f86be) == 1 && Room() == 0x0004 &&
              bit0(0x0f86e0) == 0 && bit6(0x0f86e0) == 0 && bit4(0x0f8695) == 0 &&
              PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() != 0x0004)            
)

achievement(
    title = "Sharks Rebecca", description = "As Rebecca, Kill the sharks in the guardhouse", 
    points = 2, id = 0, badge = "0", published = "", modified = "",
    trigger = IsRebecca() && Room() == 0 && 
              PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() == 0)
              //Figure out when to do the room reset
              // Need to figure out a way to make hits on killing BOWs
              
)

achievement(
    title = " Rebecca Guardhouse", description = "As Rebecca, Kill all BOWs in the guardhouse", 
    points = 2, id = 0, badge = "0", published = "", modified = "",
    trigger = IsRebecca() && Room() == 0 && 
              PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() == 0)
               //Figure out when to do the room reset
              // Need to figure out a way to make hits on killing BOWs
              
)

///////////////Either Challenges/////////////////////////////

achievement(
    title = "Here Doggie Doggie", description = "Kill first two Cereberus in 'L' Hallway before getting shotgun without taking damage", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0008 && bit7(0x0f86dd) == 1 &&
              (Delta(bit6(0x0f86bd)) + Delta(bit7(0x0f86bd))) == 1 && 
              bit6(0x0f86bd) + bit7(0x0f86bd) == 2 &&  
              PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() != 0x0008)            
)

achievement(
    title = "Howling At the Moon", description = "Grab Moon crest and escape from YAWN without taking damage", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill() || never(Room() > 0x110) && never(Room() < 0x10e) && always_false()) && 
              DeltaRoom() == 0x0110 && Room() == 0x010e && 
              bit0(0x0f86be) == 0x00 && once(Delta(bit6(0x0f86ed)) == 0x01) && bit6(0x0f86ed) == 0x00 && 
              unless(once(Delta(byte(0x0f51ac)) > byte(0x0f51ac)))           
)

achievement(
    title = "YAWN 1st no damage", description = "Cause YAWN to flee on first encounter without taking damage", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0110 &&
              EventDelta(bit7(0x0f86be)) &&  
              PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() != 0x0110)            
)

achievement(
    title = "Silence the Critics", description = "Kill all crows in the Gallery art room without taking damage or leaving the room after first crow killed", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = ((IsChris() && never(Room() != 0x0017)) || IsJill()) && Room() == 0x0017 &&
              once(Delta(bit0(0x0f86c1)) < bit0(0x0f86c1)) && once(Delta(bit1(0x0f86c1)) < bit1(0x0f86c1)) &&
              once(Delta(bit2(0x0f86c1)) < bit2(0x0f86c1)) && once(Delta(bit3(0x0f86c1)) < bit3(0x0f86c1)) &&
              once(Delta(bit4(0x0f86c1)) < bit4(0x0f86c1)) && once(Delta(bit5(0x0f86c1)) < bit5(0x0f86c1)) &&
              unless(once(Delta(byte(0x0f51ac)) > byte(0x0f51ac)))            
)

achievement(
    title = "Get To the Root of the Problem", description = "Kill Plant 42 without taking damage", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x030C &&
              EventDelta(bit7(0x0f86c9)) &&
              PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() != 0x030C)            
)

achievement(
    title = "Hunter need name", description = "Kill first Hunter without taking damage", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x050A &&
              EventDelta(bit5(0x0f86bd)) &&  
              PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() != 0x050A)            
)

achievement(
    title = "Hunter Becomes the Hunted", description = "Kill all Hunters in the Mansion", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = ((IsChris() && HunterDelta() == 18 && HunterNum() == 19) || 
               (IsJill())  && HunterDelta() == 15 && HunterNum() == 16) && Room() >= 0x0500
)

achievement(
    title = "Wake Up Baby...It's Time to Die", description = "Kill YAWN without taking damage", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() >= 0x060C &&
              EventDelta(bit1(0x0f86c2)) &&
              PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() != 0x060C)
)

achievement(
    title = "Ticked Off", description = "Kill all Ticks in underground", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill())  && TickDelta() == 7 && measured(TickNum() == 8) && Room() >= 0x0200 && Room() <= 0x0300
)

achievement(
    title = "Crouching Tiger Hidden Spider", description = "Kill Tiger without taking damage", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() >= 0x020C &&
              EventDelta(bit6(0x0f86cc)) &&
              PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() != 0x020C)
)

achievement(
    title = "Chimera Needs Name", description = "Kill all Chimera in Power Rooms without taking damage or leaving power rooms", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() >= 0x060C &&
              EventDelta(bit1(0x0f86c2)) 
              // Dont do a local update of this as it will break the hit chain created. Wasnt sure how to recrete with RATools
)

achievement(
    title = "First Tyrants Need Name", description = "Kill Tyrant(s) without taking damage", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() >= 0x0413 &&
              EventDelta(bit7(0x0f86cb)) &&
              PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() != 0x0413)
)

achievement(
    title = "Escape sequence BOWs needs name", description = "Kill all BOWs during escape without taking damage", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() >= 0x060C &&
              // Need to figure out this. Especially with Chris having more enemies than Jill
              EventDelta(bit1(0x0f86c2)) 
)

achievement(
    title = "Tyrant Time - Needs Name", description = "Final Tyrant with 45 seconds or more left till detonation(First playthrough i.e. no unlimited launcher)", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() >= 0x0203 &&
              EventDelta(bit6(0x0f86c6)) && byte(0x0f867c) < 0x87
              
)

///////////////Battle Mode/////////////////////////////

achievement(
    title = "Battle Mode - Need Name", description = "Finish Battle Mode", 
    points = 10, id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x070f &&
              EventDelta(byte(0x0ffff6))
)

achievement(
    title = "Battle Mode S Jill - Need Name", description = "Complete Battle Mode with an 'S' rank as Jill", 
    points = 25, id = 0, badge = "0", published = "", modified = "",
    trigger = IsJill() && Room() == 0x070f &&
              EventDelta(byte(0x0ffff6))  && CalcBattleGamePoints() >= 1000          
)

achievement(
    title = "Battle Mode S Chris - Need Name", description = "Complete Battle Mode with an 'S' rank as Chris", 
    points = 25, id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && Room() == 0x070f &&
              EventDelta(byte(0x0ffff6)) && CalcBattleGamePoints() >= 1000           
)

achievement(
    title = "Battle Mode - Knife Handgun Only", description = "Complete Battle Mode equipped with the knife and handgun only", 
    points = 50, id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x070f &&
              EventDelta(byte(0x0ffff6))  &&
              PauseLock(byte(0x0f5127) > 2, Room() <= 0x0700)
)

achievement(
    title = "Battle Mode - 5 minutes", description = "Complete Battle Mode in less than 5 minutes", 
    points = 25, id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x070f &&
              EventDelta(byte(0x0ffff6)) && word(0x0fffa2) < 0x468e           
)

achievement(
    title = "Just You and Me Pal", description = "In Wesker Zombie room, kill all other zombies before killing Wesker zombie", 
    points = 5, id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x070c &&
               word(0x0f54b8) == 0xFFFF && word(0x0f5644) == 0xFFFF && word(0x0f57d0) == 0xFFFF &&
               Delta(word(0x0f532c)) != 0xFFFF && word(0x0f532c) == 0xFFFF
)