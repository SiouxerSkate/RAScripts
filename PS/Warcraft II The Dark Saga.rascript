// Warcraft II: The Dark Saga
// #ID = 11147


achievement(
    title = "Unto The Breach", points = 10,
    description = "Kill all enemies and destroy all buildings Beyond Dark Portal human mission 3",
    id = 122253, badge = "123675", published = "8/19/2020 8:37:51 PM", modified = "6/27/2023 9:02:56 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032D) == 0 && (prev(byte(0x099614)) + prev(byte(0x099354)) +
               prev(byte(0x09935C)) + prev(byte(0x09961C)) + prev(byte(0x09935A)) + prev(byte(0x09961A))) <= 0 && 
              (byte(0x099614) + byte(0x099354) + byte(0x09935C) + byte(0x09961C) + byte(0x09935A) + byte(0x09961A)) == 0 && 
              unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) &&
              (always_false() || (never(byte(0x010322) != 32) && never(prev(byte(0x160DD0)) == 1)))
)


achievement(
    title = "Wizard Needs Food Badly!", points = 25,
    description = "Finish Guantlet Scenario with default settings",
    id = 122479, badge = "134514", published = "8/21/2020 9:43:23 PM", modified = "6/27/2023 9:02:58 PM",
    trigger = unless(byte(0x01032D) != 1) && unless(byte(0x160DC0) != 1) && byte(0x01032B) == 0 && byte(0x09935E) == 0 && 
              byte(0x09961E) == 0 && byte(0x146800) == 0 && byte(0x146920) == 0 && byte(0x146A70) == 0 && byte(0x146D70)
               == 0 && unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) - prev(dword(0x010208))) ==
               5000)) &&
              (always_false() || (never(byte(0x010322) != 80) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Tomb of Sargeras", points = 10,
    description = "Kill all enemy units and destroy all enemy buildings in Beyond Dark Portal orcs mission 9",
    id = 123409, badge = "123680", published = "8/27/2020 7:12:41 PM", modified = "6/27/2023 9:02:58 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032D) == 0 && byte(0x099616) == 0 && byte(0x099618) == 0 && 
              byte(0x09961A) == 0 && byte(0x099620) == 0 && byte(0x099356) == 0 && byte(0x099358) == 0 && byte(0x09935A)
               <= 2 && byte(0x099360) == 0 && unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) -
               prev(dword(0x010208))) == 5000)) &&
              (always_false() || (never(byte(0x010322) != 45) && never(prev(byte(0x160DD0)) == 1)))
)


achievement(
    title = "Gold Production", points = 5,
    description = "Collect 10000 gold in a match.",
    id = 113297, badge = "123683", published = "6/7/2020 8:15:12 PM", modified = "8/14/2020 1:49:48 AM",
    trigger = never(byte(0x160DC0) != 1) && byte(0x160DD0) == 0 && unless(once(word(0x160314) != 0)) && 
              unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) &&
              ((word(0x0101C8) >= 10000 && byte(0x01032B) == 0) ||
               (word(0x0101C4) >= 10000 && byte(0x01032B) == 1))
)

achievement(
    title = "Lumber Production", points = 5,
    description = "Collect 5000  lumber in a match.",
    id = 113298, badge = "123684", published = "6/7/2020 8:15:15 PM", modified = "8/14/2020 1:50:04 AM",
    trigger = never(byte(0x160DC0) != 1) && byte(0x160DD0) == 0 && unless(once(word(0x160314) != 0)) && 
              unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) &&
              ((word(0x010188) >= 5000 && byte(0x01032B) == 0) ||
               (word(0x010184) >= 5000 && byte(0x01032B) == 1))
)

achievement(
    title = "Oil Production", points = 5,
    description = "Collect 10000 oil in a match.",
    id = 117543, badge = "128527", published = "7/13/2020 2:10:34 PM", modified = "8/14/2020 1:48:58 AM",
    trigger = never(byte(0x160DC0) != 1) && byte(0x160DD0) == 0 && unless(once(word(0x160314) != 0)) && 
              unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) &&
              ((word(0x010208) >= 10000 && byte(0x01032B) == 0) ||
               (word(0x010204) >= 10000 && byte(0x01032B) == 1))
)

achievement(
    title = "Human Victory", points = 10,
    description = "Win custom scenario with humans and kill all enemies.",
    id = 113299, badge = "123686", published = "6/7/2020 8:15:18 PM", modified = "11/19/2022 8:24:57 PM",
    trigger = unless(byte(0x01032B) != 0) && trigger_when((byte(0x099356) + byte(0x099358) + byte(0x09935A) +
               byte(0x09935C) + byte(0x09935E) + byte(0x099360) + byte(0x099362)) == 0) && trigger_when((byte(0x099616)
               + byte(0x099618) + byte(0x09961A) + byte(0x09961C) + byte(0x09961E) + byte(0x099620) + byte(0x099622)) ==
               0) && byte(0x161B4C) >= 1 && unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) -
               prev(dword(0x010208))) == 5000)) && byte(0x160DC0) == 1 &&
              ((never(byte(0x01032D) != 1) && never(prev(byte(0x160DD0)) == 1)) ||
               ((prev(byte(0x099356)) + prev(byte(0x099358)) + prev(byte(0x09935A)) + prev(byte(0x09935C)) +
                 prev(byte(0x09935E)) + prev(byte(0x099360)) + prev(byte(0x099362))) > 0) ||
               ((prev(byte(0x099616)) + prev(byte(0x099618)) + prev(byte(0x09961A)) + prev(byte(0x09961C)) +
                 prev(byte(0x09961E)) + prev(byte(0x099620)) + prev(byte(0x099622))) > 0))
)

