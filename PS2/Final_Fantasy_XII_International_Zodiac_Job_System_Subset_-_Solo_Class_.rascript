// Final Fantasy XII: International Zodiac Job System [Subset - Solo Class]
// #ID = 20511

function mapID() => dword(0x54BC44)
function EventID() => dword(0x54AC00)
function NoStrongMode() => bit1(0x54AA57) != 1

function VaanJob() => byte(0x54cdca) 
function FranJob() => byte(0x54d152)
function BalthierJob() => byte(0x54d316)
function BaschJob() => byte(0x54d4da)
function PanelloJob() => byte(0x54d69e)
function AsheJob() => byte(0x54cf8e)


Jobs = {
    "None":255,
    "White Mage":0,
    "Uhlan":1,
    "Machinist":2,
    "Red Mage":3,
    "Knight":4,
    "Monk":5,
    "Time Mage":6,
    "Breaker":7,
    "Archer":8,
    "Black Mage":9,
    "Samurai":10,
    "Hunter":11,
}

function VaanPaneloJobLock(job) => VaanJob() == Jobs[job] && PanelloJob() == Jobs[job]
function NoAsheJobLock(job) => VaanJob() == Jobs[job] && FranJob() == Jobs[job] && BalthierJob() == Jobs[job] && BaschJob() == Jobs[job] && PanelloJob() == Jobs[job]
function JobLock(job) => VaanJob() == Jobs[job] && FranJob() == Jobs[job] && BalthierJob() == Jobs[job] && BaschJob() == Jobs[job] && PanelloJob() == Jobs[job] && AsheJob() == Jobs[job]



achievement(
    "[Classless] - Exit Stage Right", "Obtain the Goddess Magicite", 1, // Vaan & Panelo Only
    trigger = prev(bit4(0x551AB5)) == 0 && 
              bit4(0x551AB5) == 1 && 
              mapID() == 571 && 
              EventID() == 220 && 
              NoStrongMode() &&
              VaanPaneloJobLock("None"))

achievement(
    "[Classless] - She Airship Enough For You", "Take a ride in The Strahl for the first time", 1, // Everyone Except Ashe
    trigger = mapID() == 788 && 
              prev(EventID()) == 420 && 
              EventID() == 460 && 
              NoStrongMode() &&
              NoAsheJobLock("None"))

achievement(
    "[Classless] - Proof Of Royal Lineage", "Save the Princess of Dalmasca and escape the Leviathan", 5,
    trigger = prev(EventID()) == 1000 && 
              EventID() == 1090 && 
              mapID() == 552 && 
              NoStrongMode() &&
              JobLock("None"))

achievement(
    "[Classless] - Power Of Dawn", "Obtain the Dawn Shard...again", 5,
    trigger = prior(bit0(0x551AAF)) == 0 && 
              bit0(0x551AAF) == 1 && 
              mapID() == 867 && 
              prior(mapID()) == 872 && 
              EventID() == 1520 && 
              prior(EventID()) == 1460 && 
              NoStrongMode() &&
              JobLock("None"))

achievement(
    "[Classless] - A Pleasent Lie That", "Obtain Lente's Tear", 5,
    trigger = prev(bit7(0x551AB6)) == 0 && 
              bit7(0x551AB6) == 1 && 
              mapID() == 766 && 
              prior(mapID()) == 722 && 
              EventID() == 1900 && 
              prior(EventID()) == 1820 && 
              NoStrongMode() &&
              JobLock("None"))

achievement(
    "[Classless] - To Wield Power Againt Power", "Obtain the Sword Of Kings", 5,
    trigger = mapID() == 615 && 
              prev(bit3(0x551AB1)) == 0 && 
              bit3(0x551AB1) == 1 && 
              EventID() == 2200 && 
              NoStrongMode() &&
              JobLock("None"))

achievement(
    "[Classless] - Differences Between Our Lands Fades", "See the events of Mt Bur Omiscae", 10,
    trigger = EventID() == 3000 && 
              prior(EventID()) == 2290 && 
              prior(mapID()) == 737 && 
              mapID() == 738 && 
              NoStrongMode() &&
              JobLock("None"))

achievement(
    "[Classless] - Mandragoran Royalty", "Defeat the Mandragoras in Sochen Cave Palace", 10,
    trigger = (prev(byte(0x556096)) == 1 || 
               prev(byte(0x556098)) == 1 || 
               prev(byte(0x55609A)) == 1 ||
               prev(byte(0x55609C)) == 1 || 
               prev(byte(0x55609E)) == 1) && 
               mapID() == 200 && 
               byte(0x556096) == 2 && 
               byte(0x556098) == 2 && 
               byte(0x55609A) == 2 && 
               byte(0x55609C) == 2 && 
               byte(0x55609E) == 2 && 
               NoStrongMode() &&
               JobLock("None"))

achievement(
    "[Classless] - Consider Your Bones, Old Man!", "Face Dr. Cid in Archades", 10,
    trigger = EventID() == 4000 && 
              prior(EventID()) == 3440 && 
              prior(mapID()) == 286 && 
              mapID() == 922 && 
              NoStrongMode() &&
              JobLock("None"))

achievement(
    "[Classless] - Attain to Your Birth Right!", "Obtain the Treaty Blade", 10,
    trigger = prev(bit4(0x551AB1)) == 0 && 
              bit4(0x551AB1) == 1 && 
              mapID() == 916 && 
              NoStrongMode() &&
              JobLock("None"))

achievement(
    "[Classless] - Is there a Doctor in the House", "Defeat Dr. CId and Famfrit at the Pharos at Ridorana", 25,
    trigger = mapID() == 668 && 
              EventID() == 5550 && 
              prev(dword(0x9DF884)) > 0 && 
              dword(0x9DF884) == 0 && 
              NoStrongMode() &&
              JobLock("None"))

achievement(
    "[Classless] - Zodiac Age", "Complete the Game", 50,
    trigger = mapID() == 785 && 
              EventID() == 7100 && 
              prev(dword(0x9DF404)) > 0 && 
              dword(0x9DF404) == 0 && 
              NoStrongMode() &&
              JobLock("None"))
     
     
     
     
     
     
              
achievement(
    "[White Mage] - Exit Stage Right", "Obtain the Goddess Magicite", 1, // Vaan & Panelo Only
    trigger = prev(bit4(0x551AB5)) == 0 && 
              bit4(0x551AB5) == 1 && 
              mapID() == 571 && 
              EventID() == 220 && 
              NoStrongMode() &&
              VaanPaneloJobLock("White Mage"))

achievement(
    "[White Mage] - She Airship Enough For You", "Take a ride in The Strahl for the first time", 1, // Everyone Except Ashe
    trigger = mapID() == 788 && 
              prev(EventID()) == 420 && 
              EventID() == 460 && 
              NoStrongMode() &&
              NoAsheJobLock("White Mage"))

achievement(
    "[White Mage] - Proof Of Royal Lineage", "Save the Princess of Dalmasca and escape the Leviathan", 5,
    trigger = prev(EventID()) == 1000 && 
              EventID() == 1090 && 
              mapID() == 552 && 
              NoStrongMode() &&
              JobLock("White Mage"))

achievement(
    "[White Mage] - Power Of Dawn", "Obtain the Dawn Shard...again", 5,
    trigger = prior(bit0(0x551AAF)) == 0 && 
              bit0(0x551AAF) == 1 && 
              mapID() == 867 && 
              prior(mapID()) == 872 && 
              EventID() == 1520 && 
              prior(EventID()) == 1460 && 
              NoStrongMode() &&
              JobLock("White Mage"))

