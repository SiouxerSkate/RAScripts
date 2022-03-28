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

function EndingVideo() => byte(0x14AE2C)
function DeltaEndingVideo() => Delta(EndingVideo())

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
                         

function UnlimitedLauncher() => bit4(0x0f870e)

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
    title = "This is my BOOM Stick", description = "AS Chris, Obtain the shotgun(Must place the broken shotgun in its place).", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && ItemPrior(bit7(0x0f86dd)) && EventDelta(bit6(0x0f86dd))&& Room() == 0x0016           
)

achievement(
    title = "MEDIC!", description = "As Rebecca, Save Chris with the Serum", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && bit2(0x0f869e) == 1 && EventDelta(bit1(0x0f869e)) && Room() == 0x010E           
)

achievement(
    title = "Rebecca, Chemical Engineer", description = "As Rebecca, Use VJolt on Plant 42 roots", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsRebecca() && EventDelta(bit4(0x0f8703))&& Room() == 0x030f           
)

achievement(
    title = "Damsel In Distress", description = "As Chris, Save Rebecca from a Hunter.(You must fight and kill the hunter)", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = ((EventDelta(bit2(0x0F86A0)) && Room() == 0x0606 && bit7(0x0F86A0) == 0) ||
              (EventDelta(bit6(0x0F869B)) && Room() == 0x0501 && bit7(0x0F869B) == 0)) &&
              IsChris()
)

achievement(
    title = "Snake Wrestler", description = "As Chris, Kill YAWN", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && EventDelta(bit1(0x0f86c2))&& Room() == 0x060C           
)

achievement(
    title = "Upgraded Firepower", description = "As Chris, Obtain the Colt Python", points = 5,
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
    title = "Got All My Girls WIth Me", description = "As Chris, Finish the game with the best possible outcome(Save Jill and Rebecca)", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && Room() == 0x0211 && bit6(0xf86c6) == 1 && DeltaEndingVideo() == 0x0E && EndingVideo() == 0x14
)

achievement(
    title = "Fresh Till Death", description = "As Chris, Change costume in the secret room", points = 5,
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
    trigger = IsJill() && EventDelta(bit0(0xf870e)) && Room() == 0x010D           
)

achievement(
    title = "Woman in STEM", description = "As Jill, Use VJOLT on Plant 42 roots", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsJill() && EventDelta(bit4(0x0f8703))&& Room() == 0x030f           
)

achievement(
    title = "Burn Baby Burn", description = "As Jill, Watch Barry Roast Plant 42", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsJill() && EventDelta(bit7(0x0f86c9)) && bit4(0x0f8703) == 0 && Room() == 0x030C           
)

achievement(
    title = "Richard Avenger", description = "As Jill, Kill YAWN", points = 5,
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
    title = "Just Me and My Boys", description = "As Jill, Finish the game with the best possible outcome(Save Barry and Chris)", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsJill() && Room() == 0x0211 && bit6(0xf86c6) == 1 && DeltaEndingVideo() == 0x0E && EndingVideo() == 0x15      
)

achievement(
    title = "Slip Into Something More Comfortable", description = "As Jill, Change costume in the secret room", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (Room() ==0x001C || Room() == 0x051C || Room() == 0x0012 || Room() == 0x0512) && 
              DeltaIsJill() && bit7(0xf86bb) == 1 && EventDelta(bit7(0xf870f))
                      
)

/////////////////////KEY CHEEVOS///////////////////////////

//Need to find more small keys and put them in the alt chain
achievement(
    title = "A Small Feat", description = "Pick up a small key", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && ((ItemPickup(bit2(0x0f86ef)) && Room() == 0x0111)  ||   
              (ItemPickup(bit5(0x0f86e1)) && Room()== 0x001B) || (ItemPickup(bit5(0x0f86e9)) && Room()== 0x0301) ||
              (ItemPickup(bit5(0x0f86e8)) && Room()== 0x030F) || (ItemPickup(bit3(0x0f86f9)) && Room()== 0x061C) || 
              (ItemPickup(bit4(0x0f86dd)) && Room()== 0x0013))
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
    title = "Unlock the Shield", description = "Unlock all possible doors with the Shield Key", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x010E  &&
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
    title = "Unlock the Guard", description = "Unlock all possible doors in the Guardhouse", points = 1,
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
    title = "Pack the Greens", description = "Combine 3 green herbs into one", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Prior(byte(0x0f8662)) != 0x1f
              // Leave as is and dont update local untill we can figure out what is different in RATools
)

achievement(
    title = "Rainbow Herb", description = "Combine 3 different colored herbs into one", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Prior(byte(0x0f8662)) != 0x1f
               // Leave as is and dont update local untill we can figure out what is different in RATools
)