achievement(
    title = "Orc Victory", points = 10,
    description = "Win custom scenario with orcs. Kill all enemies and raze all building.(In One session - no save loading)",
    id = 113300, badge = "123688", published = "6/7/2020 8:15:21 PM", modified = "11/19/2022 8:24:59 PM",
    trigger = unless(byte(0x01032B) != 1) && trigger_when((byte(0x099356) + byte(0x099358) + byte(0x09935A) +
               byte(0x09935C) + byte(0x09935E) + byte(0x099360) + byte(0x099362)) == 0) && trigger_when((byte(0x099616)
               + byte(0x099618) + byte(0x09961A) + byte(0x09961C) + byte(0x09961E) + byte(0x099620) + byte(0x099622)) ==
               0) && byte(0x161B4C) >= 1 && unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) -
               prev(dword(0x010208))) == 5000)) && byte(0x160DC0) == 1 &&
              ((never(byte(0x01032D) != 1) && never(prev(byte(0x160DD0)) == 1)) ||
               ((prev(byte(0x099356)) + prev(byte(0x099358)) + prev(byte(0x09935A)) + prev(byte(0x09935C)) +
                 prev(byte(0x09935E)) + prev(byte(0x099360)) + prev(byte(0x099362))) > 0) ||
               ((prev(byte(0x099616)) + prev(byte(0x099618)) + prev(byte(0x09961A)) + prev(byte(0x09961C)) +
                 prev(byte(0x09961E)) + prev(byte(0x099620)) + prev(byte(0x099622))) > 0))
)

achievement(
    title = "Human Conquest", points = 25,
    description = "Win custom scenario with humans against 4 or more opponents.(In One Session)",
    id = 113301, badge = "123687", published = "6/7/2020 8:15:24 PM", modified = "11/19/2022 8:24:58 PM",
    trigger = unless(byte(0x01032B) != 0) && trigger_when((byte(0x099356) + byte(0x099358) + byte(0x09935A) +
               byte(0x09935C) + byte(0x09935E) + byte(0x099360) + byte(0x099362)) == 0) && trigger_when((byte(0x099616)
               + byte(0x099618) + byte(0x09961A) + byte(0x09961C) + byte(0x09961E) + byte(0x099620) + byte(0x099622)) ==
               0) && byte(0x161B4C) >= 4 && unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) -
               prev(dword(0x010208))) == 5000)) && byte(0x160DC0) == 1 &&
              ((never(byte(0x01032D) != 1) && never(prev(byte(0x160DD0)) == 1)) ||
               ((prev(byte(0x099356)) + prev(byte(0x099358)) + prev(byte(0x09935A)) + prev(byte(0x09935C)) +
                 prev(byte(0x09935E)) + prev(byte(0x099360)) + prev(byte(0x099362))) > 0) ||
               ((prev(byte(0x099616)) + prev(byte(0x099618)) + prev(byte(0x09961A)) + prev(byte(0x09961C)) +
                 prev(byte(0x09961E)) + prev(byte(0x099620)) + prev(byte(0x099622))) > 0))
)

achievement(
    title = "Orc Conquest", points = 25,
    description = "Win custom scenario with orcs against 4 opponents.Kill all enemies and Raze all building. (In One session - no save loading)",
    id = 113302, badge = "123689", published = "6/7/2020 8:15:26 PM", modified = "11/19/2022 8:24:59 PM",
    trigger = unless(byte(0x01032B) != 1) && trigger_when((byte(0x099356) + byte(0x099358) + byte(0x09935A) +
               byte(0x09935C) + byte(0x09935E) + byte(0x099360) + byte(0x099362)) == 0) && trigger_when((byte(0x099616)
               + byte(0x099618) + byte(0x09961A) + byte(0x09961C) + byte(0x09961E) + byte(0x099620) + byte(0x099622)) ==
               0) && byte(0x161B4C) >= 4 && unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) -
               prev(dword(0x010208))) == 5000)) && byte(0x160DC0) == 1 &&
              ((never(byte(0x01032D) != 1) && never(prev(byte(0x160DD0)) == 1)) ||
               ((prev(byte(0x099356)) + prev(byte(0x099358)) + prev(byte(0x09935A)) + prev(byte(0x09935C)) +
                 prev(byte(0x09935E)) + prev(byte(0x099360)) + prev(byte(0x099362))) > 0) ||
               ((prev(byte(0x099616)) + prev(byte(0x099618)) + prev(byte(0x09961A)) + prev(byte(0x09961C)) +
                 prev(byte(0x09961E)) + prev(byte(0x099620)) + prev(byte(0x099622))) > 0))
)