achievement(
    "[White Mage] - A Pleasent Lie That", "Obtain Lente's Tear", 5,
    trigger = prev(bit7(0x551AB6)) == 0 && 
              bit7(0x551AB6) == 1 && 
              mapID() == 766 && 
              prior(mapID()) == 722 && 
              EventID() == 1900 && 
              prior(EventID()) == 1820 && 
              NoStrongMode() &&
              JobLock("White Mage"))

achievement(
    "[White Mage] - To Wield Power Againt Power", "Obtain the Sword Of Kings", 5,
    trigger = mapID() == 615 && 
              prev(bit3(0x551AB1)) == 0 && 
              bit3(0x551AB1) == 1 && 
              EventID() == 2200 && 
              NoStrongMode() &&
              JobLock("White Mage"))

achievement(
    "[White Mage] - Differences Between Our Lands Fades", "See the events of Mt Bur Omiscae", 10,
    trigger = EventID() == 3000 && 
              prior(EventID()) == 2290 && 
              prior(mapID()) == 737 && 
              mapID() == 738 && 
              NoStrongMode() &&
              JobLock("White Mage"))

achievement(
    "[White Mage] - Mandragoran Royalty", "Defeat the Mandragoras in Sochen Cave Palace", 10,
    trigger = (prev(byte(0x556096)) == 1 || 
               prev(byte(0x556098)) == 1 || 
               prev(byte(0x55609A)) == 1 ||
               prev(byte(0x55609C)) == 1 || 
               prev(byte(0x55609E)) == 1) && 
               mapID() == 200 && 
               byte(0x556096) == 2 && 
               byte(0x556098) == 2 && 
               byte(0x55609A) == 2 && 
               byte(0x55609C) == 2 && 
               byte(0x55609E) == 2 && 
               NoStrongMode() &&
              JobLock("White Mage"))

achievement(
    "[White Mage] - Consider Your Bones, Old Man!", "Face Dr. Cid in Archades", 10,
    trigger = EventID() == 4000 && 
              prior(EventID()) == 3440 && 
              prior(mapID()) == 286 && 
              mapID() == 922 && 
              NoStrongMode() &&
              JobLock("White Mage"))

achievement(
    "[White Mage] - Attain to Your Birth Right!", "Obtain the Treaty Blade", 10,
    trigger = prev(bit4(0x551AB1)) == 0 && 
              bit4(0x551AB1) == 1 && 
              mapID() == 916 && 
              NoStrongMode() &&
              JobLock("White Mage"))

achievement(
    "[White Mage] - Is there a Doctor in the House", "Defeat Dr. CId and Famfrit at the Pharos at Ridorana", 25,
    trigger = mapID() == 668 && 
              EventID() == 5550 && 
              prev(dword(0x9DF884)) > 0 && 
              dword(0x9DF884) == 0 && 
              NoStrongMode() &&
              JobLock("White Mage"))

achievement(
    "[White Mage] - Zodiac Age", "Complete the Game", 50,
    trigger = mapID() == 785 && 
              EventID() == 7100 && 
              prev(dword(0x9DF404)) > 0 && 
              dword(0x9DF404) == 0 && 
              NoStrongMode() &&
              JobLock("White Mage"))
              
achievement(
    "[Uhlan] - Exit Stage Right", "Obtain the Goddess Magicite", 1, // Vaan & Panelo Only
    trigger = prev(bit4(0x551AB5)) == 0 && 
              bit4(0x551AB5) == 1 && 
              mapID() == 571 && 
              EventID() == 220 && 
              NoStrongMode() &&
              VaanPaneloJobLock("Uhlan"))

achievement(
    "[Uhlan] - She Airship Enough For You", "Take a ride in The Strahl for the first time", 1, // Everyone Except Ashe
    trigger = mapID() == 788 && 
              prev(EventID()) == 420 && 
              EventID() == 460 && 
              NoStrongMode() &&
              NoAsheJobLock("Uhlan"))

achievement(
    "[Uhlan] - Proof Of Royal Lineage", "Save the Princess of Dalmasca and escape the Leviathan", 5,
    trigger = prev(EventID()) == 1000 && 
              EventID() == 1090 && 
              mapID() == 552 && 
              NoStrongMode() &&
              JobLock("Uhlan"))

achievement(
    "[Uhlan] - Power Of Dawn", "Obtain the Dawn Shard...again", 5,
    trigger = prior(bit0(0x551AAF)) == 0 && 
              bit0(0x551AAF) == 1 && 
              mapID() == 867 && 
              prior(mapID()) == 872 && 
              EventID() == 1520 && 
              prior(EventID()) == 1460 && 
              NoStrongMode() &&
              JobLock("Uhlan"))

achievement(
    "[Uhlan] - A Pleasent Lie That", "Obtain Lente's Tear", 5,
    trigger = prev(bit7(0x551AB6)) == 0 && 
              bit7(0x551AB6) == 1 && 
              mapID() == 766 && 
              prior(mapID()) == 722 && 
              EventID() == 1900 && 
              prior(EventID()) == 1820 && 
              NoStrongMode() &&
              JobLock("Uhlan"))

achievement(
    "[Uhlan] - To Wield Power Againt Power", "Obtain the Sword Of Kings", 5,
    trigger = mapID() == 615 && 
              prev(bit3(0x551AB1)) == 0 && 
              bit3(0x551AB1) == 1 && 
              EventID() == 2200 && 
              NoStrongMode() &&
              JobLock("Uhlan"))

achievement(
    "[Uhlan] - Differences Between Our Lands Fades", "See the events of Mt Bur Omiscae", 10,
    trigger = EventID() == 3000 && 
              prior(EventID()) == 2290 && 
              prior(mapID()) == 737 && 
              mapID() == 738 && 
              NoStrongMode() &&
              JobLock("Uhlan"))

achievement(
    "[Uhlan] - Mandragoran Royalty", "Defeat the Mandragoras in Sochen Cave Palace", 10,
    trigger = (prev(byte(0x556096)) == 1 || 
               prev(byte(0x556098)) == 1 || 
               prev(byte(0x55609A)) == 1 ||
               prev(byte(0x55609C)) == 1 || 
               prev(byte(0x55609E)) == 1) && 
               mapID() == 200 && 
               byte(0x556096) == 2 && 
               byte(0x556098) == 2 && 
               byte(0x55609A) == 2 && 
               byte(0x55609C) == 2 && 
               byte(0x55609E) == 2 && 
               NoStrongMode() &&
              JobLock("Uhlan"))

achievement(
    "[Uhlan] - Consider Your Bones, Old Man!", "Face Dr. Cid in Archades", 10,
    trigger = EventID() == 4000 && 
              prior(EventID()) == 3440 && 
              prior(mapID()) == 286 && 
              mapID() == 922 && 
              NoStrongMode() &&
              JobLock("Uhlan"))

achievement(
    "[Uhlan] - Attain to Your Birth Right!", "Obtain the Treaty Blade", 10,
    trigger = prev(bit4(0x551AB1)) == 0 && 
              bit4(0x551AB1) == 1 && 
              mapID() == 916 && 
              NoStrongMode() &&
              JobLock("Uhlan"))

achievement(
    "[Uhlan] - Is there a Doctor in the House", "Defeat Dr. CId and Famfrit at the Pharos at Ridorana", 25,
    trigger = mapID() == 668 && 
              EventID() == 5550 && 
              prev(dword(0x9DF884)) > 0 && 
              dword(0x9DF884) == 0 && 
              NoStrongMode() &&
              JobLock("Uhlan"))

achievement(
    "[Uhlan] - Zodiac Age", "Complete the Game", 50,
    trigger = mapID() == 785 && 
              EventID() == 7100 && 
              prev(dword(0x9DF404)) > 0 && 
              dword(0x9DF404) == 0 && 
              NoStrongMode() &&
              JobLock("Uhlan"))
              



















