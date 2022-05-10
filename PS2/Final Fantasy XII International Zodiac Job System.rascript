// Final Fantasy XII: International Zodiac Job System
// #ID = 5803

////////////////////////////////Function Declaration//////////////////////////////////////////////
function Delta(mem) => prev(mem)
function Prior(mem) => prior(mem)
function PauseLock(compairison, reset) => disable_when(compairison, until=reset)

function MapID() => dword(0x54bc44)
function EventID() => dword(0x54ac00)

function InGame() => MapID() != 0x0c && prior(MapID()) != 0x0C && EventID() > 0x19

function DefeatBoss(mem) => once(mem == 0) && Delta(mem) == 0x01 && mem == 0x02
function ItemPickup(mem) => mem > Delta(mem)

//////////////////////////////Acheivements////////////////////////////////////////////////////////////
//////////////////////////////Story Cheevos////////////////////////////
achievement(
    title = "A Treaty Signed With Steel", description = "Complete the Prologue at Nalbina with Reks", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  Delta(MapID()) == 0x11a && Delta(EventID()) == 0x17 && EventID() == 0x19  
)

achievement(
    title = "Choose First Class", description = "Choose Vaan's first class", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = InGame() && Delta(byte(0x54cdca)) == 0xFF && byte(0x54cdca) >= 0
)

achievement(
    title = "Exit Stage Right", description = "Obtain the Goddess Magicite", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = MapID() == 0x23B && EventID() == 0xDC && Delta(bit4(0x551AB5)) == 0 && bit4(0x551AB5) == 1
)

//////////////////////////////Sky Pirate Den Cheevos///////////////////
achievement(
    title = "Assualt Striker", description = "Unlock the Bathier statue in the Sky Pirate's Den by using attack over 300 times", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit0(0x556444)) == 0 && bit0(0x556444) == 1   
)

achievement(
    title = "Spellsinger", description = "Unlock the Fran statue in the Sky Pirate's Den by using Magick over 200 times", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit1(0x556444)) == 0 && bit1(0x556444) == 1   
)

achievement(
    title = "Premier Prestidigitator", description = "Unlock the Vayne statue in the Sky Pirate's Den by using Technicks 100 times", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit2(0x556444)) == 0 && bit2(0x556444) == 1   
)

achievement(
    title = "Master Thief", description = "Unlock the Vaan statue in the Sky Pirate's Den by successfully stealing over 50 times", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit3(0x556444)) == 0 && bit3(0x556444) == 1   
)

achievement(
    title = "Blood Dancer", description = "Unlock the Basch statue in the Sky Pirate's Den by defeating more than 500 enemies", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit4(0x556444)) == 0 && bit4(0x556444) == 1   
)

achievement(
    title = "Wayfarer", description = "Unlock the Chocobo statue in the Sky Pirate's Den by taking over 50,000 steps", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit5(0x556444)) == 0 && bit5(0x556444) == 1   
)

achievement(
    title = "Plunderer", description = "Unlock the Panelo statue in the Sky Pirate's Den by acquiring over 100,000 gil", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit6(0x556444)) == 0 && bit6(0x556444) == 1   
)

achievement(
    title = "Spendthrift", description = "Unlock the Gurdy statue in the Sky Pirate's Den by spending over 1,000,000 gil", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit7(0x556444)) == 0 && bit7(0x556444) == 1   
)

achievement(
    title = "Exemplar", description = "Unlock the Ashe statue in the Sky Pirate's Den by raising the party's average level above 50", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit0(0x556445)) == 0 && bit0(0x556445) == 1   
)

achievement(
    title = "Runeweaver", description = "Unlock the Crystal statue in the Sky Pirate's Den by learning every Magick", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit1(0x556445)) == 0 && bit1(0x556445) == 1   
)

achievement(
    title = "Jack-of-All-Trades", description = "", points = 5,
    id = 0, badge = "0", published = "", modified = "Unlock the Vossler statue in the Sky Pirate's Den by learning every Technick",
    trigger =  InGame() && Delta(bit2(0x556445)) == 0 && bit2(0x556445) == 1   
)

achievement(
    title = "Conqueror", description = "Unlock the Rasler statue in the Sky Pirate's Den by learnign every license", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit3(0x556445)) == 0 && bit3(0x556445) == 1   
)

achievement(
    title = "High Summoner", description = "Unlock the Belias statue in the Sky Pirate's Den by obtaining all 13 Espers", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit4(0x556445)) == 0 && bit4(0x556445) == 1   
)

achievement(
    title = "Mist Walker", description = "Unlock the Gabranth statue in the Sky Pirate's Den by using every Concurrence", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit5(0x556445)) == 0 && bit5(0x556445) == 1   
)

achievement(
    title = "Privateer", description = "Unlock the Migelo statue in the Sky Pirate's Den by selling over 1,000 pieces of loot", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit6(0x556445)) == 0 && bit6(0x556445) == 1   
)

achievement(
    title = "Cartographer", description = "Unlock the Old Dalan statue in the Sky Pirate's Den by fully exploring every map(excluding one time areas)", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit7(0x556445)) == 0 && bit7(0x556445) == 1   
)

