// Final Fantasy XII: International Zodiac Job System [Subset - New Game Minus]
// #ID = 20512


function mapID() => dword(0x54bc44)
titlescreen = 0x00
titlesceenalt = 0x0c
function EventID() => dword(0x54AC00)
function WeakMode() => bit2(0x54aa57)
function GameMode() => WeakMode() == 1
function Slot1Level() => prev(byte(0x57d67a)) != 0x00
function SaveProtection() => GameMode() && Slot1Level()
function Delta(mem) => prev(mem)
function Prior(mem) => prior(mem)
function PauseLock(compairison, reset) => disable_when(compairison, until=reset)

function MapID() => dword(0x54bc44)
function EventID() => dword(0x54ac00)

function InGame() => MapID() != 0x0c && prior(MapID()) != 0 && EventID() > 0x19

function DefeatBoss(mem) => Delta(mem) == 0x01 && mem == 0x02
function ItemPickup(mem) => mem > Delta(mem)



achievement ("Weak Mode Initiated", "Save at the first Save Crystal with Reks to initiate Weak Mode - If you don't, you may not get achievement triggers", 0,
    trigger = mapID() == 0x118 && WeakMode() > prev(WeakMode()))

achievement(
    "[Weak] - Exit Stage Right", "Obtain the Goddess Magicite", 1,
    trigger = prev(bit4(0x551AB5)) == 0 && 
              bit4(0x551AB5) == 1 && 
              mapID() == 571 && 
              EventID() == 220 && 
              SaveProtection())

achievement(
    "[Weak] - She Airship Enough For You", "Take a ride in The Strahl for the first time", 1,
    trigger = mapID() == 788 && 
              prev(EventID()) == 420 && 
              EventID() == 460 && 
              SaveProtection())

achievement(
    "[Weak] - Proof Of Royal Lineage", "Save the Princess of Dalmasca and escape the Leviathan", 5,
    trigger = prev(EventID()) == 1000 && 
              EventID() == 1090 && 
              mapID() == 552 && 
              SaveProtection())

achievement(
    "[Weak] - Power Of Dawn", "Obtain the Dawn Shard...again", 5,
    trigger = prior(bit0(0x551AAF)) == 0 && 
              bit0(0x551AAF) == 1 && 
              mapID() == 867 && 
              prior(mapID()) == 872 && 
              EventID() == 1520 && 
              prior(EventID()) == 1460 && 
              SaveProtection())

achievement(
    "[Weak] - A Pleasent Lie That", "Obtain Lente's Tear", 5,
    trigger = prev(bit7(0x551AB6)) == 0 && 
              bit7(0x551AB6) == 1 && 
              mapID() == 766 && 
              prior(mapID()) == 722 && 
              EventID() == 1900 && 
              prior(EventID()) == 1820 && 
              SaveProtection())

achievement(
    "[Weak] - To Wield Power Againt Power", "Obtain the Sword Of Kings", 5,
    trigger = mapID() == 615 && 
              prev(bit3(0x551AB1)) == 0 && 
              bit3(0x551AB1) == 1 && 
              EventID() == 2200 && 
              SaveProtection())

achievement(
    "[Weak] - Differences Between Our Lands Fades", "See the events of Mt Bur Omiscae", 10,
    trigger = EventID() == 3000 && 
              prior(EventID()) == 2290 && 
              prior(mapID()) == 737 && 
              mapID() == 738 && 
              SaveProtection())

achievement(
/// Dont push to local as it may mess up the OrNext chains but this is rascript equivalent
    "[Weak] - Mandragoran Royalty", "Defeat the Mandragoras in Sochen Cave Palace", 10,
    trigger = WeakMode() == 1 &&
              mapID() == 200 &&
              dword(0x9DF404) == 0 &&
              dword(0x9DF644) == 0 &&
              dword(0x9DF884) == 0 &&
              dword(0x9DFAC4) == 0 &&
              dword(0x9DFD04) == 0 &&
              unless(word(0x57D5E8) == 0) &&
              (
              prev(dword(0x9DF404)) > 0 ||
              prev(dword(0x9DF644)) > 0 ||
              prev(dword(0x9DF884)) > 0 ||
              prev(dword(0x9DFAC4)) > 0 ||
              prev(dword(0x9DFD04)) > 0
              )
)
achievement(
    "[Weak] - Consider Your Bones, Old Man!", "Face Dr. Cid in Archades", 10,
    trigger = EventID() == 4000 && 
              prior(EventID()) == 3440 && 
              prior(mapID()) == 286 && 
              mapID() == 922 && 
              SaveProtection())

achievement(
    "[Weak] - Attain to Your Birth Right!", "Obtain the Treaty Blade", 10,
    trigger = prev(bit4(0x551AB1)) == 0 && 
              bit4(0x551AB1) == 1 && 
              mapID() == 916 && 
              SaveProtection())

achievement(
    "[Weak] - Is there a Doctor in the House", "Defeat Dr. CId and Famfrit at the Pharos at Ridorana", 25,
    trigger = mapID() == 0x29c && 
              EventID() == 0x15ae && 
              prev(dword(0x9DF884)) > 0 && 
              dword(0x9DF884) == 0 && 
              SaveProtection())

achievement(
    "[Weak] - Zodiac Age", "Complete the Game", 50,
    trigger = mapID() == 785 && 
              EventID() == 7100 && 
              prev(dword(0x9DF404)) > 0 && 
              dword(0x9DF404) == 0 && 
              SaveProtection())


achievement(
    "[Weak] - High Summoner", "Unlock the Belias statue in the Sky Pirate's Den by obtaining all 13 Espers", 50,
    trigger =  SaveProtection() && 
               Delta(bit4(0x556445)) == 0 &&
               bit4(0x556445) == 1
)

achievement(
    "[Weak] - Radiant Savior", "Unlock the Hell Wyrm statue in the Sky Pirate's Den by defeating Hell Wyrm", 25,
    trigger =  SaveProtection() &&
               Delta(bit3(0x556447)) == 0 && 
               bit3(0x556447) == 1
)

achievement(
   "[Weak] - Fell Angel", "Unlock the Ultima statue in the Sky Pirate's Den by defeating Ultima", 25,
    trigger =  SaveProtection() && 
               Delta(bit4(0x556447)) == 0 && 
               bit4(0x556447) == 1   
)

achievement(
    "[Weak] - Zodiac Knight", "Unlock the Zodiark statue in the Sky Pirate's Den by defeating Zodiark", 25,
    trigger =  SaveProtection() && 
               Delta(bit5(0x556447)) == 0 && 
               bit5(0x556447) == 1  
)