achievement(
    "[Machinist] - Exit Stage Right", "Obtain the Goddess Magicite", 1, // Vaan & Panelo Only
    trigger = prev(bit4(0x551AB5)) == 0 && 
              bit4(0x551AB5) == 1 && 
              mapID() == 571 && 
              EventID() == 220 && 
              NoStrongMode() &&
              VaanPaneloJobLock("Machinist"))

achievement(
    "[Machinist] - She Airship Enough For You", "Take a ride in The Strahl for the first time", 1, // Everyone Except Ashe
    trigger = mapID() == 788 && 
              prev(EventID()) == 420 && 
              EventID() == 460 && 
              NoStrongMode() &&
              NoAsheJobLock("Machinist"))

achievement(
    "[Machinist] - Proof Of Royal Lineage", "Save the Princess of Dalmasca and escape the Leviathan", 5,
    trigger = prev(EventID()) == 1000 && 
              EventID() == 1090 && 
              mapID() == 552 && 
              NoStrongMode() &&
              JobLock("Machinist"))

achievement(
    "[Machinist] - Power Of Dawn", "Obtain the Dawn Shard...again", 5,
    trigger = prior(bit0(0x551AAF)) == 0 && 
              bit0(0x551AAF) == 1 && 
              mapID() == 867 && 
              prior(mapID()) == 872 && 
              EventID() == 1520 && 
              prior(EventID()) == 1460 && 
              NoStrongMode() &&
              JobLock("Machinist"))

achievement(
    "[Machinist] - A Pleasent Lie That", "Obtain Lente's Tear", 5,
    trigger = prev(bit7(0x551AB6)) == 0 && 
              bit7(0x551AB6) == 1 && 
              mapID() == 766 && 
              prior(mapID()) == 722 && 
              EventID() == 1900 && 
              prior(EventID()) == 1820 && 
              NoStrongMode() &&
              JobLock("Machinist"))

achievement(
    "[Machinist] - To Wield Power Againt Power", "Obtain the Sword Of Kings", 5,
    trigger = mapID() == 615 && 
              prev(bit3(0x551AB1)) == 0 && 
              bit3(0x551AB1) == 1 && 
              EventID() == 2200 && 
              NoStrongMode() &&
              JobLock("Machinist"))

achievement(
    "[Machinist] - Differences Between Our Lands Fades", "See the events of Mt Bur Omiscae", 10,
    trigger = EventID() == 3000 && 
              prior(EventID()) == 2290 && 
              prior(mapID()) == 737 && 
              mapID() == 738 && 
              NoStrongMode() &&
              JobLock("Machinist"))

achievement(
    "[Machinist] - Mandragoran Royalty", "Defeat the Mandragoras in Sochen Cave Palace", 10,
    trigger = (prev(byte(0x556096)) == 1 || 
               prev(byte(0x556098)) == 1 || 
               prev(byte(0x55609A)) == 1 ||
               prev(byte(0x55609C)) == 1 || 
               prev(byte(0x55609E)) == 1) && 
               mapID() == 200 && 
               byte(0x556096) == 2 && 
               byte(0x556098) == 2 && 
               byte(0x55609A) == 2 && 
               byte(0x55609C) == 2 && 
               byte(0x55609E) == 2 && 
               NoStrongMode() &&
              JobLock("Machinist"))

achievement(
    "[Machinist] - Consider Your Bones, Old Man!", "Face Dr. Cid in Archades", 10,
    trigger = EventID() == 4000 && 
              prior(EventID()) == 3440 && 
              prior(mapID()) == 286 && 
              mapID() == 922 && 
              NoStrongMode() &&
              JobLock("Machinist"))

achievement(
    "[Machinist] - Attain to Your Birth Right!", "Obtain the Treaty Blade", 10,
    trigger = prev(bit4(0x551AB1)) == 0 && 
              bit4(0x551AB1) == 1 && 
              mapID() == 916 && 
              NoStrongMode() &&
              JobLock("Machinist"))

achievement(
    "[Machinist] - Is there a Doctor in the House", "Defeat Dr. CId and Famfrit at the Pharos at Ridorana", 25,
    trigger = mapID() == 668 && 
              EventID() == 5550 && 
              prev(dword(0x9DF884)) > 0 && 
              dword(0x9DF884) == 0 && 
              NoStrongMode() &&
              JobLock("Machinist"))

achievement(
    "[Machinist] - Zodiac Age", "Complete the Game", 50,
    trigger = mapID() == 785 && 
              EventID() == 7100 && 
              prev(dword(0x9DF404)) > 0 && 
              dword(0x9DF404) == 0 && 
              NoStrongMode() &&
              JobLock("Machinist"))
              
              
              
              
              
              
              
              
              
              
              
              
              
achievement(
    "[Red Mage] - Exit Stage Right", "Obtain the Goddess Magicite", 1, // Vaan & Panelo Only
    trigger = prev(bit4(0x551AB5)) == 0 && 
              bit4(0x551AB5) == 1 && 
              mapID() == 571 && 
              EventID() == 220 && 
              NoStrongMode() &&
              VaanPaneloJobLock("Red Mage"))

achievement(
    "[Red Mage] - She Airship Enough For You", "Take a ride in The Strahl for the first time", 1, // Everyone Except Ashe
    trigger = mapID() == 788 && 
              prev(EventID()) == 420 && 
              EventID() == 460 && 
              NoStrongMode() &&
              NoAsheJobLock("Red Mage"))

achievement(
    "[Red Mage] - Proof Of Royal Lineage", "Save the Princess of Dalmasca and escape the Leviathan", 5,
    trigger = prev(EventID()) == 1000 && 
              EventID() == 1090 && 
              mapID() == 552 && 
              NoStrongMode() &&
              JobLock("Red Mage"))

achievement(
    "[Red Mage] - Power Of Dawn", "Obtain the Dawn Shard...again", 5,
    trigger = prior(bit0(0x551AAF)) == 0 && 
              bit0(0x551AAF) == 1 && 
              mapID() == 867 && 
              prior(mapID()) == 872 && 
              EventID() == 1520 && 
              prior(EventID()) == 1460 && 
              NoStrongMode() &&
              JobLock("Red Mage"))

achievement(
    "[Red Mage] - A Pleasent Lie That", "Obtain Lente's Tear", 5,
    trigger = prev(bit7(0x551AB6)) == 0 && 
              bit7(0x551AB6) == 1 && 
              mapID() == 766 && 
              prior(mapID()) == 722 && 
              EventID() == 1900 && 
              prior(EventID()) == 1820 && 
              NoStrongMode() &&
              JobLock("Red Mage"))

achievement(
    "[Red Mage] - To Wield Power Againt Power", "Obtain the Sword Of Kings", 5,
    trigger = mapID() == 615 && 
              prev(bit3(0x551AB1)) == 0 && 
              bit3(0x551AB1) == 1 && 
              EventID() == 2200 && 
              NoStrongMode() &&
              JobLock("Red Mage"))

achievement(
    "[Red Mage] - Differences Between Our Lands Fades", "See the events of Mt Bur Omiscae", 10,
    trigger = EventID() == 3000 && 
              prior(EventID()) == 2290 && 
              prior(mapID()) == 737 && 
              mapID() == 738 && 
              NoStrongMode() &&
              JobLock("Red Mage"))

achievement(
    "[Red Mage] - Mandragoran Royalty", "Defeat the Mandragoras in Sochen Cave Palace", 10,
    trigger = (prev(byte(0x556096)) == 1 || 
               prev(byte(0x556098)) == 1 || 
               prev(byte(0x55609A)) == 1 ||
               prev(byte(0x55609C)) == 1 || 
               prev(byte(0x55609E)) == 1) && 
               mapID() == 200 && 
               byte(0x556096) == 2 && 
               byte(0x556098) == 2 && 
               byte(0x55609A) == 2 && 
               byte(0x55609C) == 2 && 
               byte(0x55609E) == 2 && 
               NoStrongMode() &&
              JobLock("Red Mage"))