achievement(
    title = "Spencer Cartographer", description = "Find all maps", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Prior(byte(0x0f8662)) != 0x1f  &&
              (Delta(bit0(0x0f871e)) + Delta(bit1(0x0f871e)) + Delta(bit2(0x0f871e)) + Delta(bit3(0x0f871e)) + Delta(bit7(0x0f8721))) == 4 && 
              measured(bit0(0x0f871e) + bit1(0x0f871e) + bit2(0x0f871e) + bit3(0x0f871e) + bit7(0x0f8721) == 5)  
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
    title = "Ground and Pound", description = "Stomp or Kick off a zombie head", points = 1,
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
    title = "Into the Depths", description = "Solve the box puzzle in the Guardhouse", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x030d && EventDelta(bit6(0x0f8706)) && bit7(0x0f8706) == 1
)

achievement(
    title = "Power In the Garden", description = "Obtain the battery to power the Garden elevator", points = 2,
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
    title = "No More Blackout", description = "Turn On Labratory power", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x040f && 
              EventDelta(bit1(0x0f8704)) 
)

achievement(
    title = "Jail Break", description = "Unlock Lab door using three passcodes", points = 5,
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
              EventDelta(bit6(0xf86c6)) && byte(0xf8689) == 1
)

achievement(
    title = "Cleanse the Manse", description = "Kill all BOWs in the mansion before the Guardhouse", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Room() < 0x0200
    // DONT UPDATE LOCAL UNTILL FIGURE OUT TO PORT TO RATOOLS

)

achievement(
    title = "Simple Gardening", description = "Kill all BOWs in the garden and Guardhouse before returning to the Mansion", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EnemyDelta() == 1 &&
              measured(EnemyNum() == 2) 
              // DONT UPDATE LOCAL UNTILL FIGURE OUT TO PORT TO RATOOLS
)

achievement(
    title = "Missed A Spot", description = "Kill all BOWs in the second trip to the Mansion and Underground", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EnemyDelta() == 1 &&
              measured(EnemyNum() == 2)
              // DONT UPDATE LOCAL UNTILL FIGURE OUT TO PORT TO RATOOLS
)

achievement(
    title = "Lab Cleanup", description = "Kill all BOWs in the Labratory", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EnemyDelta() == 1 &&
              measured(EnemyNum() == 2)  
              // DONT UPDATE LOCAL UNTILL FIGURE OUT TO PORT TO RATOOLS
)

achievement(
    title = "Spencer Cleanser", description = "Kill all BOWs in the game", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EnemyDelta() == 1 &&
              measured(EnemyNum() == 2) 
              // DONT UPDATE LOCAL UNTILL FIGURE OUT TO PORT TO RATOOLS
)

achievement(
    title = "Spencer Explorer", description = "Visit every room in all areas of the game(must be 2nd playthrough and enter dressing room)", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EventDelta(bit6(0xf86c6)) 
)

achievement(
    title = "Ritual Crest Knife", description = "From beginning of game, Unlock the Crest Door only equipped with Knife", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EventDelta(bit6(0xf86c6)) 
)

achievement(
    title = "Garden Variety Knife", description = "Starting at unlocking crest door, Navigate the Guardhouse and kill Plant 42 equipped only with the knife", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EventDelta(bit6(0xf86c6)) 
)

achievement(
    title = "Cutting A Rug", description = "Starting at First Hunter scene, Open the path to the Labratory equipped only with the knife", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EventDelta(bit6(0xf86c6)) 
)

achievement(
    title = "Surgical Knife", description = "Starting on draining water to lab, Compelte the game only equipped with the knife", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EventDelta(bit6(0xf86c6)) 
)

achievement(
    title = "Knife In a Tyrant Fight", description = "From beginning of game, Compelte the game only equipped with the knife", 
    points = 50, id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EventDelta(bit6(0xf86c6)) 
)

achievement(
    title = "Spencer Pacifist", description = "Beat the game without killing any BOWs(only Plant 42, YAWN, and Tyrants)(Jill first zombie ok)", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && 
              EnemyNum() == 3
)

///////////////Chris Challenges/////////////////////////////

achievement(
    title = "Zombie Sneaker Chris", description = "Grab 2 clips then kill zombie no damage[m]", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && Delta(bit3(0x0f86be)) == 0 && bit3(0x0f86be) == 1 && Room() == 0x0004 &&
              bit0(0x0f86e0) == 0 && bit6(0x0f86e0) == 0 && bit4(0x0f8695) == 0 &&
              PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() != 0x0004)            
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
    title = "Zombie Sneaker Jill", description = "As Jill, Grab 2 clips of Kenneth then have Barry kill zombie no damage[m]", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsJill() && Delta(bit3(0x0f86be)) == 0 && bit3(0x0f86be) == 1 && Room() == 0x0004 &&
              bit0(0x0f86e0) == 0 && bit6(0x0f86e0) == 0 && bit4(0x0f8695) == 0 &&
              PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() != 0x0004)            
)

///////////////Rebecca Challenges/////////////////////////////

achievement(
    title = "Rebecca, Zombie Hunter", description = "As Rebecca, kill at least 5 BOWs in mansion no damage[m]", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = IsRebecca() && Delta(bit3(0x0f86be)) == 0 && bit3(0x0f86be) == 1 && Room() == 0x0004 &&
              bit0(0x0f86e0) == 0 && bit6(0x0f86e0) == 0 && bit4(0x0f8695) == 0 &&
              PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() != 0x0004)            
)