achievement(
    "[Weak] - The Wroth", "Defeat the Esper Adrammelech", 10,
    trigger =  SaveProtection() &&
               MapID() == 0x24e &&
               DefeatBoss(byte(0x556110))
)

achievement(
    "[Weak] - The Wroth", "Defeat the Esper Adrammelech", 10,
    trigger =  SaveProtection() &&
               MapID() == 0x24e &&
               DefeatBoss(byte(0x556110))
)

achievement(
    "[Weak] - The Impure", "Defeat the Esper Cuchulainn", 10,
    trigger =  SaveProtection() &&
               MapID() == 0x156 &&
               DefeatBoss(byte(0x55610c))
)

achievement(
    "[Weak] - The Death Seraph", "Defeat the Esper Zalera", 10,
    trigger =  SaveProtection() &&
               MapID() == 0x47 &&
               DefeatBoss(byte(0x55610d))
)

achievement(
    "[Weak] - The Judge-Sal", "Defeat the Esper Exodus", 25,
    trigger =  SaveProtection() &&
               MapID() == 0xdf &&
               DefeatBoss(byte(0x55610a))
)

achievement(
    "[Weak] - The Condemmer", "Defeat the Esper Zeromus", 25,
    trigger =  SaveProtection() &&
               MapID() == 0x26a &&
               DefeatBoss(byte(0x55610f))
)

achievement(
    "[Weak] - The Walker Of the Wheel", "Defeat the Esper Chaos", 25,
    trigger =  SaveProtection() &&
               MapID() == 0x1b6 &&
               DefeatBoss(byte(0x55610b))
)

achievement(
    "[Weak] - Blow Up the Jungle", "Defeat King Bomb", 10,
    trigger =  SaveProtection() &&
               MapID() == 0x9e &&
               DefeatBoss(byte(0x556124))
)

achievement(
    "[Weak] - Calm the Sandstorm", "Defeat Earth Tyrant", 10,
    trigger =  SaveProtection() &&
               MapID() == 0x162 &&
               DefeatBoss(byte(0x55611f))
)

achievement(
    "[Weak] - Love's Fury", "Use the Medallion of Love and defeat Fury", 10,
    trigger =  SaveProtection() &&
               MapID() == 0x1bc &&
               DefeatBoss(byte(0x556121))
)

achievement(
    "[Weak] - Bravery's Honor", "Use the Medallion of Bravery and defeat Humbaba Mistant", 10,
    trigger =  SaveProtection() &&
               MapID() == 0x1b9 &&
               DefeatBoss(byte(0x556123))
)

achievement(
    "[Weak] - Great Crystal Debugging", "Defeat Omega Mark XII", 50,
    trigger =  SaveProtection() &&
               MapID() == 0x3b5 &&
               DefeatBoss(byte(0x556127))
)


achievement(
/// Dont push to local as it may mess up the OrNext chains but this is rascript equivalent
    title = "[Weak] - The Trial Begins!", description = "Complete Trial Mode Level 1", points = 5,
    trigger = MapID() == 0x483 &&
              WeakMode() == 1 &&
              dword(0x9DF404) == 0 &&
              dword(0x9DF644) == 0 &&
              dword(0x9DF884) == 0 &&
              dword(0x9DFAC4) == 0 &&
              dword(0x9DFD04) == 0 &&
              (
              prev(dword(0x9DF404)) > 0 ||
              prev(dword(0x9DF644)) > 0 ||
              prev(dword(0x9DF884)) > 0 ||
              prev(dword(0x9DFAC4)) > 0 ||
              prev(dword(0x9DFD04)) > 0
              ) &&
              (
                  byte(0x8b8b56) == 1 ||
                  byte(0x8c2f56) == 1
              )
)

achievement(
/// Dont push to local as it may mess up the OrNext chains but this is rascript equivalent
    title = "[Weak] - The Trial Continues!", description = "Complete Trial Mode Level 10", points = 10,
    trigger = MapID() == 0x48f &&
              WeakMode() == 1 &&
              prev(dword(0x9df404)) != 0 &&
              dword(0x9df404) == 0 &&
              (
                  prior(byte(0x8b8b56)) == 9 ||
                  prior(byte(0x8c2f56)) == 9
              )
              
)

achievement(
/// Dont push to local as it may mess up the OrNext chains but this is rascript equivalent
    title = "[Weak] - The Trial Continues! II", description = "Complete Trial Mode Level 25", points = 10,
    trigger = MapID() == 0x4a7 &&
              WeakMode() == 1 &&
              dword(0x9DF404) == 0 &&
              dword(0x9DF644) == 0 &&
              dword(0x9DF884) == 0 &&
              dword(0x9DFAC4) == 0 &&
              dword(0x9DFD04) == 0 &&
              dword(0x9e03c4) == 0 &&
              (
              prev(dword(0x9DF404)) > 0 ||
              prev(dword(0x9DF644)) > 0 ||
              prev(dword(0x9DF884)) > 0 ||
              prev(dword(0x9DFAC4)) > 0 ||
              prev(dword(0x9DFD04)) > 0 ||
              prev(dword(0x9e03c4)) > 0
              ) &&
              (
                  byte(0x8b8b56) == 5 ||
                  byte(0x8c2f56) == 5
              )
              
)

achievement(
/// Dont push to local as it may mess up the OrNext chains but this is rascript equivalent
    title = "[Weak] - The Trial Continues! III", description = "Complete Trial Mode Level 50", points = 25,
    trigger = MapID() == 0x4cf &&
              WeakMode() == 1 &&
              prev(dword(0x9df404)) != 0 &&
              dword(0x9df404) == 0 &&
              (
                  prior(byte(0x8b8b56)) == 9 ||
                  prior(byte(0x8c2f56)) == 9
              ) &&
              (
                  prev(byte(0x8b8b56)) == 0 ||
                  prev(byte(0x8c2f56)) == 0
              )
              
)

achievement(
/// Dont push to local as it may mess up the OrNext chains but this is rascript equivalent
    title = "[Weak] - The Trial Continues! IV", description = "Complete Trial Mode Level 75", points = 50,
    trigger = MapID() == 0x4f7 &&
              WeakMode() == 1 &&
              dword(0x9DF404) == 0 &&
              dword(0x9DF644) == 0 &&
              dword(0x9DF884) == 0 &&
              dword(0x9DFAC4) == 0 &&
              dword(0x9DFD04) == 0 &&
              (
              prev(dword(0x9DF404)) > 0 ||
              prev(dword(0x9DF644)) > 0 ||
              prev(dword(0x9DF884)) > 0 ||
              prev(dword(0x9DFAC4)) > 0 ||
              prev(dword(0x9DFD04)) > 0
              ) &&
              (
                  byte(0x8b8b56) == 5 ||
                  byte(0x8c2f56) == 5
              )
)