achievement(
    "[Red Mage] - Consider Your Bones, Old Man!", "Face Dr. Cid in Archades", 10,
    trigger = EventID() == 4000 && 
              prior(EventID()) == 3440 && 
              prior(mapID()) == 286 && 
              mapID() == 922 && 
              NoStrongMode() &&
              JobLock("Red Mage"))

achievement(
    "[Red Mage] - Attain to Your Birth Right!", "Obtain the Treaty Blade", 10,
    trigger = prev(bit4(0x551AB1)) == 0 && 
              bit4(0x551AB1) == 1 && 
              mapID() == 916 && 
              NoStrongMode() &&
              JobLock("Red Mage"))

achievement(
    "[Red Mage] - Is there a Doctor in the House", "Defeat Dr. CId and Famfrit at the Pharos at Ridorana", 25,
    trigger = mapID() == 668 && 
              EventID() == 5550 && 
              prev(dword(0x9DF884)) > 0 && 
              dword(0x9DF884) == 0 && 
              NoStrongMode() &&
              JobLock("Red Mage"))

achievement(
    "[Red Mage] - Zodiac Age", "Complete the Game", 50,
    trigger = mapID() == 785 && 
              EventID() == 7100 && 
              prev(dword(0x9DF404)) > 0 && 
              dword(0x9DF404) == 0 && 
              NoStrongMode() &&
              JobLock("Red Mage"))              
              
              
              
              





achievement(
    "[Knight] - Exit Stage Right", "Obtain the Goddess Magicite", 1, // Vaan & Panelo Only
    trigger = prev(bit4(0x551AB5)) == 0 && 
              bit4(0x551AB5) == 1 && 
              mapID() == 571 && 
              EventID() == 220 && 
              NoStrongMode() &&
              VaanPaneloJobLock("Knight"))

achievement(
    "[Knight] - She Airship Enough For You", "Take a ride in The Strahl for the first time", 1, // Everyone Except Ashe
    trigger = mapID() == 788 && 
              prev(EventID()) == 420 && 
              EventID() == 460 && 
              NoStrongMode() &&
              NoAsheJobLock("Knight"))

achievement(
    "[Knight] - Proof Of Royal Lineage", "Save the Princess of Dalmasca and escape the Leviathan", 5,
    trigger = prev(EventID()) == 1000 && 
              EventID() == 1090 && 
              mapID() == 552 && 
              NoStrongMode() &&
              JobLock("Knight"))

achievement(
    "[Knight] - Power Of Dawn", "Obtain the Dawn Shard...again", 5,
    trigger = prior(bit0(0x551AAF)) == 0 && 
              bit0(0x551AAF) == 1 && 
              mapID() == 867 && 
              prior(mapID()) == 872 && 
              EventID() == 1520 && 
              prior(EventID()) == 1460 && 
              NoStrongMode() &&
              JobLock("Knight"))

achievement(
    "[Knight] - A Pleasent Lie That", "Obtain Lente's Tear", 5,
    trigger = prev(bit7(0x551AB6)) == 0 && 
              bit7(0x551AB6) == 1 && 
              mapID() == 766 && 
              prior(mapID()) == 722 && 
              EventID() == 1900 && 
              prior(EventID()) == 1820 && 
              NoStrongMode() &&
              JobLock("Knight"))

achievement(
    "[Knight] - To Wield Power Againt Power", "Obtain the Sword Of Kings", 5,
    trigger = mapID() == 615 && 
              prev(bit3(0x551AB1)) == 0 && 
              bit3(0x551AB1) == 1 && 
              EventID() == 2200 && 
              NoStrongMode() &&
              JobLock("Knight"))

achievement(
    "[Knight] - Differences Between Our Lands Fades", "See the events of Mt Bur Omiscae", 10,
    trigger = EventID() == 3000 && 
              prior(EventID()) == 2290 && 
              prior(mapID()) == 737 && 
              mapID() == 738 && 
              NoStrongMode() &&
              JobLock("Knight"))

achievement(
    "[Knight] - Mandragoran Royalty", "Defeat the Mandragoras in Sochen Cave Palace", 10,
    trigger = (prev(byte(0x556096)) == 1 || 
               prev(byte(0x556098)) == 1 || 
               prev(byte(0x55609A)) == 1 ||
               prev(byte(0x55609C)) == 1 || 
               prev(byte(0x55609E)) == 1) && 
               mapID() == 200 && 
               byte(0x556096) == 2 && 
               byte(0x556098) == 2 && 
               byte(0x55609A) == 2 && 
               byte(0x55609C) == 2 && 
               byte(0x55609E) == 2 && 
               NoStrongMode() &&
              JobLock("Knight"))

achievement(
    "[Knight] - Consider Your Bones, Old Man!", "Face Dr. Cid in Archades", 10,
    trigger = EventID() == 4000 && 
              prior(EventID()) == 3440 && 
              prior(mapID()) == 286 && 
              mapID() == 922 && 
              NoStrongMode() &&
              JobLock("Knight"))

achievement(
    "[Knight] - Attain to Your Birth Right!", "Obtain the Treaty Blade", 10,
    trigger = prev(bit4(0x551AB1)) == 0 && 
              bit4(0x551AB1) == 1 && 
              mapID() == 916 && 
              NoStrongMode() &&
              JobLock("Knight"))

achievement(
    "[Knight] - Is there a Doctor in the House", "Defeat Dr. CId and Famfrit at the Pharos at Ridorana", 25,
    trigger = mapID() == 668 && 
              EventID() == 5550 && 
              prev(dword(0x9DF884)) > 0 && 
              dword(0x9DF884) == 0 && 
              NoStrongMode() &&
              JobLock("Knight"))

achievement(
    "[Knight] - Zodiac Age", "Complete the Game", 50,
    trigger = mapID() == 785 && 
              EventID() == 7100 && 
              prev(dword(0x9DF404)) > 0 && 
              dword(0x9DF404) == 0 && 
              NoStrongMode() &&
              JobLock("Knight"))
              
              
              
              
              
              
              
              
              
achievement(
    "[Monk] - Exit Stage Right", "Obtain the Goddess Magicite", 1, // Vaan & Panelo Only
    trigger = prev(bit4(0x551AB5)) == 0 && 
              bit4(0x551AB5) == 1 && 
              mapID() == 571 && 
              EventID() == 220 && 
              NoStrongMode() &&
              VaanPaneloJobLock("Monk"))

achievement(
    "[Monk] - She Airship Enough For You", "Take a ride in The Strahl for the first time", 1, // Everyone Except Ashe
    trigger = mapID() == 788 && 
              prev(EventID()) == 420 && 
              EventID() == 460 && 
              NoStrongMode() &&
              NoAsheJobLock("Monk"))

achievement(
    "[Monk] - Proof Of Royal Lineage", "Save the Princess of Dalmasca and escape the Leviathan", 5,
    trigger = prev(EventID()) == 1000 && 
              EventID() == 1090 && 
              mapID() == 552 && 
              NoStrongMode() &&
              JobLock("Monk"))

achievement(
    "[Monk] - Power Of Dawn", "Obtain the Dawn Shard...again", 5,
    trigger = prior(bit0(0x551AAF)) == 0 && 
              bit0(0x551AAF) == 1 && 
              mapID() == 867 && 
              prior(mapID()) == 872 && 
              EventID() == 1520 && 
              prior(EventID()) == 1460 && 
              NoStrongMode() &&
              JobLock("Monk"))