achievement(
    title = "Ready To Serve", points = 10,
    description = "Complete Tides of Darkness Human mission 4 without building a barracks",
    id = 122478, badge = "134509", published = "8/21/2020 8:57:22 PM", modified = "6/27/2023 9:03:06 PM",
    trigger = byte(0x01032B) == 0 && byte(0x01032D) == 0 && trigger_when(byte(0x099354) == 0) && 
              trigger_when(byte(0x099614) == 0) && unless(once(byte(0x099416) > 0)) && unless(once(word(0x160314) != 0)) && 
              unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) &&
              (always_false() || (never(byte(0x010322) != 6) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Ambush at Tarren Mill", points = 5,
    description = "Kill all enemy units Tides of Darkness humans mission 2 without losing a unit",
    id = 114028, badge = "133347", published = "6/14/2020 4:44:01 PM", modified = "6/27/2023 9:03:06 PM",
    trigger = unless(byte(0x160DC0) != 1) && trigger_when(byte(0x01032D) == 0) && trigger_when(byte(0x099614) == 0) && 
              unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) && 
              unless(once(byte(0x099616) < prev(byte(0x099616)))) &&
              (always_false() || (never(byte(0x010322) != 2) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Foot The Bill", points = 5,
    description = "Complete Tides of Darkness Human Mission 6 only building Footmen(Peasents and Flying Machine OK, NO Ranger upgrade)",
    id = 121886, badge = "133469", published = "8/15/2020 1:45:26 PM", modified = "6/27/2023 9:03:07 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032D) == 0 && trigger_when(byte(0x09961E) == 0) && 
              trigger_when(byte(0x09935E) == 0) && unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) -
               prev(dword(0x010208))) == 5000)) && unless(once(byte(0x099656) > 0)) && unless(once(byte(0x099676) > 0)) && 
              unless(once(byte(0x099696) > 1)) && unless(once(byte(0x0996B6) > 1)) && unless(once(byte(0x099696) >
               prev(byte(0x099696)))) && unless(once(byte(0x0996B6) > prev(byte(0x0996B6)))) &&
              (always_false() || (never(byte(0x010322) != 10) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Battle of Tol Barad", points = 5,
    description = "Kill al enemy units Tides of Darkness humans mission 5",
    id = 114029, badge = "133343", published = "6/14/2020 4:44:04 PM", modified = "6/27/2023 9:03:08 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032D) == 0 && (prev(byte(0x099614)) + prev(byte(0x09961E))) > 0 && 
              (byte(0x099614) + byte(0x09961E)) == 0 && unless(once(word(0x160314) != 0)) && 
              unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) &&
              (always_false() || (never(byte(0x010322) != 8) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Battle of Darrowmere", points = 5,
    description = "Kill all enemy units Tides of Darkness humans mission 9",
    id = 114030, badge = "133341", published = "6/14/2020 4:44:08 PM", modified = "6/27/2023 9:03:07 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032D) == 0 && prev(byte(0x099616)) > 0 && byte(0x099616) == 0 && 
              unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) &&
              (always_false() || (never(byte(0x010322) != 16) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Home On The Range", points = 5,
    description = "Kill all enemies and destroy all building in Tides Human Mission 10 only building Archers- Rangers(Peasents, Ships, Flying OK)",
    id = 121887, badge = "133470", published = "8/15/2020 1:45:32 PM", modified = "6/27/2023 9:03:08 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032D) == 0 && (prev(byte(0x099614)) + prev(byte(0x099616)) +
               prev(byte(0x099354)) + prev(byte(0x099356))) > 0 && trigger_when((byte(0x099614) + byte(0x099616) +
               byte(0x099354) + byte(0x099356)) == 0) && unless(once(word(0x160314) != 0)) && 
              unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) && unless(once(byte(0x099640) > 6)) && 
              unless(once(byte(0x0996A0) > 0)) && unless(once(byte(0x0996C0) > 0)) && unless(once(byte(0x099640) >
               prev(byte(0x099640)))) &&
              (always_false() || (never(byte(0x010322) != 18) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Battle of Crestfall", points = 10,
    description = "Kill all  enemy units Tides of Darkness humans mission 12",
    id = 114031, badge = "133342", published = "6/14/2020 4:44:11 PM", modified = "6/27/2023 9:03:08 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032D) == 0 && prev(byte(0x099614)) > 0 && byte(0x099614) == 0 && 
              unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) &&
              (always_false() || (never(byte(0x010322) != 22) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "They Came From the Skies", points = 25,
    description = "Complete Tides Of Darkness Human Mission 13 building only Griffon Riders(Peasents, Ships, Flying Machine OK, NO Ranger upgrade)",
    id = 122019, badge = "133831", published = "8/17/2020 1:01:54 AM", modified = "6/27/2023 9:03:09 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032D) == 0 && (prev(byte(0x099614)) + prev(byte(0x09961C)) +
               prev(byte(0x099354)) + prev(byte(0x09935C))) > 0 && trigger_when((byte(0x099614) + byte(0x09961C) +
               byte(0x099354) + byte(0x09935C)) == 0) && unless(once(word(0x160314) != 0)) && 
              unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) && unless(once(byte(0x099636) > 1)) && 
              unless(once(byte(0x099656) > 2)) && unless(once(byte(0x099676) > 0)) && unless(once(byte(0x099696) > 4)) && 
              unless(once(byte(0x0996B6) > 1)) && unless(once(byte(0x099796) > 1)) && unless(once(byte(0x099816) > 1)) && 
              unless(once(byte(0x099636) > prev(byte(0x099636)))) && unless(once(byte(0x099656) > prev(byte(0x099656)))) && 
              unless(once(byte(0x099696) > prev(byte(0x099696)))) && unless(once(byte(0x0996B6) > prev(byte(0x0996B6)))) && 
              unless(once(byte(0x099796) > prev(byte(0x099796)))) && unless(once(byte(0x099816) > prev(byte(0x099816)))) &&
              (always_false() || (never(byte(0x010322) != 24) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Allerias Journey", points = 5,
    description = "Kill all  enemy units The Dark Portal humans mission 1",
    id = 114036, badge = "124529", published = "6/14/2020 4:44:27 PM", modified = "6/27/2023 9:03:09 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032D) == 0 && prev(byte(0x09961C)) > 0 && byte(0x09961C) == 0 && 
              unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) &&
              (always_false() || (never(byte(0x010322) != 28) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "A Knight's Tale", points = 25,
    description = "Complete Beyond The Dark Portal Human Mission 2 only building Knights(Peasents and Flying Machines OK, NO Ranger Upgrade)",
    id = 122111, badge = "133996", published = "8/18/2020 12:58:21 PM", modified = "6/27/2023 9:03:09 PM",
    trigger = unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) && 
              byte(0x01032D) == 0 && (prev(byte(0x099354)) + prev(byte(0x09935E)) + prev(byte(0x099362)) +
               prev(byte(0x099614)) + prev(byte(0x099622)) + prev(byte(0x09961E))) > 0 && trigger_when((byte(0x099354) +
               byte(0x09935E) + byte(0x099362) + byte(0x099614) + byte(0x099622) + byte(0x09961E)) == 0) && 
              unless(once(byte(0x099636) > prev(byte(0x099636)))) && unless(once(byte(0x099656) > prev(byte(0x099656)))) && 
              unless(once(byte(0x0996B6) > prev(byte(0x0996B6)))) && unless(once(byte(0x099796) > prev(byte(0x099796)))) && 
              unless(byte(0x099636) > 4) && unless(once(byte(0x099656) > 4)) && unless(once(byte(0x099676) > 0)) && 
              unless(once(byte(0x0996B6) > 1)) && unless(once(byte(0x099796) > 1)) && unless(once(byte(0x099816) > 0)) &&
              (always_false() || (never(byte(0x010322) != 30) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Wizard Fight", points = 25,
    description = "Complete Beyond the Dark Portal Human Mission 4 only building Wizards(Peasents, Flying Machines OK)(NO Ranger upgrade)",
    id = 122477, badge = "134502", published = "8/21/2020 7:49:20 PM", modified = "6/27/2023 9:03:10 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032D) == 0 && (prev(byte(0x099354)) + prev(byte(0x099614)) +
               prev(byte(0x09935E)) + prev(byte(0x09961E)) + prev(byte(0x099360)) + prev(byte(0x099620)) +
               prev(byte(0x099362)) + prev(byte(0x099622))) > 0 && trigger_when((byte(0x099354) + byte(0x099614) +
               byte(0x09935E) + byte(0x09961E) + byte(0x099360) + byte(0x099620) + byte(0x099362) + byte(0x099622)) ==
               0) && unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) - prev(dword(0x010208))) ==
               5000)) && unless(once(byte(0x099636) > 12)) && unless(once(byte(0x099656) > 6)) && 
              unless(once(byte(0x099676) > 0)) && unless(once(byte(0x099696) > 4)) && unless(once(byte(0x0996B6) > 2)) && 
              unless(once(byte(0x099776) > 1)) && unless(once(byte(0x099796) > 2)) && unless(once(byte(0x099636) >
               prev(byte(0x099636)))) && unless(once(byte(0x099656) > prev(byte(0x099656)))) && 
              unless(once(byte(0x099696) > prev(byte(0x099696)))) && unless(once(byte(0x0996B6) > prev(byte(0x0996B6)))) && 
              unless(once(byte(0x099776) > prev(byte(0x099776)))) && unless(once(byte(0x099796) > prev(byte(0x099796)))) &&
              (always_false() || (never(byte(0x010322) != 34) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Upon the Shadowed Sea", points = 5,
    description = "Kill all enemy units and destroy all enemy building in Beyond the Dark Portal Human Mission 5",
    id = 122487, badge = "124530", published = "8/22/2020 1:34:31 AM", modified = "6/27/2023 9:03:10 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032D) == 0 && (prev(byte(0x099358)) + prev(byte(0x099618)) +
               prev(byte(0x09935A)) + prev(byte(0x09961A)) + prev(byte(0x09935C)) + prev(byte(0x09961C)) +
               prev(byte(0x099362)) + prev(byte(0x099622))) > 0 && (byte(0x099358) + byte(0x099618) + byte(0x09935A) +
               byte(0x09961A) + byte(0x09935C) + byte(0x09961C) + byte(0x099362) + byte(0x099622)) == 0 && 
              unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) &&
              (always_false() || (never(byte(0x010322) != 36) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Coast of Bones", points = 5,
    description = "Kill all  enemy units The Dark Portal humans mission 8",
    id = 114038, badge = "124531", published = "6/14/2020 4:44:33 PM", modified = "6/27/2023 9:03:11 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032D) == 0 && (prev(byte(0x099622)) + prev(byte(0x09961A)) +
               prev(byte(0x099620))) > 0 && (byte(0x099622) + byte(0x09961A) + byte(0x099620)) == 0 && 
              unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) &&
              (always_false() || (never(byte(0x010322) != 42) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Siege of Vanguard", points = 10,
    description = "Kill all  enemy units and destroy all buildings in The Dark Portal humans mission 10",
    id = 114039, badge = "124532", published = "6/14/2020 4:44:35 PM", modified = "6/27/2023 9:03:10 PM",
    trigger = byte(0x01032D) == 0 && (prev(byte(0x099358)) + prev(byte(0x099618)) + prev(byte(0x09935A)) +
               prev(byte(0x09961A)) + prev(byte(0x099360)) + prev(byte(0x099620))) > 0 && (byte(0x099358) +
               byte(0x099618) + byte(0x09935A) + byte(0x09961A) + byte(0x099360) + byte(0x099620)) == 0 && 
              unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) &&
              (always_false() || (never(byte(0x010322) != 46) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Ready To Work", points = 10,
    description = "Complete Tides of Darkness Orc Mission 4 without building a barracks",
    id = 121620, badge = "133333", published = "8/13/2020 1:56:34 AM", modified = "6/27/2023 9:03:11 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032B) == 1 && byte(0x01032D) == 0 && (prev(byte(0x099356)) +
               prev(byte(0x099616))) > 0 && trigger_when((byte(0x099356) + byte(0x099616)) == 0) && 
              unless(once(byte(0x099414) >= 1)) && unless(once(word(0x160314) != 0)) && unless(once((dword(0x010204) -
               prev(dword(0x010204))) == 5000)) &&
              (always_false() || (never(byte(0x010322) != 7) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Raid of Hillsbrand", points = 5,
    description = "Kill all enemy units Tides of Darkness orcs mission 2 without losing a unit",
    id = 114032, badge = "133346", published = "6/14/2020 4:44:14 PM", modified = "6/27/2023 9:03:12 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032D) == 0 && prev(byte(0x099616)) > 0 && 
              trigger_when(byte(0x099616) == 0) && unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) -
               prev(dword(0x010208))) == 5000)) && unless(once(byte(0x099614) < prev(byte(0x099614)))) &&
              (always_false() || (never(byte(0x010322) != 3) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Battle of Badlands", points = 5,
    description = "Kill all enemy units Tides of Darkness orcs mission 6",
    id = 114033, badge = "128526", published = "6/14/2020 4:44:17 PM", modified = "6/27/2023 9:03:12 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032D) == 0 && prev(byte(0x099614)) > 0 && byte(0x099614) == 0 && 
              unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) &&
              (always_false() || (never(byte(0x010322) != 11) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Into the Badlands", points = 10,
    description = "Complete Tides of Darkness Orcs mission 6 without losing a unit",
    id = 121634, badge = "133338", published = "8/13/2020 2:44:12 PM", modified = "6/27/2023 9:03:12 PM",
    trigger = prev(byte(0x160AF8)) == 0 && trigger_when(byte(0x160AF8) == 1) && byte(0x01032B) == 1 && byte(0x01032D) ==
               0 && unless(once(word(0x160314) != 0)) && unless(once((dword(0x010204) - prev(dword(0x010204))) == 5000)) && 
              never(byte(0x09961E) < 23) &&
              (always_false() || (never(byte(0x010322) != 11) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Doing All The Grunt Work", points = 10,
    description = "Complete Tides Of Darkness Orc Mission 10 only building Grunts(Peons, Ships, and Zeppelins OK, NO Berserker Upgrade)",
    id = 121621, badge = "133335", published = "8/13/2020 1:56:39 AM", modified = "6/27/2023 9:03:13 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032B) == 1 && byte(0x01032D) == 0 && (prev(byte(0x099356)) +
               prev(byte(0x099616))) > 0 && trigger_when((byte(0x099356) + byte(0x099616)) == 0) && 
              unless(once(word(0x160314) != 0)) && unless(once((dword(0x010204) - prev(dword(0x010204))) == 5000)) && 
              unless(once(byte(0x099654) > prev(byte(0x099654)))) && unless(once(byte(0x099694) > prev(byte(0x099694)))) && 
              unless(once(byte(0x0996B4) > prev(byte(0x0996B4)))) && unless(once(byte(0x099794) > prev(byte(0x099794)))) && 
              unless(once(byte(0x099654) > 4)) && unless(once(byte(0x099694) > 5)) && unless(once(byte(0x0996B4) > 1)) && 
              unless(once(byte(0x099794) > 4)) &&
              (always_false() || (never(byte(0x010322) != 19) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Going Berserker", points = 10,
    description = "Complete Tides Of Darkness Orc Mission 12 only building Troll Axe Throwers or Berserkers(Peons, Ships, and Zeppelins OK)",
    id = 121622, badge = "133336", published = "8/13/2020 1:56:43 AM", modified = "6/27/2023 9:03:13 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032D) == 0 && (prev(byte(0x099356)) + prev(byte(0x09935A)) +
               prev(byte(0x099616)) + prev(byte(0x09961A))) > 0 && trigger_when((byte(0x099356) + byte(0x09935A) +
               byte(0x099616) + byte(0x09961A)) == 0) && unless(once(word(0x160314) != 0)) && 
              unless(once((dword(0x010204) - prev(dword(0x010204))) == 5000)) && unless(once(byte(0x099694) >
               prev(byte(0x099694)))) && unless(once(byte(0x0996B4) > prev(byte(0x0996B4)))) && 
              unless(once(byte(0x099794) > prev(byte(0x099794)))) && unless(once(byte(0x099634) > 0)) && 
              unless(once(byte(0x099694) > 5)) && unless(once(byte(0x0996B4) > 3)) && unless(once(byte(0x099814) > 0)) && 
              unless(once(byte(0x099794) > 5)) &&
              (always_false() || (never(byte(0x010322) != 23) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Dragon Force", points = 25,
    description = "Complete Tides Of Darkness Orc Mission 13 only building Dragons(Peons, Zeppelins, Ships OK)(Alowed 8 Axethrowers or Berserkers)",
    id = 121623, badge = "133334", published = "8/13/2020 1:56:49 AM", modified = "6/27/2023 9:03:13 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032B) == 1 && byte(0x01032D) == 0 && (prev(byte(0x09935A)) +
               prev(byte(0x09961A))) > 0 && trigger_when((byte(0x09935A) + byte(0x09961A)) == 0) && 
              unless(once(word(0x160314) != 0)) && unless(once((dword(0x010204) - prev(dword(0x010204))) == 5000)) && 
              unless(once(byte(0x099694) > prev(byte(0x099694)))) && unless(once(byte(0x0996B4) > prev(byte(0x0996B4)))) && 
              unless(once(byte(0x099794) > prev(byte(0x099794)))) && unless(once(byte(0x099814) > prev(byte(0x099814)))) && 
              unless(once(byte(0x099634) > 4)) && unless(once(byte(0x099694) > 4)) && unless(once(byte(0x0996B4) > 1)) && 
              unless(once(byte(0x099814) > 1)) && unless(once(byte(0x099794) > 2)) && unless(once(byte(0x099654) > 8)) && 
              unless(once(byte(0x099674) > 8)) &&
              (always_false() || (never(byte(0x010322) != 25) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Slayer of Shadowmoon", points = 5,
    description = "Kill all  enemy units The Dark Portal orcs mission 1",
    id = 114040, badge = "124533", published = "6/14/2020 4:44:39 PM", modified = "6/27/2023 9:03:13 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032D) == 0 && prev(byte(0x099620)) > 0 && byte(0x099620) == 0 && 
              unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) &&
              (always_false() || (never(byte(0x010322) != 29) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Till Death Do Us Part", points = 10,
    description = "Complete Beyond The Dark Portal Orc Mission 2 only building Death Knights(Peons and Zeppelins OK, NO Berserker Upgrade)",
    id = 121633, badge = "133339", published = "8/13/2020 2:06:48 PM", modified = "6/27/2023 9:03:14 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032B) == 1 && byte(0x01032D) == 0 && (prev(byte(0x099358)) +
               prev(byte(0x099618))) > 0 && trigger_when((byte(0x099358) + byte(0x099618)) == 0) && 
              unless(once(word(0x160314) != 0)) && unless(once((dword(0x010204) - prev(dword(0x010204))) == 5000)) && 
              unless(once(byte(0x09963E) > 4)) && unless(once(byte(0x09965E) > 5)) && unless(once(byte(0x09967E) > 0)) && 
              unless(once(byte(0x09969E) > 0)) && unless(once(byte(0x0996BE) > 0)) && unless(once(byte(0x09979E) > 0)) &&
              (always_false() || (never(byte(0x010322) != 31) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Good Olde Fashioned Ogre Battle", points = 25,
    description = "Complete Beyond The Dark Portal Orc Mission 4 only building Ogres(Peons and Zeppelins OK, NO Berserker upgrade)",
    id = 121624, badge = "133340", published = "8/13/2020 1:56:53 AM", modified = "6/27/2023 9:03:14 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032B) == 1 && byte(0x01032D) == 0 && (prev(byte(0x099356)) +
               prev(byte(0x09935A)) + prev(byte(0x099358)) + prev(byte(0x099616)) + prev(byte(0x099618)) +
               prev(byte(0x09961A))) > 0 && trigger_when((byte(0x099356) + byte(0x09935A) + byte(0x099358) +
               byte(0x099616) + byte(0x099618) + byte(0x09961A)) == 0) && unless(once(word(0x160314) != 0)) && 
              unless(once((dword(0x010204) - prev(dword(0x010204))) == 5000)) && unless(once(byte(0x09963E) >
               prev(byte(0x09963E)))) && unless(once(byte(0x09965E) > prev(byte(0x09965E)))) && 
              unless(once(byte(0x0996BE) > prev(byte(0x0996BE)))) && unless(once(byte(0x09963E) > 4)) && 
              unless(once(byte(0x09965E) > 9)) && unless(once(byte(0x09967E) > 0)) && unless(once(byte(0x0996BE) > 3)) && 
              unless(once(byte(0x09979E) > 0)) && unless(once(byte(0x09981E) > 0)) &&
              (always_false() || (never(byte(0x010322) != 35) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Dragons Of Blackrock Spire", points = 5,
    description = "Kill all enemy units and destroy all enemy buildings in The Dark Portal orcs mission 5",
    id = 122486, badge = "124535", published = "8/22/2020 1:26:16 AM", modified = "6/27/2023 9:03:15 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032D) == 0 && (prev(byte(0x099356)) + prev(byte(0x09935A)) +
               prev(byte(0x099616)) + prev(byte(0x09961A))) > 0 && (byte(0x099356) + byte(0x09935A) + byte(0x099616) +
               byte(0x09961A)) == 0 && unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) -
               prev(dword(0x010208))) == 5000)) &&
              (always_false() || (never(byte(0x010322) != 37) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Assault on Kul Tiras", points = 5,
    description = "Kill all  enemy units and destroy all buildings The Dark Portal orcs mission 8",
    id = 114042, badge = "124534", published = "6/14/2020 4:44:45 PM", modified = "6/27/2023 9:03:15 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032D) == 0 && (prev(byte(0x099618)) + prev(byte(0x099620)) +
               prev(byte(0x099358))) > 0 && (byte(0x099618) + byte(0x099620) + byte(0x099358)) == 0 && 
              unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) &&
              (always_false() || (never(byte(0x010322) != 43) && never(prev(byte(0x160DD0)) == 1)))
)

achievement(
    title = "Battle of Alterac", points = 10,
    description = "Kill all  enemy units The Dark Portal orcs mission 10",
    id = 114043, badge = "124536", published = "6/14/2020 4:44:47 PM", modified = "6/27/2023 9:03:15 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032D) == 0 && (prev(byte(0x099358)) + prev(byte(0x099618)) +
               prev(byte(0x099354)) + prev(byte(0x099614)) + prev(byte(0x099620)) + prev(byte(0x099360))) > 0 && 
              (byte(0x099358) + byte(0x099618) + byte(0x099354) + byte(0x099614) + byte(0x099620) + byte(0x099360)) == 0 && 
              unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) &&
              (always_false() || (never(byte(0x010322) != 47) && never(prev(byte(0x160DD0)) == 1)))
)


achievement(
    title = "Destruction of Stratholme", points = 5,
    description = "Kill all enemy units Tides of Darkness orcs mission 10",
    id = 114034, badge = "133344", published = "6/14/2020 4:44:20 PM", modified = "8/14/2020 9:32:54 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032D) == 0 && byte(0x099616) == 0 && unless(once(word(0x160314) !=
               0)) && unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) &&
              (always_false() || (never(byte(0x010322) != 19)))
)

achievement(
    title = "Siege of Dalaran", points = 10,
    description = "Kill all enemy units Tides of Darkness orcs mission 13",
    id = 114035, badge = "133345", published = "6/14/2020 4:44:24 PM", modified = "8/14/2020 9:34:00 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032D) == 0 && byte(0x09961A) == 0 && unless(once(word(0x160314) !=
               0)) && unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) &&
              (always_false() || (never(byte(0x010322) != 25)))
)