achievement(
    title = "Scrivener", description = "Unlock the Ba'Gamnan statue in the Sky Pirate's Den by completing the Bestiary", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit0(0x556446)) == 0 && bit0(0x556446) == 1   
)

achievement(
    title = "Record Breaker", description = "Unlock the Reks statue in the Sky Pirate's Den by obtaining over 500,000 Clan Points", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit1(0x556446)) == 0 && bit1(0x556446) == 1   
)

achievement(
    title = "The Unrelenting", description = "", points = 5,
    id = 0, badge = "0", published = "", modified = "Unlock the Montblanc statue in the Sky Pirate's Den by completing a 50-Chain in battle",
    trigger =  InGame() && Delta(bit2(0x556446)) == 0 && bit2(0x556446) == 1   
)

achievement(
    title = "Collector", description = "Unlock the Mimic statue in the Sky Pirate's Den by obtaining rare goods in the Bazaar", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit3(0x556446)) == 0 && bit3(0x556446) == 1   
)

achievement(
    title = "Sharpshooter", description = "Unlock the Tricktser statue in the Sky Pirate's Den by defeating the Trickster", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit4(0x556446)) == 0 && bit4(0x556446) == 1   
)

achievement(
    title = "Master Swordsman", description = "Unlock the Gilgamesh statue in the Sky Pirate's Den by defeating Gilgamesh twice", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit5(0x556446)) == 0 && bit5(0x556446) == 1   
)

achievement(
    title = "Lord of the Kings", description = "Unlock the Behemoth statue in the Sky Pirate's Den by defeating the Behemoth King", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit6(0x556446)) == 0 && bit6(0x556446) == 1   
)

achievement(
    title = "Wyrmslayer", description = "Unlock the Fafnir statue in the Sky Pirate's Den by defeating Fafnir", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit7(0x556446)) == 0 && bit7(0x556446) == 1   
)

achievement(
    title = "Freshmaker", description = "Unlock the Marlboro statue in the Sky Pirate's Den by defeating Carrot", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit0(0x556447)) == 0 && bit0(0x556447) == 1   
)

achievement(
    title = "Eagle Eye", description = "Unlock the Deathgaze statue in the Sky Pirate's Den by defeating Deathgaze", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit1(0x556447)) == 0 && bit1(0x556447) == 1   
)

achievement(
    title = "Hunter Extraordinare", description = "", points = 5,
    id = 0, badge = "0", published = "", modified = "Unlock the Yiazmat statue in the Sky Pirate's Den by defeating Yiazmat",
    trigger =  InGame() && Delta(bit2(0x556447)) == 0 && bit2(0x556447) == 1   
)

achievement(
    title = "Radiant Savior", description = "Unlock the Hell Wyrm statue in the Sky Pirate's Den by defeating Hell Wyrm", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit3(0x556447)) == 0 && bit3(0x556447) == 1   
)

achievement(
    title = "Fell Angel", description = "Unlock the Ultima statue in the Sky Pirate's Den by defeating Ultima", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit4(0x556447)) == 0 && bit4(0x556447) == 1   
)

achievement(
    title = "Zodiac Knight", description = "Unlock the Zodiark statue in the Sky Pirate's Den by defeating Zodiark", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(bit5(0x556447)) == 0 && bit5(0x556447) == 1   
)

achievement(
    title = "True Sky Pirate", description = "Unlock all statues in the Sky Pirate's Den", points = 50,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(dword(0x556444)) < 0x3FFFFFFF && dword(0x556444) == 0x3FFFFFFF   
)

//////////////////////////////Sky Pirate Den Extended Cheevos///////////////////
achievement(
    title = "True Assualt Striker", description = "Use attack over 3000 times", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(word(0x55644c)) <= 0xBB8 && word(0x55644c) > 0xBB8   
)

achievement(
    title = "True Blood Dancer", description = "Kill over 5000 enemies", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(word(0x55644c)) <= 0xBB8 && word(0x55644c) > 0xBB8   
)

achievement(
    title = "Ultimate Wayfarer", description = "Take over 250000 steps", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(dword(0x54aa0c)) <= 0x3D090 && dword(0x54aa0c) > 0x3D090   
)

achievement(
    title = "Premier Prestidigitator", description = "Use Technik over 1000 times", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(word(0x556450)) <= 0x3E8 && word(0x556450) > 0x3E8  
)

achievement(
    title = "True Spellsinger", description = "Use Magick over 2000 times", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(word(0x55644e)) <= 0x7D0 && word(0x55644e) > 0x7D0  
)

achievement(
    title = "True Spendthrift", description = "Spend over 2000000 gil", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(dword(0x556464)) <= 0x1E8480 && dword(0x556464) > 0x1E8480  
)

achievement(
    title = "Ultimate Privateer", description = "Sell over 3000 pieces of loot", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    //Need to find memory for loot sold
    trigger =  InGame() && Delta(dword(0x556464)) <= 0x1E8480 && dword(0x556464) > 0x1E8480  
)

