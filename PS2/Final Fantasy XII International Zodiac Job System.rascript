// Final Fantasy XII: International Zodiac Job System
// #ID = 5803

////////////////////////////////Function Declaration//////////////////////////////////////////////
function Delta(mem) => prev(mem)
function Prior(mem) => prior(mem)

function MapID() => dword(0x54bc44)
function EventID() => dword(0x54ac00)

function InGame() => MapID() != 0x0c && EventID() > 0x19

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

//////////////////////////////Side Quest Cheevos///////////////////
achievement(
    title = "Small Package[m]", description = "Deliver a samll package for your reward...", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger =  MapID() == 0x131 && bit0(0x54b003) == 1 && Delta(bit1(0x54b003)) == 0 && bit1(0x54b003) == 1   
)