achievement(
    title = "Beyond Dark Portal", points = 5,
    description = "Kill all  enemy units The Dark Portal humans mission 4",
    id = 114037, badge = "124530", published = "6/14/2020 4:44:30 PM", modified = "8/14/2020 5:16:14 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032D) == 0 && byte(0x099614) == 0 && unless(once(word(0x160314) !=
               0)) && unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) &&
              (always_false() || (never(byte(0x010322) != 34)))
)

achievement(
    title = "Rift Awakened", points = 5,
    description = "Kill all  enemy units The Dark Portal orcs mission 4",
    id = 114041, badge = "124535", published = "6/14/2020 4:44:41 PM", modified = "8/14/2020 5:20:22 PM",
    trigger = unless(byte(0x160DC0) != 1) && byte(0x01032D) == 0 && byte(0x099616) == 0 && byte(0x099620) == 0 && 
              unless(once(word(0x160314) != 0)) && unless(once((dword(0x010208) - prev(dword(0x010208))) == 5000)) &&
              (always_false() || (never(byte(0x010322) != 35)))
)



///Functions
//repeated(X, byte(address) == N && prev(byte(address) != N))


function Victory() => prev(byte(0x160af8)) == 0 && byte(0x160af8) == 1
function Campaign() => byte(0x01032d) == 0
function CheatsLock() => disable_when(prev(byte(0x160dc0)) == 1 && prev(word(0x160314)) != 0) && disable_when(dword(0x010208) - prev(dword(0x010208)) == 0x1388)
function LevelFlagReset(level) => never(byte(0x010322) != level)
function MatchCompleteReset() => never(prev(byte(0x160dd0)) == 1)
function InGame() => unless(prev(byte(0x160dc0)) != 1)
///Missions///