achievement(
/// Dont push to local as it may mess up the OrNext chains but this is rascript equivalent
    title = "[Weak] - The Trial Ends!", description = "Complete Trial Mode", points = 100,
    trigger = MapID() == 0x51f &&
              WeakMode() == 1 &&
              dword(0x9DF404) == 0 &&
              dword(0x9DF644) == 0 &&
              dword(0x9DF884) == 0 &&
              dword(0x9DFAC4) == 0 &&
              dword(0x9DFD04) == 0 &&
              (
              prev(dword(0x9DF404)) > 0 ||
              prev(dword(0x9DF644)) > 0 ||
              prev(dword(0x9DF884)) > 0 ||
              prev(dword(0x9DFAC4)) > 0 ||
              prev(dword(0x9DFD04)) > 0
              ) &&
              (
                  prior(byte(0x8b8b56)) == 9 ||
                  prior(byte(0x8c2f56)) == 9
              ) &&
              (
                  prev(byte(0x8b8b56)) == 0 ||
                  prev(byte(0x8c2f56)) == 0
              )
)


















huntaccept = {
"Red & Rotten in the Desert":bit0(0x54bc10),
"Wolf in the Waste":bit1(0x54bc10),
"Dalmasca's Desert Bloom":bit2(0x54bc10),
"Waterway Haunting":bit3(0x54bc10),
"Marauder in the Mines":bit4(0x54bc10),
"Lost in the Pudding":bit5(0x54bc10),
"For Whom the Wyrm Tolls":bit6(0x54bc10),
"A Scream from the Sky":bit7(0x54bc10),
"Tingling Toast":bit0(0x54bc11),
"The Defense of Ozmone Plain":bit1(0x54bc11),
"A Ring in the Rain":bit2(0x54bc11),
"The Dead Ought Sleep Forever":bit3(0x54bc11),
"Befoulment of the Beast":bit4(0x54bc11),
"A Chase Through the Woods":bit5(0x54bc11),
"The Mine Flayer":bit6(0x54bc11),
"The Deserter's Revenge":bit7(0x54bc11),
"Trouble in the Hills":bit0(0x54bc12),
"Adding Insult to Injury":bit1(0x54bc12),
"Rodeo to the Death":bit2(0x54bc12),
"Shelled Obstruction":bit3(0x54bc12),
"Get My Stuff Back!":bit4(0x54bc12),
"Old Legends, Decaying Bonds":bit5(0x54bc12),
"The Things We Do...":bit6(0x54bc12),
"The Creature Collector":bit7(0x54bc12),
"Dead City Watch":bit0(0x54bc13),
"Visitor on Deck":bit1(0x54bc13),
"The Child Snatcher":bit2(0x54bc13),
"The Black Sorcerer":bit3(0x54bc13),
"A Wild Stench":bit4(0x54bc13),
"Paying for the Past":bit5(0x54bc13),
"Wyrm Wrath's Renewal":bit6(0x54bc13),
"Who's the Strongest!?":bit7(0x54bc13),
"Little Love on the Big Plains":bit0(0x54bc14),
"The Cry of Its Power":bit1(0x54bc14),
"Crime and Punishment":bit2(0x54bc14),
"Paradise Risen":bit3(0x54bc14),
"Paramina Run":bit4(0x54bc14),
"Antlion Infestation":bit5(0x54bc14),
"Carrot Stalk":bit6(0x54bc14),
"Battle on the Big Bridge":bit7(0x54bc14),
"Truth Shrouded in Mist":bit0(0x54bc15),
"Fishy Dreams":bit1(0x54bc15),
"God or Devil?":bit2(0x54bc15),
"Farewell to a Legend":bit3(0x54bc15),
"A Dark Rumor":bit4(0x54bc15),
}

huntvanquished1 = {
"Red & Rotten in the Desert":bit6(0x54BCE4),
"Wolf in the Waste":bit6(0x54BCE5),
"Dalmasca's Desert Bloom":bit6(0x54BCE6),
"Waterway Haunting":bit6(0x54BCE7),
"Marauder in the Mines":bit6(0x54BCE8),
"Lost in the Pudding":bit6(0x54BCE9),
"For Whom the Wyrm Tolls":bit6(0x54BCEA),
"A Scream from the Sky":bit6(0x54BCEB),
"Tingling Toast":bit6(0x54BCEC),
"The Defense of Ozmone Plain":bit6(0x54BCED),
"A Ring in the Rain":bit6(0x54BCEE),
"The Dead Ought Sleep Forever":bit6(0x54BCEF),
"Befoulment of the Beast":bit6(0x54BCF0),
"A Chase Through the Woods":bit4(0x54BCF1),
"The Mine Flayer":bit6(0x54BCF2),
"The Deserter's Revenge":bit6(0x54BCF3),
"Trouble in the Hills":bit6(0x54BCF4),
"Adding Insult to Injury":bit6(0x54BCF5),
"Rodeo to the Death":bit6(0x54BCF6),
"Shelled Obstruction":bit6(0x54BCF7),
"Get My Stuff Back!":bit6(0x54BCF8),
"Old Legends, Decaying Bonds":bit6(0x54BCF9),
"The Things We Do...":bit6(0x54BCFA),
"The Creature Collector":bit6(0x54BCFB),
"Dead City Watch":bit6(0x54BCFC),
"Visitor on Deck":bit6(0x54BCFD),
"The Child Snatcher":bit6(0x54BCFE),
"The Black Sorcerer":bit6(0x54BCFF),
"A Wild Stench":bit6(0x54BD00),
"Paying for the Past":bit6(0x54BD01),
"Wyrm Wrath's Renewal":bit6(0x54BD02),
"Who's the Strongest!?":bit6(0x54BD03),
"Little Love on the Big Plains":bit6(0x54BD04),
"The Cry of Its Power":bit6(0x54BD05),
"Crime and Punishment":bit6(0x54BD06),
"Paradise Risen":bit6(0x54BD07),
"Paramina Run":bit6(0x54BD08),
"Antlion Infestation":bit6(0x54BD09),
"Carrot Stalk":bit6(0x54BD0A),
"Battle on the Big Bridge":bit6(0x54BD0B),
"Truth Shrouded in Mist":bit6(0x54BD0C),
"Fishy Dreams":bit6(0x54BD0D),
"God or Devil?":bit6(0x54BD0E),
"Farewell to a Legend":bit6(0x54BD0F),
"A Dark Rumor":bit6(0x54BD10),
}