achievement(
    "[Monk] - A Pleasent Lie That", "Obtain Lente's Tear", 5,
    trigger = prev(bit7(0x551AB6)) == 0 && 
              bit7(0x551AB6) == 1 && 
              mapID() == 766 && 
              prior(mapID()) == 722 && 
              EventID() == 1900 && 
              prior(EventID()) == 1820 && 
              NoStrongMode() &&
              JobLock("Monk"))

achievement(
    "[Monk] - To Wield Power Againt Power", "Obtain the Sword Of Kings", 5,
    trigger = mapID() == 615 && 
              prev(bit3(0x551AB1)) == 0 && 
              bit3(0x551AB1) == 1 && 
              EventID() == 2200 && 
              NoStrongMode() &&
              JobLock("Monk"))

achievement(
    "[Monk] - Differences Between Our Lands Fades", "See the events of Mt Bur Omiscae", 10,
    trigger = EventID() == 3000 && 
              prior(EventID()) == 2290 && 
              prior(mapID()) == 737 && 
              mapID() == 738 && 
              NoStrongMode() &&
              JobLock("Monk"))

achievement(
    "[Monk] - Mandragoran Royalty", "Defeat the Mandragoras in Sochen Cave Palace", 10,
    trigger = (prev(byte(0x556096)) == 1 || 
               prev(byte(0x556098)) == 1 || 
               prev(byte(0x55609A)) == 1 ||
               prev(byte(0x55609C)) == 1 || 
               prev(byte(0x55609E)) == 1) && 
               mapID() == 200 && 
               byte(0x556096) == 2 && 
               byte(0x556098) == 2 && 
               byte(0x55609A) == 2 && 
               byte(0x55609C) == 2 && 
               byte(0x55609E) == 2 && 
               NoStrongMode() &&
              JobLock("Monk"))

achievement(
    "[Monk] - Consider Your Bones, Old Man!", "Face Dr. Cid in Archades", 10,
    trigger = EventID() == 4000 && 
              prior(EventID()) == 3440 && 
              prior(mapID()) == 286 && 
              mapID() == 922 && 
              NoStrongMode() &&
              JobLock("Monk"))

achievement(
    "[Monk] - Attain to Your Birth Right!", "Obtain the Treaty Blade", 10,
    trigger = prev(bit4(0x551AB1)) == 0 && 
              bit4(0x551AB1) == 1 && 
              mapID() == 916 && 
              NoStrongMode() &&
              JobLock("Monk"))

achievement(
    "[Monk] - Is there a Doctor in the House", "Defeat Dr. CId and Famfrit at the Pharos at Ridorana", 25,
    trigger = mapID() == 668 && 
              EventID() == 5550 && 
              prev(dword(0x9DF884)) > 0 && 
              dword(0x9DF884) == 0 && 
              NoStrongMode() &&
              JobLock("Monk"))

achievement(
    "[Monk] - Zodiac Age", "Complete the Game", 50,
    trigger = mapID() == 785 && 
              EventID() == 7100 && 
              prev(dword(0x9DF404)) > 0 && 
              dword(0x9DF404) == 0 && 
              NoStrongMode() &&
              JobLock("Monk"))
              
              
              
              
              









achievement(
    "[Time Mage] - Exit Stage Right", "Obtain the Goddess Magicite", 1, // Vaan & Panelo Only
    trigger = prev(bit4(0x551AB5)) == 0 && 
              bit4(0x551AB5) == 1 && 
              mapID() == 571 && 
              EventID() == 220 && 
              NoStrongMode() &&
              VaanPaneloJobLock("Time Mage"))

achievement(
    "[Time Mage] - She Airship Enough For You", "Take a ride in The Strahl for the first time", 1, // Everyone Except Ashe
    trigger = mapID() == 788 && 
              prev(EventID()) == 420 && 
              EventID() == 460 && 
              NoStrongMode() &&
              NoAsheJobLock("Time Mage"))

achievement(
    "[Time Mage] - Proof Of Royal Lineage", "Save the Princess of Dalmasca and escape the Leviathan", 5,
    trigger = prev(EventID()) == 1000 && 
              EventID() == 1090 && 
              mapID() == 552 && 
              NoStrongMode() &&
              JobLock("Time Mage"))

achievement(
    "[Time Mage] - Power Of Dawn", "Obtain the Dawn Shard...again", 5,
    trigger = prior(bit0(0x551AAF)) == 0 && 
              bit0(0x551AAF) == 1 && 
              mapID() == 867 && 
              prior(mapID()) == 872 && 
              EventID() == 1520 && 
              prior(EventID()) == 1460 && 
              NoStrongMode() &&
              JobLock("Time Mage"))

achievement(
    "[Time Mage] - A Pleasent Lie That", "Obtain Lente's Tear", 5,
    trigger = prev(bit7(0x551AB6)) == 0 && 
              bit7(0x551AB6) == 1 && 
              mapID() == 766 && 
              prior(mapID()) == 722 && 
              EventID() == 1900 && 
              prior(EventID()) == 1820 && 
              NoStrongMode() &&
              JobLock("Time Mage"))

achievement(
    "[Time Mage] - To Wield Power Againt Power", "Obtain the Sword Of Kings", 5,
    trigger = mapID() == 615 && 
              prev(bit3(0x551AB1)) == 0 && 
              bit3(0x551AB1) == 1 && 
              EventID() == 2200 && 
              NoStrongMode() &&
              JobLock("Time Mage"))

achievement(
    "[Time Mage] - Differences Between Our Lands Fades", "See the events of Mt Bur Omiscae", 10,
    trigger = EventID() == 3000 && 
              prior(EventID()) == 2290 && 
              prior(mapID()) == 737 && 
              mapID() == 738 && 
              NoStrongMode() &&
              JobLock("Time Mage"))

achievement(
    "[Time Mage] - Mandragoran Royalty", "Defeat the Mandragoras in Sochen Cave Palace", 10,
    trigger = (prev(byte(0x556096)) == 1 || 
               prev(byte(0x556098)) == 1 || 
               prev(byte(0x55609A)) == 1 ||
               prev(byte(0x55609C)) == 1 || 
               prev(byte(0x55609E)) == 1) && 
               mapID() == 200 && 
               byte(0x556096) == 2 && 
               byte(0x556098) == 2 && 
               byte(0x55609A) == 2 && 
               byte(0x55609C) == 2 && 
               byte(0x55609E) == 2 && 
               NoStrongMode() &&
              JobLock("Time Mage"))

achievement(
    "[Time Mage] - Consider Your Bones, Old Man!", "Face Dr. Cid in Archades", 10,
    trigger = EventID() == 4000 && 
              prior(EventID()) == 3440 && 
              prior(mapID()) == 286 && 
              mapID() == 922 && 
              NoStrongMode() &&
              JobLock("Time Mage"))

achievement(
    "[Time Mage] - Attain to Your Birth Right!", "Obtain the Treaty Blade", 10,
    trigger = prev(bit4(0x551AB1)) == 0 && 
              bit4(0x551AB1) == 1 && 
              mapID() == 916 && 
              NoStrongMode() &&
              JobLock("Time Mage"))

achievement(
    "[Time Mage] - Is there a Doctor in the House", "Defeat Dr. CId and Famfrit at the Pharos at Ridorana", 25,
    trigger = mapID() == 668 && 
              EventID() == 5550 && 
              prev(dword(0x9DF884)) > 0 && 
              dword(0x9DF884) == 0 && 
              NoStrongMode() &&
              JobLock("Time Mage"))

achievement(
    "[Time Mage] - Zodiac Age", "Complete the Game", 50,
    trigger = mapID() == 785 && 
              EventID() == 7100 && 
              prev(dword(0x9DF404)) > 0 && 
              dword(0x9DF404) == 0 && 
              NoStrongMode() &&
              JobLock("Time Mage")) 
              
              
              
              
              
              
              