///MissionLookupDict key=Missions Name
//val = [Mission Int value of 0x010322, Title, points, True for tides campaign, Bool for Orc, mission number in campaign string form, id, badge_id]

MissionLookup ={
///Orc Tides Campaign
    "Zul'Dare":                           [0x01, "Orcs Training", 1, true, true, "1", 113284, "123667"],
    "Raid at Hillsbrad":                  [0x03, "Rookie Raid", 1, true, true, "2", 0, ""],
    "Southshore(Orc)":                    [0x05, "Oily Waters", 1, true, true, "3", 0, ""],
    "Assault On Hillsbrad":               [0x07, "Seas Of Blood", 5, true, true, "4", 113285, "123669"],
    "Tol Barad(Orc)":                     [0x09, "Savior of Dun Modr", 5, true, true, "5", 0, ""],
    "The Badlands":                       [0x0B, "Twilight Hammer's Call", 5, true, true, "6", 0, ""],
    "The Fall Of Stromgarde":             [0x0D, "Fall of Stromgarde", 5, true, true, "7", 113286, "123670"],
    "The Runestone at Caer Darrow":       [0x0F, "Runescape Scrap", 5, true, true, "8", 0, ""],
    "The Razing at Tyr's Hand":           [0x11, "Rise of Ogre-Magi", 5, true, true, "9", 0, ""],
    "The Destruction of Stratholme":      [0x13, "Oil Blockade", 5, true, true, "10", 0, ""],
    "The Dead Rise as Quel'Thalas Falls": [0x15, "Rise of Quel Talas", 5, true, true, "11", 113287, "123671"],
    "The Tomb of Sargeras":               [0x17, "Storm Reaving", 10, true, true, "12", 0, ""],
    "The Siege of Dalaran":               [0x19, "Infest the Sanctum", 10, true, true, "13", 0, ""],
    "The Fall of Lordaeron":              [0x1B, "For the Horde!", 25, true, true, "14", 113288, "123672"],

///Human Tides Campaign
    "Hillsbrad":                               [0x00, "Humans Training", 1, true, false, "1", 113279, "123656"],
    "Ambush at Tarren Mill":                   [0x02, "Elven Savior", 1, true, false, "2", 0, ""],
    "Southshore(Human)":                       [0x04, "Oil Company", 1, true, false, "3", 0, ""],
    "Attack on Zul Dare":                      [0x06, "Attack on Zul Dare", 5, true, false, "4", 0113280, "123662"],
    "Tol Barad(Human)":                        [0x08, "Savior of Tol Barad", 5, true, false, "5", 0, ""],
    "Dun Algaz":                               [0x0A, "Knightly Battle", 5, true, false, "6", 0, ""],
    "Grim Batol":                              [0x0C, "Attack on Grim Batol", 5, true, false, "7", 113281, "123664"],
    "Tyr's Hand":                              [0x0E, "Quell the Uprising", 5, true, false, "8", 0, ""],
    "The Battle at Darrowmere":                [0x10, "Bringer of Light", 5, true, false, "9", 0, ""],
    "The Prisoners":                           [0x12, "Alterac Traitors", 5, true, false, "10", 0, ""],
    "Betrayal and the Destruction of Alterac": [0x14, "Destruction of Alterac", 5, true, false, "11", 113282, "123665"],
    "The Battle at Crestfall":                 [0x16, "Return to Azeroth", 10, true, false, "12", 0, ""],
    "Assault on Blackrock Spire":              [0x18, "Slay the Spire", 10, true, false, "13", 0, ""],
    "The Great Portal":                        [0x1A, "The Great Portal", 25, true, false, "14", 0113283, "123666"],
    
///Human Portal Campaign
    "Alleria's Journey":           [0x1C, "Journey Through the Portal", 5, false, false, "1", 0, ""],
    "Battle for Nethergarde":      [0x1E, "Battle for Nethergarde", 5, false, false, "2", 0, ""],
    "Once More Unto the Breach":   [0x20, "The Breach", 5, false, false, "3", 0, ""],
    "Beyond the Dark Portal":      [0x22, "Beyond the Dark Portal", 5, false, false, "4", 0, ""],
    "Upon the Shadowed Sea":       [0x24, "Upon the Shadowed Sea", 5, false, false, "5", 0, ""],
    "Fall of Auchidon":            [0x26, "Fall of Auchidon", 5, false, false, "6", 113290, "123674"],
    "Deathwing":                   [0x28, "Wing Of Death", 5, false, false, "7", 0, ""],
    "Coast of Bones":              [0x2A, "Bones On the Shore", 5, false, false, "8", 0, ""],
    "Heart of Evil":               [0x2C, "Heart of Evil", 10, false, false, "9", 113291, "123676"],
    "Siege of Vanguard":           [0x2E, "Siege of Vanguard", 10, false, false, "10", 0, ""],
    "Dance of the Laughing Skull": [0x30, "Dance of the Laughing Skull", 10, false, false, "11", 0, ""],
    "Bitter Taste of Victory":     [0x32, "Bitter Taste of Victory", 50, false, false, "12", 113292, "123677"],
    
///Orc Portal Campaign
    "Slayer of Shadowmoon":              [0x1D, "Slay the Night", 5, false, true, "1", 0, ""],
    "Skull of Gul'dan":                  [0x1F, "Skull of Gul'dan", 5, false, true, "2", 0, ""],
    "Thunderlord and Bonechewer":        [0x21, "Thunderlord Bunechewer", 5, false, true, "3", 113293, "123678"],
    "The Rift Awakens":                  [0x23, "The Rift Awakens", 5, false, true, "4", 0, ""],
    "Dragons of Blackrock Spire":        [0x25, "Rider of Death", 5, false, true, "5", 0, ""],
    "New Stormwind":                     [0x27, "New Stormwind", 5, false, true, "6", 113294, "123679"],
    "Seas of Azeroth":                   [0x29, "Seas of Azeroth", 5, false, true, "7", 0, ""],
    "Assault on Kul Tiras":              [0x2B, "Assault on Kul Tiras", 5, false, true, "8", 0, ""],
    "The Tomb of Sargeras(Dark Portal)": [0x2D, "Dark Tomb of Sargeras", 10, false, true, "9", 113295, "123680"],
    "Alterac":                           [0x2F, "Mage Savior", 10, false, true, "10", 0, ""],
    "Eye of Dalaran":                    [0x31, "Eye of Dalaran", 10, false, true, "11", 0, ""],
    "The Dark Portal":                   [0x33, "The Dark Portal", 50, false, true, "12", 113296, "123681"],
}

function MissionDescription(orc_bool, tides_bool, mission_num, name)
{
    base_description = "Complete "
    race_description = "Human "
    campaign_description = "Beyond the Dark Portal "
    if orc_bool == true
    {
        race_description = "Orc "
    }
    if tides_bool == true
    {
        campaign_description = "Tides Of Darkness "
    }
    return base_description + campaign_description + race_description + mission_num + " - " + name
}


function MissionFunction()
{
    for key in MissionLookup
    {
        value_list = MissionLookup[key]
        title = value_list[1]
        description = MissionDescription(value_list[4], value_list[3], value_list[5], key)
        points = value_list[2]
        trigger = Victory() && Campaign() && CheatsLock() && InGame() &&
                  (always_false() || (LevelFlagReset(value_list[0]) && MatchCompleteReset()))
        achievement(title, description, points, trigger, id=value_list[6], badge=value_list[7])
    }
}

MissionFunction()