huntvanquished2 = {
"Red & Rotten in the Desert":bit7(0x54BCE4),
"Wolf in the Waste":bit7(0x54BCE5),
"Dalmasca's Desert Bloom":bit7(0x54BCE6),
"Waterway Haunting":bit7(0x54BCE7),
"Marauder in the Mines":bit7(0x54BCE8),
"Lost in the Pudding":bit7(0x54BCE9),
"For Whom the Wyrm Tolls":bit7(0x54BCEA),
"A Scream from the Sky":bit7(0x54BCEB),
"Tingling Toast":bit7(0x54BCEC),
"The Defense of Ozmone Plain":bit7(0x54BCED),
"A Ring in the Rain":bit7(0x54BCEE),
"The Dead Ought Sleep Forever":bit7(0x54BCEF),
"Befoulment of the Beast":bit7(0x54BCF0),
"A Chase Through the Woods":bit1(0x54BCF1),
"The Mine Flayer":bit7(0x54BCF2),
"The Deserter's Revenge":bit7(0x54BCF3),
"Trouble in the Hills":bit7(0x54BCF4),
"Adding Insult to Injury":bit7(0x54BCF5),
"Rodeo to the Death":bit7(0x54BCF6),
"Shelled Obstruction":bit7(0x54BCF7),
"Get My Stuff Back!":bit7(0x54BCF8),
"Old Legends, Decaying Bonds":bit7(0x54BCF9),
"The Things We Do...":bit7(0x54BCFA),
"The Creature Collector":bit7(0x54BCFB),
"Dead City Watch":bit7(0x54BCFC),
"Visitor on Deck":bit7(0x54BCFD),
"The Child Snatcher":bit7(0x54BCFE),
"The Black Sorcerer":bit7(0x54BCFF),
"A Wild Stench":bit7(0x54BD00),
"Paying for the Past":bit7(0x54BD01),
"Wyrm Wrath's Renewal":bit7(0x54BD02),
"Who's the Strongest!?":bit7(0x54BD03),
"Little Love on the Big Plains":bit7(0x54BD04),
"The Cry of Its Power":bit7(0x54BD05),
"Crime and Punishment":bit7(0x54BD06),
"Paradise Risen":bit7(0x54BD07),
"Paramina Run":bit7(0x54BD08),
"Antlion Infestation":bit7(0x54BD09),
"Carrot Stalk":bit7(0x54BD0A),
"Battle on the Big Bridge":bit7(0x54BD0B),
"Truth Shrouded in Mist":bit7(0x54BD0C),
"Fishy Dreams":bit7(0x54BD0D),
"God or Devil?":bit7(0x54BD0E),
"Farewell to a Legend":bit7(0x54BD0F),
"A Dark Rumor":bit7(0x54BD10),
}

huntcomplete = {
"Red & Rotten in the Desert":bit0(0x54bc30),
"Wolf in the Waste":bit1(0x54bc30),
"Dalmasca's Desert Bloom":bit2(0x54bc30),
"Waterway Haunting":bit3(0x54bc30),
"Marauder in the Mines":bit4(0x54bc30),
"Lost in the Pudding":bit5(0x54bc30),
"For Whom the Wyrm Tolls":bit6(0x54bc30),
"A Scream from the Sky":bit7(0x54bc30),
"Tingling Toast":bit0(0x54bc31),
"The Defense of Ozmone Plain":bit1(0x54bc31),
"A Ring in the Rain":bit2(0x54bc31),
"The Dead Ought Sleep Forever":bit3(0x54bc31),
"Befoulment of the Beast":bit4(0x54bc31),
"A Chase Through the Woods":bit5(0x54bc31),
"The Mine Flayer":bit6(0x54bc31),
"The Deserter's Revenge":bit7(0x54bc31),
"Trouble in the Hills":bit0(0x54bc32),
"Adding Insult to Injury":bit1(0x54bc32),
"Rodeo to the Death":bit2(0x54bc32),
"Shelled Obstruction":bit3(0x54bc32),
"Get My Stuff Back!":bit4(0x54bc32),
"Old Legends, Decaying Bonds":bit5(0x54bc32),
"The Things We Do...":bit6(0x54bc32),
"The Creature Collector":bit7(0x54bc32),
"Dead City Watch":bit0(0x54bc33),
"Visitor on Deck":bit1(0x54bc33),
"The Child Snatcher":bit2(0x54bc33),
"The Black Sorcerer":bit3(0x54bc33),
"A Wild Stench":bit4(0x54bc33),
"Paying for the Past":bit5(0x54bc33),
"Wyrm Wrath's Renewal":bit6(0x54bc33),
"Who's the Strongest!?":bit7(0x54bc33),
"Little Love on the Big Plains":bit0(0x54bc34),
"The Cry of Its Power":bit1(0x54bc34),
"Crime and Punishment":bit2(0x54bc34),
"Paradise Risen":bit3(0x54bc34),
"Paramina Run":bit4(0x54bc34),
"Antlion Infestation":bit5(0x54bc34),
"Carrot Stalk":bit6(0x54bc34),
"Battle on the Big Bridge":bit7(0x54bc34),
"Truth Shrouded in Mist":bit0(0x54bc35),
"Fishy Dreams":bit1(0x54bc35),
"God or Devil?":bit2(0x54bc35),
"Farewell to a Legend":bit3(0x54bc35),
"A Dark Rumor":bit4(0x54bc35),
}

function turnedinhunt(hunt) => SaveProtection() && 
                               huntaccept[hunt] < prev(huntaccept[hunt]) && 
                               huntcomplete[hunt] > prev(huntcomplete[hunt])
                               
function turnedinhuntalt(hunt,map) =>  SaveProtection() &&
                                       huntaccept[hunt] < prev(huntaccept[hunt]) && 
                                       huntcomplete[hunt] > prev(huntcomplete[hunt]) &&
                                       mapID() == map

                               
achievement("[Weak] - Red & Rotten in the Desert", "Complete hunt Red & Rotten in the Desert", 10,
trigger = turnedinhunt("Red & Rotten in the Desert"))

achievement("[Weak] - Wolf in the Waste", "Complete hunt Wolf in the Waste", 10,
trigger = turnedinhunt("Wolf in the Waste"))