achievement(
    "[Breaker] - Exit Stage Right", "Obtain the Goddess Magicite", 1, // Vaan & Panelo Only
    trigger = prev(bit4(0x551AB5)) == 0 && 
              bit4(0x551AB5) == 1 && 
              mapID() == 571 && 
              EventID() == 220 && 
              NoStrongMode() &&
              VaanPaneloJobLock("Breaker"))

achievement(
    "[Breaker] - She Airship Enough For You", "Take a ride in The Strahl for the first time", 1, // Everyone Except Ashe
    trigger = mapID() == 788 && 
              prev(EventID()) == 420 && 
              EventID() == 460 && 
              NoStrongMode() &&
              NoAsheJobLock("Breaker"))

achievement(
    "[Breaker] - Proof Of Royal Lineage", "Save the Princess of Dalmasca and escape the Leviathan", 5,
    trigger = prev(EventID()) == 1000 && 
              EventID() == 1090 && 
              mapID() == 552 && 
              NoStrongMode() &&
              JobLock("Breaker"))

achievement(
    "[Breaker] - Power Of Dawn", "Obtain the Dawn Shard...again", 5,
    trigger = prior(bit0(0x551AAF)) == 0 && 
              bit0(0x551AAF) == 1 && 
              mapID() == 867 && 
              prior(mapID()) == 872 && 
              EventID() == 1520 && 
              prior(EventID()) == 1460 && 
              NoStrongMode() &&
              JobLock("Breaker"))

achievement(
    "[Breaker] - A Pleasent Lie That", "Obtain Lente's Tear", 5,
    trigger = prev(bit7(0x551AB6)) == 0 && 
              bit7(0x551AB6) == 1 && 
              mapID() == 766 && 
              prior(mapID()) == 722 && 
              EventID() == 1900 && 
              prior(EventID()) == 1820 && 
              NoStrongMode() &&
              JobLock("Breaker"))

achievement(
    "[Breaker] - To Wield Power Againt Power", "Obtain the Sword Of Kings", 5,
    trigger = mapID() == 615 && 
              prev(bit3(0x551AB1)) == 0 && 
              bit3(0x551AB1) == 1 && 
              EventID() == 2200 && 
              NoStrongMode() &&
              JobLock("Breaker"))

achievement(
    "[Breaker] - Differences Between Our Lands Fades", "See the events of Mt Bur Omiscae", 10,
    trigger = EventID() == 3000 && 
              prior(EventID()) == 2290 && 
              prior(mapID()) == 737 && 
              mapID() == 738 && 
              NoStrongMode() &&
              JobLock("Breaker"))

achievement(
    "[Breaker] - Mandragoran Royalty", "Defeat the Mandragoras in Sochen Cave Palace", 10,
    trigger = (prev(byte(0x556096)) == 1 || 
               prev(byte(0x556098)) == 1 || 
               prev(byte(0x55609A)) == 1 ||
               prev(byte(0x55609C)) == 1 || 
               prev(byte(0x55609E)) == 1) && 
               mapID() == 200 && 
               byte(0x556096) == 2 && 
               byte(0x556098) == 2 && 
               byte(0x55609A) == 2 && 
               byte(0x55609C) == 2 && 
               byte(0x55609E) == 2 && 
               NoStrongMode() &&
              JobLock("Breaker"))

achievement(
    "[Breaker] - Consider Your Bones, Old Man!", "Face Dr. Cid in Archades", 10,
    trigger = EventID() == 4000 && 
              prior(EventID()) == 3440 && 
              prior(mapID()) == 286 && 
              mapID() == 922 && 
              NoStrongMode() &&
              JobLock("Breaker"))

achievement(
    "[Breaker] - Attain to Your Birth Right!", "Obtain the Treaty Blade", 10,
    trigger = prev(bit4(0x551AB1)) == 0 && 
              bit4(0x551AB1) == 1 && 
              mapID() == 916 && 
              NoStrongMode() &&
              JobLock("Breaker"))

achievement(
    "[Breaker] - Is there a Doctor in the House", "Defeat Dr. CId and Famfrit at the Pharos at Ridorana", 25,
    trigger = mapID() == 668 && 
              EventID() == 5550 && 
              prev(dword(0x9DF884)) > 0 && 
              dword(0x9DF884) == 0 && 
              NoStrongMode() &&
              JobLock("Breaker"))

achievement(
    "[Breaker] - Zodiac Age", "Complete the Game", 50,
    trigger = mapID() == 785 && 
              EventID() == 7100 && 
              prev(dword(0x9DF404)) > 0 && 
              dword(0x9DF404) == 0 && 
              NoStrongMode() &&
              JobLock("Breaker"))
              
              
              
              
achievement(
    "[Archer] - Exit Stage Right", "Obtain the Goddess Magicite", 1, // Vaan & Panelo Only
    trigger = prev(bit4(0x551AB5)) == 0 && 
              bit4(0x551AB5) == 1 && 
              mapID() == 571 && 
              EventID() == 220 && 
              NoStrongMode() &&
              VaanPaneloJobLock("Archer"))

achievement(
    "[Archer] - She Airship Enough For You", "Take a ride in The Strahl for the first time", 1, // Everyone Except Ashe
    trigger = mapID() == 788 && 
              prev(EventID()) == 420 && 
              EventID() == 460 && 
              NoStrongMode() &&
              NoAsheJobLock("Archer"))

achievement(
    "[Archer] - Proof Of Royal Lineage", "Save the Princess of Dalmasca and escape the Leviathan", 5,
    trigger = prev(EventID()) == 1000 && 
              EventID() == 1090 && 
              mapID() == 552 && 
              NoStrongMode() &&
              JobLock("Archer"))

achievement(
    "[Archer] - Power Of Dawn", "Obtain the Dawn Shard...again", 5,
    trigger = prior(bit0(0x551AAF)) == 0 && 
              bit0(0x551AAF) == 1 && 
              mapID() == 867 && 
              prior(mapID()) == 872 && 
              EventID() == 1520 && 
              prior(EventID()) == 1460 && 
              NoStrongMode() &&
              JobLock("Archer"))

achievement(
    "[Archer] - A Pleasent Lie That", "Obtain Lente's Tear", 5,
    trigger = prev(bit7(0x551AB6)) == 0 && 
              bit7(0x551AB6) == 1 && 
              mapID() == 766 && 
              prior(mapID()) == 722 && 
              EventID() == 1900 && 
              prior(EventID()) == 1820 && 
              NoStrongMode() &&
              JobLock("Archer"))

achievement(
    "[Archer] - To Wield Power Againt Power", "Obtain the Sword Of Kings", 5,
    trigger = mapID() == 615 && 
              prev(bit3(0x551AB1)) == 0 && 
              bit3(0x551AB1) == 1 && 
              EventID() == 2200 && 
              NoStrongMode() &&
              JobLock("Archer"))

achievement(
    "[Archer] - Differences Between Our Lands Fades", "See the events of Mt Bur Omiscae", 10,
    trigger = EventID() == 3000 && 
              prior(EventID()) == 2290 && 
              prior(mapID()) == 737 && 
              mapID() == 738 && 
              NoStrongMode() &&
              JobLock("Archer"))

achievement(
    "[Archer] - Mandragoran Royalty", "Defeat the Mandragoras in Sochen Cave Palace", 10,
    trigger = (prev(byte(0x556096)) == 1 || 
               prev(byte(0x556098)) == 1 || 
               prev(byte(0x55609A)) == 1 ||
               prev(byte(0x55609C)) == 1 || 
               prev(byte(0x55609E)) == 1) && 
               mapID() == 200 && 
               byte(0x556096) == 2 && 
               byte(0x556098) == 2 && 
               byte(0x55609A) == 2 && 
               byte(0x55609C) == 2 && 
               byte(0x55609E) == 2 && 
               NoStrongMode() &&
              JobLock("Archer"))