achievement(
    title = "Ultimate Unrelenter", description = "Complete 100 or more battle chain", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(word(0x55644e)) <= 0x7D0 && word(0x55644e) > 0x7D0  
)

achievement(
    title = "True Plunderer", description = "Acquire 1000000 or more gil", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(dword(0x556460)) <= 0xF4240 && dword(0x556460) > 0xF4240  
)

achievement(
    title = "True Master Thief", description = "Sell over 3000 pieces of loot", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  InGame() && Delta(word(0x556452)) <= 0x1F4 && word(0x556452) > 0x1F4 
)


//////////////////////////////Side Quest Cheevos///////////////////
achievement(
    title = "Small Package[m]", description = "Deliver a samll package for your reward...", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  MapID() == 0x131 && bit0(0x54b003) == 1 && Delta(bit1(0x54b003)) == 0 && bit1(0x54b003) == 1   
)

//////////////////////////////Boss Challenge Cheevos///////////////////
achievement(
    title = "New and Exciting Ways to Kill a Man[m]", description = "Defeat Firemane without gambits active", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = PauseLock(bit2(0x54cc08) == 1, MapID() != 0x149) && PauseLock(bit2(0x54cf90) == 1, MapID() != 0x149)
              && PauseLock(bit2(0x54d154) == 1, MapID() != 0x149) && PauseLock(bit2(0x54d864) == 1, MapID() != 0x149) 
              && DefeatBoss(byte(0x556116))
)

//////////////////////////////Best Equipment Cheevos///////////////////
achievement(
    title = "Gastrophetes", description = "Obtain a Gastrophetes", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = InGame() && ItemPickup(byte(0x5513d4))
)

achievement(
    title = "Danjuro", description = "Obtain a Danjuro", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = InGame() && ItemPickup(byte(0x5513d4)) //need Danjuro mem
)

achievement(
    title = "Formalhaut", description = "Obtain a Formalhaut", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = InGame() && ItemPickup(byte(0x5513ea))
)

achievement(
    title = "Grand Mace", description = "Obtain a Grand Mace", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = InGame() && ItemPickup(byte(0x55144e))
)

achievement(
    title = "Euclid's Sextant", description = "Obtain a Euclid's Sextant", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = InGame() && ItemPickup(byte(0x55145a))
)

achievement(
    title = "Yagyu Darkblade", description = "Obtain a Yagyu Darkblade", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = InGame() && ItemPickup(byte(0x55137a))
)

achievement(
    title = "Rod Of Faith", description = "Obtain a Rod Of Faith", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = InGame() && ItemPickup(byte(0x551428))
)

achievement(
    title = "Zodiac Spear", description = "Obtain a Zodiac Spear", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = InGame() && ItemPickup(byte(0x551392))
)

achievement(
    title = "Staff of the Magi", description = "Obtain a Staff of the Magi", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = InGame() && ItemPickup(byte(0x55143c))
)

achievement(
    title = "Zodiac Escutcheon", description = "Obtain a Zodiac Escutcheon", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = InGame() && ItemPickup(byte(0x5514dc))
)

achievement(
    title = "Brave Suit", description = "Obtain a Brave Suit", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = InGame() && ItemPickup(byte(0x551580))
)

achievement(
    title = "Dueling Mask", description = "Obtain a Dueling Mask", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = InGame() && ItemPickup(byte(0x551580)) //need Danjuro mem
)

achievement(
    title = "Grand Armor", description = "Obtain a Grand Armor", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = InGame() && ItemPickup(byte(0x5515ce))
)

achievement(
    title = "Grand Helm", description = "Obtain a Grand Helm", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = InGame() && ItemPickup(byte(0x551556))
)

achievement(
    title = "Lordly Robes", description = "Obtain a Lordly Robes", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = InGame() && ItemPickup(byte(0x5515aa))
)

achievement(
    title = "Circlet", description = "Obtain a Circlet", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = InGame() && ItemPickup(byte(0x551532))
)

achievement(
    title = "Ribbon", description = "Obtain a Ribbon", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = InGame() && ItemPickup(byte(0x55162a))
)

achievement(
    title = "Genji Gear", description = "Obtain all Genji Gear", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = InGame() && ItemPickup(byte(0x5515f0)) && ItemPickup(byte(0x5515ca)) 
              && ItemPickup(byte(0x551552)) && ItemPickup(byte(0x5514d2))
)

//////////////////////////////Item Challenge Cheevos///////////////////
achievement(
    title = "Early Deathbringer", description = "Obtain a Deathbringer sword before entering Eruyt village for the first time", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = InGame() && ItemPickup(byte(0x551346)) && byte(0x55611e) == 0
)

achievement(
    title = "Early Zodiac Spear", description = "Obtain the Zodiac Spear before the Sochen Cave Palace", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = InGame() && ItemPickup(byte(0x551392)) && byte(0x55608d) == 0 && byte(0x55608e) == 0
              && byte(0x55608f) == 0 && dword(0x556090) == 0 && byte(0x556095) == 0
)