achievement("[Weak] - Dalmasca's Desert Bloom", "Complete hunt Dalmasca's Desert Bloom", 10,
trigger = turnedinhunt("Dalmasca's Desert Bloom"))

achievement("[Weak] - Waterway Haunting", "Complete hunt Waterway Haunting", 10,
trigger = turnedinhunt("Waterway Haunting"))

achievement("[Weak] - Marauder in the Mines", "Complete hunt Marauder in the Mines", 25,
trigger = turnedinhunt("Marauder in the Mines"))

achievement("[Weak] - Lost in the Pudding", "Complete hunt Lost in the Pudding", 25,
trigger = turnedinhunt("Lost in the Pudding"))

achievement("[Weak] - For Whom the Wyrm Tolls", "Complete hunt For Whom the Wyrm Tolls", 25,
trigger = turnedinhunt("For Whom the Wyrm Tolls"))

achievement("[Weak] - A Scream from the Sky", "Complete hunt A Scream from the Sky", 10,
trigger = turnedinhunt("A Scream from the Sky"))

achievement("[Weak] - Tingling Toast", "Complete hunt Tingling Toast", 25,
trigger = turnedinhunt("Tingling Toast"))

achievement("[Weak] - The Defense of Ozmone Plain", "Complete hunt The Defense of Ozmone Plain", 10,
trigger = turnedinhunt("The Defense of Ozmone Plain"))

achievement("[Weak] - A Ring in the Rain", "Complete hunt A Ring in the Rain", 10,
trigger = turnedinhunt("A Ring in the Rain"))

achievement("[Weak] - The Dead Ought Sleep Forever", "Complete hunt The Dead Ought Sleep Forever", 10,
trigger = turnedinhunt("The Dead Ought Sleep Forever"))

achievement("[Weak] - Befoulment of the Beast", "Complete hunt Befoulment of the Beast", 10,
trigger = turnedinhunt("Befoulment of the Beast"))

achievement("[Weak] - A Chase Through the Woods", "Complete hunt A Chase Through the Woods", 10,
trigger = turnedinhunt("A Chase Through the Woods"))

achievement("[Weak] - The Mine Flayer", "Complete hunt The Mine Flayer", 10,
trigger = turnedinhunt("The Mine Flayer"))

achievement("[Weak] - The Deserter's Revenge", "Complete hunt The Deserter's Revenge", 10,
trigger = turnedinhunt("The Deserter's Revenge"))

achievement("[Weak] - Trouble in the Hills", "Complete hunt Trouble in the Hills", 10,
trigger = turnedinhuntalt("Trouble in the Hills",0x277))

achievement("[Weak] - Adding Insult to Injury", "Complete hunt Adding Insult to Injury", 25,
trigger = turnedinhuntalt("Adding Insult to Injury",0x278))

achievement("[Weak] - Rodeo to the Death", "Complete hunt Rodeo to the Death", 10,
trigger = turnedinhunt("Rodeo to the Death"))

achievement("[Weak] - Shelled Obstruction", "Complete hunt Shelled Obstruction", 10,
trigger = turnedinhunt("Shelled Obstruction"))

achievement("[Weak] - Get My Stuff Back!", "Complete hunt Get My Stuff Back!", 10,
trigger = turnedinhunt("Get My Stuff Back!"))

achievement("[Weak] - Old Legends, Decaying Bonds", "Complete hunt Old Legends, Decaying Bonds", 10,
trigger = turnedinhunt("Old Legends, Decaying Bonds"))

achievement("[Weak] - The Things We Do...", "Complete hunt The Things We Do...", 10,
trigger = turnedinhunt("The Things We Do..."))

achievement("[Weak] - The Creature Collector", "Complete hunt The Creature Collector", 25,
trigger = turnedinhunt("The Creature Collector"))

achievement("[Weak] - Dead City Watch", "Complete hunt Dead City Watch", 25,
trigger = turnedinhuntalt("Dead City Watch",0x277))

achievement("[Weak] - Visitor on Deck", "Complete hunt Visitor on Deck", 25,
trigger = turnedinhunt("Visitor on Deck"))

achievement("[Weak] - The Child Snatcher", "Complete hunt The Child Snatcher", 25,
trigger = turnedinhunt("The Child Snatcher"))

achievement("[Weak] - The Black Sorcerer", "Complete hunt The Black Sorcerer", 25,
trigger = turnedinhunt("The Black Sorcerer"))

achievement("[Weak] - A Wild Stench", "Complete hunt A Wild Stench", 25,
trigger = turnedinhunt("A Wild Stench"))

achievement("[Weak] - Paying for the Past", "Complete hunt Paying for the Past", 25,
trigger = turnedinhunt("Paying for the Past"))

achievement("[Weak] - Wyrm Wrath's Renewal", "Complete hunt Wyrm Wrath's Renewal", 25,
trigger = turnedinhunt("Wyrm Wrath's Renewal"))

achievement("[Weak] - Who's the Strongest!?", "Complete hunt Who's the Strongest!?", 25,
trigger = turnedinhunt("Who's the Strongest!?"))

achievement("[Weak] - Little Love on the Big Plains", "Complete hunt Little Love on the Big Plains", 25,
trigger = turnedinhunt("Little Love on the Big Plains"))

achievement("[Weak] - The Cry of Its Power", "Complete hunt The Cry of Its Power", 25,
trigger = turnedinhunt("The Cry of Its Power"))

achievement("[Weak] - Crime and Punishment", "Complete hunt Crime and Punishment", 25,
trigger = turnedinhunt("Crime and Punishment"))

achievement("[Weak] - Paradise Risen", "Complete hunt Paradise Risen", 25,
trigger = turnedinhunt("Paradise Risen"))

achievement("[Weak] - Paramina Run", "Complete hunt Paramina Run", 25,
trigger = turnedinhunt("Paramina Run"))

achievement("[Weak] - Antlion Infestation", "Complete hunt Antlion Infestation", 25,
trigger = turnedinhunt("Antlion Infestation"))

achievement("[Weak] - Carrot Stalk", "Complete hunt Carrot Stalk", 50,
trigger = turnedinhunt("Carrot Stalk"))

achievement("[Weak] - Battle on the Big Bridge", "Complete hunt Battle on the Big Bridge", 25,
trigger = turnedinhunt("Battle on the Big Bridge"))

achievement("[Weak] - Truth Shrouded in Mist", "Complete hunt Truth Shrouded in Mist", 50,
trigger = turnedinhunt("Truth Shrouded in Mist"))