achievement(
    title = "Pervs and Sharks", description = "As Rebecca, Kill all BOWs in the guardhouse", 
    points = 5, id = 0, badge = "0", published = "", modified = "",
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
              bit7(0x0f86be) == 0x00 && once(Delta(bit6(0x0f86ed)) == 0x01) && bit6(0x0f86ed) == 0x00 && 
              unless(once(Delta(byte(0x0f51ac)) > byte(0x0f51ac)))           
)

achievement(
    title = "Nap Time YAWN", description = "Cause YAWN to flee on first encounter without taking damage", points = 5,
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
              // DONT UPDATE THE LOCAL TO KEEP THE HTI CHAIN IN TACT NEED TO FIGURE OUT HOW TO REMAKE IN RATOOLS
)

achievement(
    title = "Get To the Root of the Problem", description = "Kill Plant 42 without taking damage", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x030C &&
              EventDelta(bit7(0x0f86c9)) &&
              PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() != 0x030C)            
)

achievement(
    title = "Welcome Back!", description = "Kill first Hunter without taking damage", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x050A &&
              EventDelta(bit5(0x0f86bd)) &&  
              PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() != 0x050A)            
)

achievement(
    title = "Hunter Becomes the Hunted", description = "Kill all Hunters in the Mansion", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = ((IsChris() && HunterDelta() == 18 && HunterNum() == 19) || 
               (IsJill())  && HunterDelta() == 15 && HunterNum() == 16) && Room() >= 0x0500
              // DONT UPDATE THE LOCAL TO KEEP THE HTI CHAIN IN TACT NEED TO FIGURE OUT HOW TO REMAKE IN RATOOLS
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
    title = "Faster Than the Spider", description = "Kill Tiger without taking damage", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() >= 0x020C &&
              EventDelta(bit6(0x0f86cc)) &&
              PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() != 0x020C)
)

achievement(
    title = "Chimera Shock", description = "Kill all Chimera in Power Rooms without taking damage or leaving power rooms", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() >= 0x060C &&
              EventDelta(bit1(0x0f86c2)) 
              // DONT UPDATE THE LOCAL TO KEEP THE HTI CHAIN IN TACT NEED TO FIGURE OUT HOW TO REMAKE IN RATOOLS
)

achievement(
    title = "The Ultimate Lifeform", description = "Kill Tyrant(s) without taking damage", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() >= 0x0413 &&
              EventDelta(bit7(0x0f86cb)) &&
              PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() != 0x0413)
)

achievement(
    title = "Run For Your Life", description = "Kill all BOWs during escape without taking damage", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() >= 0x060C &&
              // Need to figure out this. Especially with Chris having more enemies than Jill
              EventDelta(bit1(0x0f86c2)) 
)

achievement(
    title = "Speedy Destruction", description = "Final Tyrant with 45 seconds or more left till detonation(First playthrough i.e. no unlimited launcher)", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x0203 && prev(bit6(0xf86c6)) == 0 &&
              trigger_when(bit6(0x0f86c6) == 1) && byte(0x0f867c) < 0x87 && unless(bit4(0x0f870e) == 1)
)

achievement(
    title = "Dont Call the Doctor", description = "From beginning of game, finish the game without healing", points = 50,
    id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() >= 0x0203 &&
              EventDelta(bit6(0x0f86c6)) && byte(0x0f867c) < 0x87
              
)

///////////////Battle Mode/////////////////////////////

achievement(
    title = "Boss Rush", description = "Finish Battle Mode", 
    points = 5, id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() == 0x070f &&
              EventDelta(byte(0x0ffff6))
)

achievement(
    title = "Jill Warrior Princess", description = "Complete Battle Mode with an 'S' rank as Jill", 
    points = 10, id = 0, badge = "0", published = "", modified = "",
    trigger = IsJill() && Room() == 0x070f &&
              EventDelta(byte(0x0ffff6))  && CalcBattleGamePoints() >= 1000          
)

achievement(
    title = "Chris Ultimate Warrior", description = "Complete Battle Mode with an 'S' rank as Chris", 
    points = 10, id = 0, badge = "0", published = "", modified = "",
    trigger = IsChris() && Room() == 0x070f &&
              EventDelta(byte(0x0ffff6)) && CalcBattleGamePoints() >= 1000           
)

achievement(
    title = "Bare Bones Battler", description = "Complete Battle Mode equipped with the knife and handgun only", 
    points = 50, id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) &&
              Delta(byte(0x0ffff6)) == 0 && trigger_when(byte(0xffff6) == 1) &&
              PauseLock(byte(0x0f5127) > 2, Room() <= 0x0700)
)

achievement(
    title = "Like the Flash", description = "Complete Battle Mode in less than 5 minutes", 
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

achievement(
    title = "Perfect Boss Rush", description = "Finish Battle Mode without taking damage", 
    points = 50, id = 0, badge = "0", published = "", modified = "",
    trigger = (IsChris() || IsJill()) && Room() >= 0x0701 &&
              EventDelta(byte(0x0ffff6)) &&  PauseLock(Delta(byte(0x0f51ac)) > byte(0x0f51ac), Room() <= 0x0700)
)