achievement(
    "[Archer] - Consider Your Bones, Old Man!", "Face Dr. Cid in Archades", 10,
    trigger = EventID() == 4000 && 
              prior(EventID()) == 3440 && 
              prior(mapID()) == 286 && 
              mapID() == 922 && 
              NoStrongMode() &&
              JobLock("Archer"))

achievement(
    "[Archer] - Attain to Your Birth Right!", "Obtain the Treaty Blade", 10,
    trigger = prev(bit4(0x551AB1)) == 0 && 
              bit4(0x551AB1) == 1 && 
              mapID() == 916 && 
              NoStrongMode() &&
              JobLock("Archer"))

achievement(
    "[Archer] - Is there a Doctor in the House", "Defeat Dr. CId and Famfrit at the Pharos at Ridorana", 25,
    trigger = mapID() == 668 && 
              EventID() == 5550 && 
              prev(dword(0x9DF884)) > 0 && 
              dword(0x9DF884) == 0 && 
              NoStrongMode() &&
              JobLock("Archer"))

achievement(
    "[Archer] - Zodiac Age", "Complete the Game", 50,
    trigger = mapID() == 785 && 
              EventID() == 7100 && 
              prev(dword(0x9DF404)) > 0 && 
              dword(0x9DF404) == 0 && 
              NoStrongMode() &&
              JobLock("Archer"))
              
              
              
              
              
              
              
              
              
              
              
              
              
achievement(
    "[Black Mage] - Exit Stage Right", "Obtain the Goddess Magicite", 1, // Vaan & Panelo Only
    trigger = prev(bit4(0x551AB5)) == 0 && 
              bit4(0x551AB5) == 1 && 
              mapID() == 571 && 
              EventID() == 220 && 
              NoStrongMode() &&
              VaanPaneloJobLock("Black Mage"))

achievement(
    "[Black Mage] - She Airship Enough For You", "Take a ride in The Strahl for the first time", 1, // Everyone Except Ashe
    trigger = mapID() == 788 && 
              prev(EventID()) == 420 && 
              EventID() == 460 && 
              NoStrongMode() &&
              NoAsheJobLock("Black Mage"))

achievement(
    "[Black Mage] - Proof Of Royal Lineage", "Save the Princess of Dalmasca and escape the Leviathan", 5,
    trigger = prev(EventID()) == 1000 && 
              EventID() == 1090 && 
              mapID() == 552 && 
              NoStrongMode() &&
              JobLock("Black Mage"))

achievement(
    "[Black Mage] - Power Of Dawn", "Obtain the Dawn Shard...again", 5,
    trigger = prior(bit0(0x551AAF)) == 0 && 
              bit0(0x551AAF) == 1 && 
              mapID() == 867 && 
              prior(mapID()) == 872 && 
              EventID() == 1520 && 
              prior(EventID()) == 1460 && 
              NoStrongMode() &&
              JobLock("Black Mage"))

achievement(
    "[Black Mage] - A Pleasent Lie That", "Obtain Lente's Tear", 5,
    trigger = prev(bit7(0x551AB6)) == 0 && 
              bit7(0x551AB6) == 1 && 
              mapID() == 766 && 
              prior(mapID()) == 722 && 
              EventID() == 1900 && 
              prior(EventID()) == 1820 && 
              NoStrongMode() &&
              JobLock("Black Mage"))

achievement(
    "[Black Mage] - To Wield Power Againt Power", "Obtain the Sword Of Kings", 5,
    trigger = mapID() == 615 && 
              prev(bit3(0x551AB1)) == 0 && 
              bit3(0x551AB1) == 1 && 
              EventID() == 2200 && 
              NoStrongMode() &&
              JobLock("Black Mage"))

achievement(
    "[Black Mage] - Differences Between Our Lands Fades", "See the events of Mt Bur Omiscae", 10,
    trigger = EventID() == 3000 && 
              prior(EventID()) == 2290 && 
              prior(mapID()) == 737 && 
              mapID() == 738 && 
              NoStrongMode() &&
              JobLock("Black Mage"))

achievement(
    "[Black Mage] - Mandragoran Royalty", "Defeat the Mandragoras in Sochen Cave Palace", 10,
    trigger = (prev(byte(0x556096)) == 1 || 
               prev(byte(0x556098)) == 1 || 
               prev(byte(0x55609A)) == 1 ||
               prev(byte(0x55609C)) == 1 || 
               prev(byte(0x55609E)) == 1) && 
               mapID() == 200 && 
               byte(0x556096) == 2 && 
               byte(0x556098) == 2 && 
               byte(0x55609A) == 2 && 
               byte(0x55609C) == 2 && 
               byte(0x55609E) == 2 && 
               NoStrongMode() &&
              JobLock("Black Mage"))

achievement(
    "[Black Mage] - Consider Your Bones, Old Man!", "Face Dr. Cid in Archades", 10,
    trigger = EventID() == 4000 && 
              prior(EventID()) == 3440 && 
              prior(mapID()) == 286 && 
              mapID() == 922 && 
              NoStrongMode() &&
              JobLock("Black Mage"))

achievement(
    "[Black Mage] - Attain to Your Birth Right!", "Obtain the Treaty Blade", 10,
    trigger = prev(bit4(0x551AB1)) == 0 && 
              bit4(0x551AB1) == 1 && 
              mapID() == 916 && 
              NoStrongMode() &&
              JobLock("Black Mage"))

achievement(
    "[Black Mage] - Is there a Doctor in the House", "Defeat Dr. CId and Famfrit at the Pharos at Ridorana", 25,
    trigger = mapID() == 668 && 
              EventID() == 5550 && 
              prev(dword(0x9DF884)) > 0 && 
              dword(0x9DF884) == 0 && 
              NoStrongMode() &&
              JobLock("Black Mage"))

achievement(
    "[Black Mage] - Zodiac Age", "Complete the Game", 50,
    trigger = mapID() == 785 && 
              EventID() == 7100 && 
              prev(dword(0x9DF404)) > 0 && 
              dword(0x9DF404) == 0 && 
              NoStrongMode() &&
              JobLock("Black Mage"))
              
              
              
              
              
achievement(
    "[Samurai] - Exit Stage Right", "Obtain the Goddess Magicite", 1, // Vaan & Panelo Only
    trigger = prev(bit4(0x551AB5)) == 0 && 
              bit4(0x551AB5) == 1 && 
              mapID() == 571 && 
              EventID() == 220 && 
              NoStrongMode() &&
              VaanPaneloJobLock("Samurai"))

achievement(
    "[Samurai] - She Airship Enough For You", "Take a ride in The Strahl for the first time", 1, // Everyone Except Ashe
    trigger = mapID() == 788 && 
              prev(EventID()) == 420 && 
              EventID() == 460 && 
              NoStrongMode() &&
              NoAsheJobLock("Samurai"))

achievement(
    "[Samurai] - Proof Of Royal Lineage", "Save the Princess of Dalmasca and escape the Leviathan", 5,
    trigger = prev(EventID()) == 1000 && 
              EventID() == 1090 && 
              mapID() == 552 && 
              NoStrongMode() &&
              JobLock("Samurai"))

achievement(
    "[Samurai] - Power Of Dawn", "Obtain the Dawn Shard...again", 5,
    trigger = prior(bit0(0x551AAF)) == 0 && 
              bit0(0x551AAF) == 1 && 
              mapID() == 867 && 
              prior(mapID()) == 872 && 
              EventID() == 1520 && 
              prior(EventID()) == 1460 && 
              NoStrongMode() &&
              JobLock("Samurai"))