achievement("[Weak] - Fishy Dreams", "Complete hunt Fishy Dreams", 25,
trigger = turnedinhunt("Fishy Dreams"))

achievement("[Weak] - God or Devil?", "Complete hunt God or Devil?", 25,
trigger = turnedinhunt("God or Devil?"))

achievement("[Weak] - Farewell to a Legend", "Complete hunt Farewell to a Legend", 50,
trigger = turnedinhunt("Farewell to a Legend"))

achievement("[Weak] - A Dark Rumor", "Complete hunt A Dark Rumor", 25,
trigger = turnedinhunt("A Dark Rumor"))


function normalmob(range1,range2,range3,range4) => sum_of(range(range1,range2,step=1), addr => byte(addr)/byte(addr))+
                                                   sum_of(range(range3,range4,step=1), addr => byte(addr)/byte(addr))

achievement ("[Weak] - Hunter of Monsters I", "Register 25% of the bestiary from 1-211 & 373-377 [Normal Maps Mobs]", 10,
trigger =  SaveProtection() && normalmob(0x556004,0x5560d6,0x556178,0x55617c) >= 54 && prev(normalmob(0x556004,0x5560d6,0x556178,0x55617c)) <= 53 && prev(normalmob(0x556004,0x5560d6,0x556178,0x55617c)) >= 38)

achievement ("[Weak] - Hunter of Monsters II", "Register 50% of the bestiary from #1-211 & 373-377 [Normal Maps Mobs]", 10,
trigger =  SaveProtection() && normalmob(0x556004,0x5560d6,0x556178,0x55617c) >= 108 && prev(normalmob(0x556004,0x5560d6,0x556178,0x55617c)) <= 107 && prev(normalmob(0x556004,0x5560d6,0x556178,0x55617c)) >= 92)

achievement ("[Weak] - Hunter of Monsters III", "Register 75% of the bestiary from #1-211 & 373-377 [Normal Maps Mobs]", 25,
trigger =  SaveProtection() && normalmob(0x556004,0x5560d6,0x556178,0x55617c) >= 162 && prev(normalmob(0x556004,0x5560d6,0x556178,0x55617c)) <= 161 && prev(normalmob(0x556004,0x5560d6,0x556178,0x55617c)) >= 146)

achievement ("[Weak] - Hunter of Monsters IV", "Register 100% of the bestiary from #1-211 & 373-377 [Normal Maps Mobs]", 25,
trigger =  SaveProtection() && normalmob(0x556004,0x5560d6,0x556178,0x55617c) == 216 && prev(normalmob(0x556004,0x5560d6,0x556178,0x55617c)) <= 215 && prev(normalmob(0x556004,0x5560d6,0x556178,0x55617c)) >= 200)


function markeliteboss(range1,range2) => sum_of(range(range1,range2,step=1), addr => byte(addr)/byte(addr))

achievement ("[Weak] - Big Game Hunter I", "Register 50% of the bestiary from 212-292 [Mark/Elite/Boss Mobs]", 25,
trigger =  SaveProtection() && markeliteboss(0x5560d7,0x556127) >= 40 && prev(markeliteboss(0x5560d7,0x556127)) <= 39 && prev(markeliteboss(0x5560d7,0x556127)) >= 29)

achievement ("[Weak] - Big Game Hunter II", "Register 100% of the bestiary from 212-292 [Mark/Elite/Boss Mobs]", 50,
trigger =  SaveProtection() && markeliteboss(0x5560d7,0x556127) == 79 && prev(markeliteboss(0x5560d7,0x556127)) <= 78 && prev(markeliteboss(0x5560d7,0x556127)) >= 69)


function raremobs(range1,range2) => sum_of(range(range1,range2,step=1), addr => byte(addr)/byte(addr))
achievement("[Weak] - Show Off I", "Register 50% of the bestiary from 293-372 [Rare Mobs]", 25,
trigger =  SaveProtection() && raremobs(0x556128,0x556177) >= 40 && prev(raremobs(0x556128,0x556177)) <= 39 && prev(raremobs(0x556128,0x556177)) >= 30)

achievement("[Weak] - Show Off II", "Register 100% of the bestiary from 293-372 [Rare Mobs]", 50,
trigger =  SaveProtection() && raremobs(0x556128,0x556177) == 80 && prev(raremobs(0x556128,0x556177)) <= 79 && prev(raremobs(0x556128,0x556177)) >= 70)


bestiarykills = {
"Cactoid":byte(0x556004), // 0x04
"Ichthon":byte(0x556005), // 0x0a
"Wolf":byte(0x556006), //0x10   
"Wild Saurian":byte(0x556007), //0x07
"Cockatrice":byte(0x556008), //0x0a
"Gnoma Entite":byte(0x556009), //0x03
"Dive Talon":byte(0x55600a), //0x07
"Hyena":byte(0x55600b),
"Wooly Gator":byte(0x55600c),
"Happy Bunny":byte(0x55600d),
"Great Tortoise":byte(0x55600e),
"Sleipnir":byte(0x55600f),
"Silicon Tortoise":byte(0x556010),
"Wildsnake":byte(0x556011),
"Werewolf":byte(0x556012),
"Urstrix":byte(0x556013),
"Storm Elemental":byte(0x556014),
"Slaven":byte(0x556015),
"Mardu Entite":byte(0x556016),
"Dire Rat":byte(0x556017),
"Baritine Croc":byte(0x556018),
"Gigantoad":byte(0x556019),
"Malboro Overking":byte(0x55601a),
"Garchimacera":byte(0x55601b),
"Gespenst":byte(0x55601c),
"Ghost":byte(0x55601d),
"Water Elemental":byte(0x55601e),
"Steeling":byte(0x55601f),
"Suriander":byte(0x556020),
"Mimic":byte(0x556021),
"Zombie":byte(0x556022),
"Tiny Mimic":byte(0x556023),
"Skeleton":byte(0x556024),
"Spector":byte(0x556026),
"Mimeo":byte(0x556028),
"Flan":byte(0x556029),
"Skull Defender":byte(0x55602a),
"Bomb":byte(0x55602b),
"Dead Bones":byte(0x55602c),
"Vampyr":byte(0x55602d),
"Headless":byte(0x55602e),
"Killer Mantis":byte(0x55602f),
"Dullahan":byte(0x556030),
"Bug":byte(0x556031),
"Dark Lord":byte(0x556032),
"Pandora":byte(0x556033),
"Gazer":byte(0x556034),
"Alarune":byte(0x556035),
"Danbania":byte(0x556036),
"Axebeak":byte(0x556037),
"Yensa":byte(0x556038),
"Wyvern":byte(0x556039),
"Salamand Entite":byte(0x55603a),
"Seeker":byte(0x55603b),
"Lost Soul":byte(0x55603c),
"Lesser Chimera":byte(0x55603d),
"Zombie Mage":byte(0x55603e),
"Skull Warrior":byte(0x55603f),
"Lich":byte(0x556040),
"Ragoh":byte(0x556041),
"Tallow":byte(0x556042),
"Mesmenir":byte(0x556043),
"Chocobo":byte(0x556044),
"Wu":byte(0x556045),
"Zu":byte(0x556046),
"Viper":byte(0x556047),
"Zaghnal":byte(0x556048),
"Hybrid Gator":byte(0x556049),
"Sylphi Entite":byte(0x55604a),
"Panther":byte(0x55604b),
"Treant":byte(0x55604c),
"Hellhound":byte(0x55604d),
"Diresaur":byte(0x55604e),
"Malboro":byte(0x55604f),
"Gargoyle":byte(0x556050),
"Great Malboro":byte(0x556051),
"Thunderbug":byte(0x556052),
"Jelly":byte(0x556053),
"Tyranorox":byte(0x556054),
"Hecteyes":byte(0x556055),
"Gizamaluk":byte(0x556056),
"Etem":byte(0x556057),
"Nightmare":byte(0x556058),
"Necrofiend":byte(0x556059),
"White Wolf":byte(0x55605a),
"Twintania":byte(0x55605b),
"Lizard":byte(0x55605c),
"Emperor Aevis":byte(0x55605d),
"Garuda-Egi":byte(0x55605e),
"Dark Skeleton":byte(0x55605f),
"Slaven Warder":byte(0x556060),
"Skull Knight":byte(0x556061),
"Yeti":byte(0x556062),
"Ice Elemental":byte(0x556063),
"Wild Onion":byte(0x556064),
"Leshach Entite":byte(0x556065),
"Redmaw":byte(0x556066),
"Zombie Warrior":byte(0x556067),
"Blood Gigas":byte(0x556068),
"Nightwalker":byte(0x556069),
"Dragon Aevis":byte(0x55606a),
"Ghoul":byte(0x55606b),
"Darkmare":byte(0x55606c),
"Facer":byte(0x55606d),
"Balloon":byte(0x55606e),
"Oiling":byte(0x556070),
"Ghast":byte(0x556072),
"Crystalbug":byte(0x556073),
"Worgen":byte(0x556074),
"Humbaba":byte(0x556075),
"Python":byte(0x556076),
"Ash Wyrm":byte(0x556077),
"Vulture":byte(0x556078),
"Clay Golem":byte(0x556079),
"Slaven Wilder":byte(0x55607a),
"Fire Elemental":byte(0x55607b),
"Wyrdhare":byte(0x55607c),
"Pumpkin Head":byte(0x55607d),
"Sprinter":byte(0x55607e),
"Malboro King":byte(0x55607f),
"Antares":byte(0x556080),
"Silver Lobo":byte(0x556081),
"Mandragora":byte(0x556082),
"Iguion":byte(0x556083),
"Archaeosaur":byte(0x556084),
"Pyrolisk":byte(0x556085),
"Piranha":byte(0x556086),
"Bagoly":byte(0x556087),
"Air Elemental":byte(0x556088),
"Coeurl":byte(0x556089),
"Feral Croc":byte(0x55608a),
"Serpent":byte(0x55608b),
"Earth Elemental":byte(0x55608c),
"Abysteel":byte(0x55608d),
"Imp":byte(0x55608e),
"Striker":byte(0x55608f),
"Pit Fiend":byte(0x556090),
"Wendigo":byte(0x556091),
"Zombie Knight":byte(0x556092),
"Gorgimera":byte(0x556093),
"Focalor":byte(0x556094),
"Cerberus":byte(0x556095),
"Deadly Nightshade":byte(0x556096),
"Mu":byte(0x556097),
"Mandragora Prince":byte(0x556098),
"Basilisk":byte(0x556099),
"Alraune King":byte(0x55609a),
"Behemoth":byte(0x55609b),
"Onion Queen":byte(0x55609c),
"Preying Mantis":byte(0x55609d),
"Pumpkin Star":byte(0x55609e),
"Golem":byte(0x55609f),
"Topstalk":byte(0x5560a0),
"Mirrorknight":byte(0x5560a1),
"Holy Element":byte(0x5560a2),
"Tartarus":byte(0x5560a3),
"Ose":byte(0x5560a4),
"Shadonir":byte(0x5560a5),
"Giruveganus":byte(0x5560a6),
"Skulwyrm":byte(0x5560a7),
"Vivan":byte(0x5560a8),
"Forbidden":byte(0x5560a9),
"Gargoyle Baron":byte(0x5560aa),
"Reaper":byte(0x5560ab),
"Mom Bomb":byte(0x5560ac),
"Mythril Golem":byte(0x5560ad),
"Necrophobe":byte(0x5560ae),
"Diakon Entite":byte(0x5560af),
"Deathclaw":byte(0x5560b0),
"Cassie":byte(0x5560b1),
"Abaddon":byte(0x5560b2),
"Chimera Brain":byte(0x5560b3),
"Bune":byte(0x5560b4),
"Magick Pot":byte(0x5560b5),
"Reaver":byte(0x5560b6),
"Crusader":byte(0x5560b7),
"Aeronite":byte(0x5560b8),
"Dragon Lich":byte(0x5560b9),
"Cataract Aevis":byte(0x5560ba),
"Brainpan":byte(0x5560bb),
"Purobolos":byte(0x5560bc),
"Deidar":byte(0x5560bd),
"Mistmare":byte(0x5560be),
"Undin Entite":byte(0x5560bf),
"Speartongue":byte(0x5560c0),
"Grenade":byte(0x5560c1),
"Scythe Mantis":byte(0x5560c2),
"Slime":byte(0x5560c3),
"Archaeoaevis":byte(0x5560c4),
"Bogey":byte(0x5560c5),
"Mallicant":byte(0x5560c6),
"Shambling Corpse":byte(0x5560c7),
"Buer":byte(0x5560c8),
"Adamantitan":byte(0x5560c9),
"Charybterix":byte(0x5560ca),
"Bandercoeurl":byte(0x5560cb),
"Shield Wyrm":byte(0x5560cc),
"Emeralditan":byte(0x5560cd),
"Leynir":byte(0x5560ce),
"Banshee":byte(0x5560cf),
"Leamonde Entite":byte(0x5560d0),
"Foobar":byte(0x5560d1),
"Oversoul":byte(0x5560d2),
"Babil":byte(0x5560d3),
"Elvoret":byte(0x5560d4),
"Dark Elemental":byte(0x5560d5),
"Zombie Warlock":byte(0x5560d6),
"Seeq":byte(0x556178),
"Urutan-Yensa":byte(0x556179),
"Garif":byte(0x55617a),
"Baknamy":byte(0x55617b),
"Bangaa":byte(0x55617c),
}