achievement(
    "[Samurai] - A Pleasent Lie That", "Obtain Lente's Tear", 5,
    trigger = prev(bit7(0x551AB6)) == 0 && 
              bit7(0x551AB6) == 1 && 
              mapID() == 766 && 
              prior(mapID()) == 722 && 
              EventID() == 1900 && 
              prior(EventID()) == 1820 && 
              NoStrongMode() &&
              JobLock("Samurai"))

achievement(
    "[Samurai] - To Wield Power Againt Power", "Obtain the Sword Of Kings", 5,
    trigger = mapID() == 615 && 
              prev(bit3(0x551AB1)) == 0 && 
              bit3(0x551AB1) == 1 && 
              EventID() == 2200 && 
              NoStrongMode() &&
              JobLock("Samurai"))

achievement(
    "[Samurai] - Differences Between Our Lands Fades", "See the events of Mt Bur Omiscae", 10,
    trigger = EventID() == 3000 && 
              prior(EventID()) == 2290 && 
              prior(mapID()) == 737 && 
              mapID() == 738 && 
              NoStrongMode() &&
              JobLock("Samurai"))

achievement(
    "[Samurai] - Mandragoran Royalty", "Defeat the Mandragoras in Sochen Cave Palace", 10,
    trigger = (prev(byte(0x556096)) == 1 || 
               prev(byte(0x556098)) == 1 || 
               prev(byte(0x55609A)) == 1 ||
               prev(byte(0x55609C)) == 1 || 
               prev(byte(0x55609E)) == 1) && 
               mapID() == 200 && 
               byte(0x556096) == 2 && 
               byte(0x556098) == 2 && 
               byte(0x55609A) == 2 && 
               byte(0x55609C) == 2 && 
               byte(0x55609E) == 2 && 
               NoStrongMode() &&
              JobLock("Samurai"))

achievement(
    "[Samurai] - Consider Your Bones, Old Man!", "Face Dr. Cid in Archades", 10,
    trigger = EventID() == 4000 && 
              prior(EventID()) == 3440 && 
              prior(mapID()) == 286 && 
              mapID() == 922 && 
              NoStrongMode() &&
              JobLock("Samurai"))

achievement(
    "[Samurai] - Attain to Your Birth Right!", "Obtain the Treaty Blade", 10,
    trigger = prev(bit4(0x551AB1)) == 0 && 
              bit4(0x551AB1) == 1 && 
              mapID() == 916 && 
              NoStrongMode() &&
              JobLock("Samurai"))

achievement(
    "[Samurai] - Is there a Doctor in the House", "Defeat Dr. CId and Famfrit at the Pharos at Ridorana", 25,
    trigger = mapID() == 668 && 
              EventID() == 5550 && 
              prev(dword(0x9DF884)) > 0 && 
              dword(0x9DF884) == 0 && 
              NoStrongMode() &&
              JobLock("Samurai"))

achievement(
    "[Samurai] - Zodiac Age", "Complete the Game", 50,
    trigger = mapID() == 785 && 
              EventID() == 7100 && 
              prev(dword(0x9DF404)) > 0 && 
              dword(0x9DF404) == 0 && 
              NoStrongMode() &&
              JobLock("Samurai"))
              
              
              
              
              
              
              
              
achievement(
    "[Hunter] - Exit Stage Right", "Obtain the Goddess Magicite", 1, // Vaan & Panelo Only
    trigger = prev(bit4(0x551AB5)) == 0 && 
              bit4(0x551AB5) == 1 && 
              mapID() == 571 && 
              EventID() == 220 && 
              NoStrongMode() &&
              VaanPaneloJobLock("Hunter"))

achievement(
    "[Hunter] - She Airship Enough For You", "Take a ride in The Strahl for the first time", 1, // Everyone Except Ashe
    trigger = mapID() == 788 && 
              prev(EventID()) == 420 && 
              EventID() == 460 && 
              NoStrongMode() &&
              NoAsheJobLock("Hunter"))

achievement(
    "[Hunter] - Proof Of Royal Lineage", "Save the Princess of Dalmasca and escape the Leviathan", 5,
    trigger = prev(EventID()) == 1000 && 
              EventID() == 1090 && 
              mapID() == 552 && 
              NoStrongMode() &&
              JobLock("Hunter"))

achievement(
    "[Hunter] - Power Of Dawn", "Obtain the Dawn Shard...again", 5,
    trigger = prior(bit0(0x551AAF)) == 0 && 
              bit0(0x551AAF) == 1 && 
              mapID() == 867 && 
              prior(mapID()) == 872 && 
              EventID() == 1520 && 
              prior(EventID()) == 1460 && 
              NoStrongMode() &&
              JobLock("Hunter"))

achievement(
    "[Hunter] - A Pleasent Lie That", "Obtain Lente's Tear", 5,
    trigger = prev(bit7(0x551AB6)) == 0 && 
              bit7(0x551AB6) == 1 && 
              mapID() == 766 && 
              prior(mapID()) == 722 && 
              EventID() == 1900 && 
              prior(EventID()) == 1820 && 
              NoStrongMode() &&
              JobLock("Hunter"))

achievement(
    "[Hunter] - To Wield Power Againt Power", "Obtain the Sword Of Kings", 5,
    trigger = mapID() == 615 && 
              prev(bit3(0x551AB1)) == 0 && 
              bit3(0x551AB1) == 1 && 
              EventID() == 2200 && 
              NoStrongMode() &&
              JobLock("Hunter"))

achievement(
    "[Hunter] - Differences Between Our Lands Fades", "See the events of Mt Bur Omiscae", 10,
    trigger = EventID() == 3000 && 
              prior(EventID()) == 2290 && 
              prior(mapID()) == 737 && 
              mapID() == 738 && 
              NoStrongMode() &&
              JobLock("Hunter"))

achievement(
    "[Hunter] - Mandragoran Royalty", "Defeat the Mandragoras in Sochen Cave Palace", 10,
    trigger = (prev(byte(0x556096)) == 1 || 
               prev(byte(0x556098)) == 1 || 
               prev(byte(0x55609A)) == 1 ||
               prev(byte(0x55609C)) == 1 || 
               prev(byte(0x55609E)) == 1) && 
               mapID() == 200 && 
               byte(0x556096) == 2 && 
               byte(0x556098) == 2 && 
               byte(0x55609A) == 2 && 
               byte(0x55609C) == 2 && 
               byte(0x55609E) == 2 && 
               NoStrongMode() &&
              JobLock("Hunter"))

achievement(
    "[Hunter] - Consider Your Bones, Old Man!", "Face Dr. Cid in Archades", 10,
    trigger = EventID() == 4000 && 
              prior(EventID()) == 3440 && 
              prior(mapID()) == 286 && 
              mapID() == 922 && 
              NoStrongMode() &&
              JobLock("Hunter"))

achievement(
    "[Hunter] - Attain to Your Birth Right!", "Obtain the Treaty Blade", 10,
    trigger = prev(bit4(0x551AB1)) == 0 && 
              bit4(0x551AB1) == 1 && 
              mapID() == 916 && 
              NoStrongMode() &&
              JobLock("Hunter"))

achievement(
    "[Hunter] - Is there a Doctor in the House", "Defeat Dr. CId and Famfrit at the Pharos at Ridorana", 25,
    trigger = mapID() == 668 && 
              EventID() == 5550 && 
              prev(dword(0x9DF884)) > 0 && 
              dword(0x9DF884) == 0 && 
              NoStrongMode() &&
              JobLock("Hunter"))

achievement(
    "[Hunter] - Zodiac Age", "Complete the Game", 50,
    trigger = mapID() == 785 && 
              EventID() == 7100 && 
              prev(dword(0x9DF404)) > 0 && 
              dword(0x9DF404) == 0 && 
              NoStrongMode() &&
              JobLock("Hunter"))