trophyhunts = {
    "Shelled":
    {
        "HuntAddress":bit0(0x551ab7),
        "Mob":"Thalassinon",
        "MobAddress":bit0(0x551ab7)
    },
    "Fur-Scaled":
    {
        "HuntAddress":bit1(0x551ab7),
        "Mob":"Gavial",
        "MobAddress":bit1(0x551ab7)
    },
    "Bony":
    {
        "HuntAddress":bit2(0x551ab7),
        "Mob":"Ishteen",
        "MobAddress":bit2(0x551ab7)
    },
    "Fanged":
    {
        "HuntAddress":bit3(0x551ab7),
        "Mob":"Kaiser Wolf",
        "MobAddress":bit3(0x551ab7)
    },
    "Hide-Covered":
    {
        "HuntAddress":bit4(0x551ab7),
        "Mob":"Terror Tyrant",
        "MobAddress":bit4(0x551ab7)
    },
    "Maned":
    {
        "HuntAddress":bit5(0x551ab7),
        "Mob":"Nazarnir",
        "MobAddress":bit5(0x551ab7)
    },
    "Fell":
    {
        "HuntAddress":bit6(0x551ab7),
        "Mob":"Alteci",
        "MobAddress":bit6(0x551ab7)
    },
    "Accursed":
    {
        "HuntAddress":bit7(0x551ab7),
        "Mob":"Disma",
        "MobAddress":bit7(0x551ab7)
    },
    "Beaked":
    {
        "HuntAddress":bit0(0x551ab8),
        "Mob":"Bull Chocobo",
        "MobAddress":bit0(0x551ab8)
    },
    "Maverick":
    {
        "HuntAddress":bit1(0x551ab8),
        "Mob":"Victanir",
        "MobAddress":bit1(0x551ab8)
    },
    "Soulless":
    {
        "HuntAddress":bit2(0x551ab8),
        "Mob":"Zombie Lord",
        "MobAddress":bit2(0x551ab8)
    },
        "Leathern":
    {
        "HuntAddress":bit3(0x551ab8),
        "Mob":"Dheed",
        "MobAddress":bit3(0x551ab8)
    },
        "Sickle":
    {
        "HuntAddress":bit4(0x551ab8),
        "Mob":"Rageclaw",
        "MobAddress":bit4(0x551ab8)
    },
        "Vengeful":
    {
        "HuntAddress":bit5(0x551ab8),
        "Mob":"Arioch",
        "MobAddress":bit5(0x551ab8)
    },
        "Gravesoil":
    {
        "HuntAddress":bit6(0x551ab8),
        "Mob":"Vorres",
        "MobAddress":bit6(0x551ab8)
    },
        "Metallic":
    {
        "HuntAddress":bit7(0x551ab8),
        "Mob":"Killbug",
        "MobAddress":bit7(0x551ab8)
    },
        "Slimy":
    {
        "HuntAddress":bit0(0x551ab9),
        "Mob":"Melt",
        "MobAddress":bit0(0x551ab9)
    },
        "Scythe":
    {
        "HuntAddress":bit1(0x551ab9),
        "Mob":"Biding Mantis",
        "MobAddress":bit1(0x551ab9)
    },
        "Feathered":
    {
        "HuntAddress":bit2(0x551ab9),
        "Mob":"Dreadguard",
        "MobAddress":bit2(0x551ab9)
    },
        "Skull":
    {
        "HuntAddress":bit3(0x551ab9),
        "Mob":"Crystal Knight",
        "MobAddress":bit3(0x551ab9)
    },
        "Mind":
    {
        "HuntAddress":bit4(0x551ab9),
        "Mob":"Ancbolder",
        "MobAddress":bit4(0x551ab9)
    },
        "Eternal":
    {
        "HuntAddress":bit5(0x551ab9),
        "Mob":"Myath",
        "MobAddress":bit5(0x551ab9)
    },
        "Clawed":
    {
        "HuntAddress":bit6(0x551ab9),
        "Mob":"Skullash",
        "MobAddress":bit6(0x551ab9)
    },
        "Odiferous":
    {
        "HuntAddress":bit7(0x551ab9),
        "Mob":"Kris",
        "MobAddress":bit7(0x551ab9)
    },
        "Whiskered":
    {
        "HuntAddress":bit0(0x551aba),
        "Mob":"Grimalkin",
        "MobAddress":bit0(0x551aba)
    },
        "Frigid":
    {
        "HuntAddress":bit1(0x551aba),
        "Mob":"Wendice",
        "MobAddress":bit1(0x551aba)
    },
        "Ensanguined":
    {
        "HuntAddress":bit2(0x551aba),
        "Mob":"Anubys",
        "MobAddress":bit2(0x551aba)
    },
        "Cruel":
    {
        "HuntAddress":bit3(0x551aba),
        "Mob":"Bluesang",
        "MobAddress":bit3(0x551aba)
    },
        "Adamantine":
    {
        "HuntAddress":bit4(0x551aba),
        "Mob":"Aspidochelon",
        "MobAddress":bit4(0x551aba)
    },
        "Reptilian":
    {
        "HuntAddress":bit5(0x551aba),
        "Mob":"Abelisk",
        "MobAddress":bit5(0x551aba)
        
    },
        "Vile":
    {
        "HuntAddress":bit6(0x551aba),
        "Mob":"Avenger",
        "MobAddress":bit6(0x551aba)
    },
}

for hunt_target in trophyhunts{
    achievement(
        format("[Weak] - Proof of the Hunt: {0}", hunt_target),
        format("Defeat {0} and obtain its Trophy", trophyhunts[hunt_target]["Mob"]),
        points= 10,
        trigger=
        SaveProtection() &&
        trophyhunts[hunt_target]["HuntAddress"] == 1  && 
        prev(trophyhunts[hunt_target]["MobAddress"]) == 0       
    )
       
}
