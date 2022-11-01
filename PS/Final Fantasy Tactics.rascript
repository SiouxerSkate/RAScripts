// Final Fantasy Tactics
// #ID = 11246

achievement(
    title = "Learning The Ropes", description = "Complete Gariland Magic City", points = 1,
    id = 90403, badge = "98992", published = "12/10/2019 6:14:28 PM", modified = "7/13/2020 5:01:52 PM",
    trigger = never(dword(0x0578D4) != 0x00) && never(dword(0x0577E0) != 0x06) && never(dword(0x0577E8) != 0x16) && 
              repeated(500, word(0x190AB4) == 0x00) && repeated(500, word(0x190C74) == 0x00) && repeated(500,
               word(0x190E34) == 0x00) && repeated(500, word(0x190FF4) == 0x00) && repeated(500, word(0x1911B4) == 0x00)
)

achievement(
    title = "Reinforcements? Thank God", description = "Choose to save Algus at Mandalia Plains", points = 1,
    id = 90404, badge = "98994", published = "12/10/2019 6:30:22 PM", modified = "1/18/2020 5:51:14 PM",
    trigger = never(dword(0x0578D4) != 0x02) && never(dword(0x0577E0) != 0x18) && never(dword(0x0577E8) != 0x55) && 
              never(bit6(0x05791E) != 0x01) && word(0x190C74) == 0x00 && word(0x190E34) == 0x00 && word(0x190FF4) ==
               0x00 && word(0x1911B4) == 0x00 && word(0x191374) == 0x00 && word(0x191534) == 0x00
)

achievement(
    title = "Where Is He?", description = "Complete Slums in Dorter", points = 1,
    id = 90405, badge = "98996", published = "12/10/2019 6:59:11 PM", modified = "1/18/2020 5:51:17 PM",
    trigger = never(dword(0x0578D4) != 0x05) && never(dword(0x0577E0) != 0x09) && never(dword(0x0577E8) != 0x20) && 
              repeated(500, word(0x190E34) == 0x00) && repeated(500, word(0x190FF4) == 0x00) && repeated(500,
               word(0x1911B4) == 0x00) && repeated(500, word(0x191374) == 0x00) && repeated(500, word(0x191534) == 0x00) && 
              repeated(500, word(0x1916F4) == 0x00)
)

achievement(
    title = "Flush Out the Rats", description = "Complete Cellar of Sand Mouse", points = 1,
    id = 90430, badge = "99064", published = "12/11/2019 2:38:44 AM", modified = "1/18/2020 5:51:21 PM",
    trigger = never(dword(0x0578D4) != 0x06) && never(dword(0x0577E0) != 0x1C) && never(dword(0x0577E8) != 0x22) && 
              repeated(500, word(0x190C74) == 0x00) && repeated(500, word(0x190E34) == 0x00) && repeated(500,
               word(0x190FF4) == 0x00) && repeated(500, word(0x1911B4) == 0x00) && repeated(500, word(0x191374) == 0x00) && 
              repeated(500, word(0x191534) == 0x00)
)

achievement(
    title = "It's The Will Of Heaven!", description = "Kill all enemies then defeat Miluda at Thieves Fort", points = 2,
    id = 90513, badge = "99114", published = "12/11/2019 4:43:23 PM", modified = "1/18/2020 5:51:24 PM",
    trigger = never(dword(0x0578D4) != 0x08) && never(dword(0x0577E0) != 0x11) && never(dword(0x0577E8) != 0x5B) && 
              repeated(500, word(0x190C74) == 0x00) && repeated(500, word(0x190E34) == 0x00) && repeated(500,
               word(0x190FF4) == 0x00) && repeated(500, word(0x1911B4) == 0x00) && repeated(500, word(0x191374) == 0x00) && 
              repeated(500, byte(0x191534) == 0x00)
)

achievement(
    title = "Who the Hell Am I", description = "Kill all enemies then defeat Miluda at Lenalia Plateau", points = 2,
    id = 90556, badge = "99125", published = "12/11/2019 5:13:10 PM", modified = "1/18/2020 5:51:28 PM",
    trigger = never(dword(0x0578D4) != 0x0B) && never(dword(0x0577E0) != 0x1D) && never(dword(0x0577E8) != 0x4D) && 
              repeated(500, word(0x190AB4) == 0x00) && repeated(500, word(0x190C74) == 0x00) && repeated(500,
               word(0x190E34) == 0x00) && repeated(500, word(0x190FF4) == 0x00) && repeated(500, word(0x1911B4) == 0x00) && 
              repeated(500, word(0x191374) == 0x00)
)

achievement(
    title = "Hang Up the Chick Habit", description = "Kill all enemies then defeat Wiegraf at Windmill Shed on  Fovoham Plains", points = 5,
    id = 90557, badge = "99126", published = "12/11/2019 5:28:53 PM", modified = "7/13/2020 4:40:35 PM",
    trigger = never(dword(0x0578D4) != 0x0C) && never(dword(0x0577E0) != 0x19) && never(dword(0x0577E8) != 0x67) && 
              never(byte(0x190A8C) != 0x20) && repeated(100, word(0x190C74) == 0x00) && repeated(100, word(0x190E34) ==
               0x00) && repeated(100, word(0x190FF4) == 0x00) && repeated(100, word(0x1911B4) == 0x00) && repeated(100,
               byte(0x190A8D) == 0x01) && repeated(100, byte(0x190A8D) == 0xFF)
)

achievement(
    title = "Beat The Bastard", description = "Kill all enemies then defeat Algus at Fort Zeakdon", points = 5,
    id = 90558, badge = "99127", published = "12/11/2019 5:52:37 PM", modified = "1/18/2020 5:51:34 PM",
    trigger = never(dword(0x0578D4) != 0x0D) && never(dword(0x0577E0) != 0x0F) && never(dword(0x0577E8) != 0x31) && 
              never(byte(0x190A8C) != 0x08) && repeated(100, word(0x1908F4) == 0x00) && repeated(100, word(0x190FF4) ==
               0x00) && repeated(100, word(0x1911B4) == 0x00) && repeated(100, word(0x191534) == 0x00) && repeated(100,
               word(0x1918B4) == 0x00) && repeated(100, word(0x191A74) == 0x00)
)

achievement(
    title = "Choco Fight", description = "Choose To Save Boco At Araguay Woods", points = 2,
    id = 92659, badge = "101916", published = "12/29/2019 2:54:33 PM", modified = "1/18/2020 5:53:04 PM",
    trigger = never(dword(0x0578D4) != 0x10) && never(dword(0x0577E0) != 0x20) && never(dword(0x0577E8) != 0x50) && 
              never(bit7(0x05791E) != 0x01) && repeated(100, word(0x190AB4) == 0x00) && repeated(100, word(0x190C74) ==
               0x00) && repeated(100, word(0x190E34) == 0x00) && repeated(100, word(0x190FF4) == 0x00) && repeated(100,
               word(0x1911B4) == 0x00) && repeated(100, word(0x191374) == 0x00)
)

achievement(
    title = "Never Trust A Dark Knight", description = "Defeat Gafgarion at Zirekile Falls(He must have original equipment, no steal or break of equipment)", points = 5,
    id = 92662, badge = "102026", published = "12/29/2019 11:29:27 PM", modified = "2/6/2020 2:09:00 PM",
    trigger = never(dword(0x0578D4) != 0x11) && never(dword(0x0577E0) != 0x23) && never(dword(0x0577E8) != 0x53) && 
              never(byte(0x19188C) != 0x17) && never(byte(0x1918A6) != 0x96) && never(byte(0x1918A7) != 0xB1) && 
              never(byte(0x1918A8) != 0xD7) && never(byte(0x1918A9) != 0x16) && never(byte(0x1918AC) != 0x85) && 
              repeated(50, byte(0x19188D) == 0x09) && byte(0x19188D) == 0xFF && repeated(100, word(0x190FF4) == 0x00) && 
              repeated(100, word(0x1911B4) == 0x00) && repeated(100, word(0x191374) == 0x00) && repeated(100,
               word(0x191534) == 0x00) && repeated(100, word(0x1916F4) == 0x00)
)

achievement(
    title = "This Is Called a \"Gun\"", description = "Choose To Save Mustadio At Zaland Fort City", points = 2,
    id = 92663, badge = "98723", published = "12/29/2019 11:40:01 PM", modified = "1/18/2020 5:53:07 PM",
    trigger = never(dword(0x0578D4) != 0x12) && never(dword(0x0577E0) != 0x0A) && never(dword(0x0577E8) != 0x23) && 
              never(bit0(0x05791F) != 0x01) && repeated(100, word(0x190AB4) == 0x00) && repeated(100, word(0x190C74) ==
               0x00) && repeated(100, word(0x190E34) == 0x00) && repeated(100, word(0x190FF4) == 0x00) && repeated(100,
               word(0x1911B4) == 0x00) && repeated(100, word(0x191374) == 0x00)
)

achievement(
    title = "Secret Of The Holy Stone", description = "Complete Goug Machine City", points = 3,
    id = 93164, badge = "102339", published = "1/1/2020 6:54:54 PM", modified = "1/18/2020 5:53:09 PM",
    trigger = never(dword(0x0578D4) != 0x18) && never(dword(0x0577E0) != 0x0B) && never(dword(0x0577E8) != 0x28) && 
              repeated(500, word(0x190C74) == 0x00) && repeated(500, word(0x190E34) == 0x00) && repeated(500,
               word(0x1911B4) == 0x00) && repeated(500, word(0x191374) == 0x00) && repeated(500, word(0x191534) == 0x00) && 
              repeated(500, word(0x1916F4) == 0x00)
)

achievement(
    title = "The Engineer", description = "Recruit Mustadio", points = 2,
    id = 93165, badge = "102340", published = "1/1/2020 6:54:58 PM", modified = "1/21/2020 5:41:16 PM",
    trigger = never(dword(0x0578D4) != 0x18) && never(dword(0x0577E0) != 0x0B) && never(dword(0x0577E8) != 0x5D) &&
              ((byte(0x058074) == 0x16) ||
               (byte(0x058174) == 0x16) ||
               (byte(0x058274) == 0x16) ||
               (byte(0x058374) == 0x16) ||
               (byte(0x058474) == 0x16) ||
               (byte(0x058574) == 0x16) ||
               (byte(0x058674) == 0x16) ||
               (byte(0x058774) == 0x16) ||
               (byte(0x058874) == 0x16) ||
               (byte(0x058974) == 0x16) ||
               (byte(0x058A74) == 0x16) ||
               (byte(0x058B74) == 0x16) ||
               (byte(0x058C74) == 0x16) ||
               (byte(0x058D74) == 0x16) ||
               (byte(0x058E74) == 0x16))
)

achievement(
    title = "The Holy Knight", description = "Recruit Agrais", points = 2,
    id = 93166, badge = "102343", published = "1/1/2020 7:07:06 PM", modified = "1/21/2020 5:37:46 PM",
    trigger = never(dword(0x0578D4) != 0x1B) && never(dword(0x0577E0) != 0x27) && never(dword(0x0577E8) != 0x57) &&
              ((byte(0x058074) == 0x1E) ||
               (byte(0x058174) == 0x1E) ||
               (byte(0x058274) == 0x1E) ||
               (byte(0x058374) == 0x1E) ||
               (byte(0x058474) == 0x1E) ||
               (byte(0x058574) == 0x1E) ||
               (byte(0x058674) == 0x1E) ||
               (byte(0x058774) == 0x1E) ||
               (byte(0x058874) == 0x1E) ||
               (byte(0x058974) == 0x1E) ||
               (byte(0x058A74) == 0x1E) ||
               (byte(0x058B74) == 0x1E) ||
               (byte(0x058C74) == 0x1E) ||
               (byte(0x058D74) == 0x1E) ||
               (byte(0x058E74) == 0x1E))
)

achievement(
    title = "Meet The Executioner", description = "Complete Golgorand Execution Site(No steal or break of Gafgarion equipment)", points = 5,
    id = 93173, badge = "102344", published = "1/1/2020 7:31:38 PM", modified = "1/22/2020 4:31:30 PM",
    trigger = never(dword(0x0578D4) != 0x1C) && never(dword(0x0577E0) != 0x13) && never(dword(0x0577E8) != 0x3F) && 
              never(byte(0x1908CC) != 0x11) && never(byte(0x1908E6) == 0xFF) && never(byte(0x1908E7) == 0xFF) && 
              never(byte(0x1908E8) == 0xFF) && never(byte(0x1908E9) == 0xFF) && never(byte(0x1908EC) == 0xFF) && 
              repeated(50, byte(0x1908CD) == 0x00) && byte(0x1908CD) == 0xFF && repeated(100, word(0x190FF4) == 0x00) && 
              repeated(100, word(0x190AB4) == 0x00) && repeated(100, word(0x190C74) == 0x00) && repeated(100,
               word(0x190E34) == 0x00) && repeated(100, word(0x190FF4) == 0x00) && repeated(100, word(0x1911B4) == 0x00) && 
              repeated(100, word(0x191374) == 0x00) && repeated(100, word(0x191534) == 0x00)
)

achievement(
    title = "Put The Night Sword To Sleep", description = "Complete Lionel Castle Gate(No steal or break of Gafgarion equipment)", points = 5,
    id = 93174, badge = "102346", published = "1/1/2020 7:50:59 PM", modified = "1/22/2020 4:32:04 PM",
    trigger = never(dword(0x0578D4) != 0x1D) && never(dword(0x0577E0) != 0x03) && never(dword(0x0577E8) != 0x0C) && 
              never(byte(0x1908CC) != 0x11) && never(byte(0x1908E6) == 0xFF) && never(byte(0x1908E7) == 0xFF) && 
              never(byte(0x1908E8) == 0xFF) && never(byte(0x1908E9) == 0xFF) && never(byte(0x1908EC) == 0xFF) && 
              repeated(100, byte(0x1908F4) == 0x00) && repeated(100, word(0x190FF4) == 0x00) && repeated(100,
               word(0x190AB4) == 0x00) && repeated(100, word(0x190C74) == 0x00) && repeated(100, word(0x190E34) == 0x00) && 
              repeated(100, word(0x190FF4) == 0x00) && repeated(100, word(0x1911B4) == 0x00) && repeated(100,
               word(0x191374) == 0x00)
)

achievement(
    title = "Cleanse The Tainted King", description = "Kill Quekalin at Lionel Castle", points = 5,
    id = 93175, badge = "102347", published = "1/1/2020 7:58:44 PM", modified = "1/18/2020 5:53:19 PM",
    trigger = never(dword(0x0578D4) != 0x1D) && never(dword(0x0577E0) != 0x03) && never(dword(0x0577E8) != 0x0D) && 
              never(byte(0x190A8C) != 0x43) && repeated(100, word(0x190AB4) == 0x00)
)

achievement(
    title = "Durie Know You?", description = "Save Olan at Goland Coal City", points = 3,
    id = 93595, badge = "103044", published = "1/5/2020 9:18:01 PM", modified = "1/18/2020 5:53:21 PM",
    trigger = never(dword(0x0578D4) != 0x1F) && never(dword(0x0577E0) != 0x08) && never(dword(0x0577E8) != 0x1B) && 
              never(byte(0x1908CC) != 0x15) && repeated(100, word(0x190AB4) == 0x00) && repeated(100, word(0x190C74) ==
               0x00) && repeated(100, word(0x190E34) == 0x00) && repeated(100, word(0x190FF4) == 0x00) && repeated(100,
               word(0x1911B4) == 0x00) && repeated(100, word(0x191374) == 0x00)
)

achievement(
    title = "Acts Of Heresy", description = "Kill all enemies then defeat Zalmo at Lesalia Imperial City", points = 5,
    id = 93663, badge = "103045", published = "1/5/2020 9:53:44 PM", modified = "4/9/2021 2:33:52 PM",
    trigger = dword(0x0578D4) == 0x21 && dword(0x0577E0) == 0x00 && dword(0x0577E8) == 0x02 && byte(0x190A8C) == 0x10 && 
              word(0x190C74) == 0x00 && word(0x190E34) == 0x00 && word(0x190FF4) == 0x00 && word(0x1911B4) == 0x00 && 
              word(0x191374) == 0x00 && byte(0x190A8D) == 0xFF && prev(byte(0x190A8D)) == 0x01
)

achievement(
    title = "Just In Time", description = "Kill all enemies then defeat Izlude at Orbonne", points = 5,
    id = 93743, badge = "103151", published = "1/6/2020 6:21:21 PM", modified = "1/18/2020 5:53:25 PM",
    trigger = never(dword(0x0578D4) != 0x22) && never(dword(0x0577E0) != 0x12) && never(dword(0x0577E8) != 0x3B) && 
              never(byte(0x1908CC) != 0x26) && repeated(100, byte(0x1908CD) == 0x00) && repeated(100, byte(0x1908CD) ==
               0xFF) && repeated(100, word(0x190AB4) == 0x00) && repeated(100, word(0x190C74) == 0x00) && repeated(100,
               word(0x190E34) == 0x00) && repeated(100, word(0x190FF4) == 0x00) && repeated(100, word(0x1911B4) == 0x00)
)

achievement(
    title = "Hang Up The Chick Habit II", description = "Kill all enemies then defeat Wiegraf at Orbonne", points = 10,
    id = 93754, badge = "103159", published = "1/6/2020 6:39:43 PM", modified = "1/18/2020 5:53:27 PM",
    trigger = never(dword(0x0578D4) != 0x22) && never(dword(0x0577E0) != 0x12) && never(dword(0x0577E8) != 0x39) && 
              never(byte(0x1908CC) != 0x28) && repeated(100, byte(0x1908CD) == 0x00) && repeated(100, byte(0x1908CD) ==
               0xFF) && repeated(100, word(0x190AB4) == 0x00) && repeated(100, word(0x190C74) == 0x00) && repeated(100,
               word(0x190E34) == 0x00) && repeated(100, word(0x190FF4) == 0x00) && repeated(100, word(0x1911B4) == 0x00)
)

achievement(
    title = "Lose The Faith", description = "Read The Germinok Scriptures", points = 2,
    id = 95238, badge = "104922", published = "1/18/2020 5:50:24 PM", modified = "1/25/2020 10:04:39 PM",
    trigger = never(dword(0x0578D4) < 0x23) && never(dword(0x0577B8) != 0x00) && never(bit0(0x057974) != 0x01) && 
              never(byte(0x05968E) == 0x00) && never(byte(0x05968E) == 0xFF) && bit7(0x05968E) == 0x01
)

achievement(
    title = "Family Fued", description = "Save Rafa At Yardow Fort City", points = 3,
    id = 93815, badge = "103269", published = "1/6/2020 10:15:12 PM", modified = "1/18/2020 5:53:28 PM",
    trigger = never(dword(0x0578D4) != 0x26) && never(dword(0x0577E0) != 0x07) && never(dword(0x0577E8) != 0x19) && 
              repeated(500, word(0x190C74) == 0x00) && repeated(500, word(0x190E34) == 0x00) && repeated(500,
               word(0x190FF4) == 0x00) && repeated(500, word(0x1911B4) == 0x00) && repeated(500, word(0x191374) == 0x00) && 
              repeated(500, byte(0x190A8D) == 0x01) && repeated(500, byte(0x190A8D) == 0xFF)
)

achievement(
    title = "Silence The Warlock", description = "Kill all enemies then defeat Velius at Riovannes", points = 10,
    id = 93829, badge = "103270", published = "1/6/2020 10:35:04 PM", modified = "1/18/2020 5:53:30 PM",
    trigger = never(dword(0x0578D4) != 0x28) && never(dword(0x0577E0) != 0x01) && never(dword(0x0577E8) != 0x07) && 
              never(byte(0x1908CC) != 0x28) && never(byte(0x19118C) != 0x3C) && repeated(100, byte(0x1908CD) == 0x00) && 
              repeated(100, byte(0x1908CD) == 0xFF) && repeated(100, word(0x1911B4) == 0x00) && repeated(100,
               word(0x191374) == 0x00) && repeated(100, word(0x191534) == 0x00) && repeated(100, word(0x1916F4) == 0x00)
)

achievement(
    title = "Powers Of Heaven", description = "Recruit Rafa", points = 2,
    id = 93875, badge = "103279", published = "1/7/2020 5:55:56 PM", modified = "1/21/2020 5:50:38 PM",
    trigger = never(dword(0x0578D4) != 0x28) && never(dword(0x0577E0) != 0x01) && never(dword(0x0577E8) != 0x08) &&
              ((byte(0x058074) == 0x29) ||
               (byte(0x058174) == 0x29) ||
               (byte(0x058274) == 0x29) ||
               (byte(0x058374) == 0x29) ||
               (byte(0x058474) == 0x29) ||
               (byte(0x058574) == 0x29) ||
               (byte(0x058674) == 0x29) ||
               (byte(0x058774) == 0x29) ||
               (byte(0x058874) == 0x29) ||
               (byte(0x058974) == 0x29) ||
               (byte(0x058A74) == 0x29) ||
               (byte(0x058B74) == 0x29) ||
               (byte(0x058C74) == 0x29) ||
               (byte(0x058D74) == 0x29) ||
               (byte(0x058E74) == 0x29))
)

achievement(
    title = "Powers Of Hell", description = "Recruit Malek", points = 2,
    id = 93876, badge = "103280", published = "1/7/2020 5:56:01 PM", modified = "1/21/2020 5:49:32 PM",
    trigger = never(dword(0x0578D4) != 0x28) && never(dword(0x0577E0) != 0x01) && never(dword(0x0577E8) != 0x08) &&
              ((byte(0x058074) == 0x1A) ||
               (byte(0x058174) == 0x1A) ||
               (byte(0x058274) == 0x1A) ||
               (byte(0x058374) == 0x1A) ||
               (byte(0x058474) == 0x1A) ||
               (byte(0x058574) == 0x1A) ||
               (byte(0x058674) == 0x1A) ||
               (byte(0x058774) == 0x1A) ||
               (byte(0x058874) == 0x1A) ||
               (byte(0x058974) == 0x1A) ||
               (byte(0x058A74) == 0x1A) ||
               (byte(0x058B74) == 0x1A) ||
               (byte(0x058C74) == 0x1A) ||
               (byte(0x058D74) == 0x1A) ||
               (byte(0x058E74) == 0x1A))
)

achievement(
    title = "Brother Avenger", description = "Kill all enemies then Defeat Meliadoul at Bervania Free City", points = 5,
    id = 93975, badge = "103393", published = "1/8/2020 11:37:32 PM", modified = "1/18/2020 5:53:51 PM",
    trigger = never(dword(0x0578D4) != 0x2A) && never(dword(0x0577E0) != 0x0D) && never(dword(0x0577E8) != 0x2C) && 
              never(byte(0x1908CC) != 0x2F) && repeated(100, byte(0x1908CD) == 0x00) && repeated(100, byte(0x1908CD) ==
               0xFF) && repeated(100, word(0x190AB4) == 0x00) && repeated(100, word(0x190C74) == 0x00) && repeated(100,
               word(0x190E34) == 0x00) && repeated(100, word(0x190FF4) == 0x00) && repeated(100, word(0x1911B4) == 0x00)
)

achievement(
    title = "Church Cannot Know", description = "Kill all enemies then Defeat Zalmo at Zeltennia Church", points = 5,
    id = 93976, badge = "103394", published = "1/9/2020 2:03:54 AM", modified = "1/18/2020 5:53:53 PM",
    trigger = never(dword(0x0578D4) != 0x2C) && never(dword(0x0577E0) != 0x05) && never(dword(0x0577E8) != 0x24) && 
              never(byte(0x190A8C) != 0x10) && repeated(100, word(0x190AB4) == 0x00) && repeated(100, word(0x190C74) ==
               0x00) && repeated(100, word(0x190E34) == 0x00) && repeated(100, word(0x190FF4) == 0x00) && repeated(100,
               word(0x1911B4) == 0x00) && repeated(100, word(0x191374) == 0x00)
)

achievement(
    title = "Nothing To High", description = "Only Kill Zalmo at Zeltennia Church", points = 10,
    id = 93977, badge = "103404", published = "1/9/2020 2:12:36 AM", modified = "1/18/2020 5:53:56 PM",
    trigger = never(dword(0x0578D4) != 0x2C) && never(dword(0x0577E0) != 0x05) && never(dword(0x0577E8) != 0x24) && 
              never(byte(0x190A8C) != 0x10) && repeated(100, word(0x190AB4) == 0x00) && never(word(0x190C74) == 0x00) && 
              never(word(0x190E34) == 0x00) && never(word(0x190FF4) == 0x00) && never(word(0x1911B4) == 0x00) && 
              never(word(0x191374) == 0x00)
)

achievement(
    title = "Im Not Going To Die in A Place Like This", description = "Kill all enemies then Defeat Balk at Bed Desert", points = 10,
    id = 93978, badge = "103405", published = "1/9/2020 2:30:09 AM", modified = "1/18/2020 5:53:57 PM",
    trigger = never(dword(0x0578D4) != 0x2D) && never(dword(0x0577E0) != 0x22) && never(dword(0x0577E8) != 0x52) && 
              never(byte(0x1908CC) != 0x2B) && repeated(100, word(0x1908F4) == 0x00) && repeated(100, word(0x190AB4) ==
               0x00) && repeated(100, word(0x190C74) == 0x00) && repeated(100, word(0x190FF4) == 0x00) && repeated(100,
               word(0x1911B4) == 0x00)
)

achievement(
    title = "Heavy Flow", description = "Kill All enemies and collect their crystals or boxes at the Sluice Gate at Bethla Garrison", points = 5,
    id = 93981, badge = "103411", published = "1/9/2020 6:10:43 PM", modified = "1/18/2020 6:06:02 PM",
    trigger = never(dword(0x0578D4) != 0x2E) && never(dword(0x0577E0) != 0x15) && never(dword(0x0577E8) != 0x40) && 
              repeated(100, word(0x1908F4) == 0x00) && repeated(100, byte(0x1908CD) == 0xFF) && repeated(100,
               word(0x190AB4) == 0x00) && repeated(100, word(0x190C74) == 0x00) && repeated(100, word(0x190E34) == 0x00) && 
              repeated(100, word(0x190FF4) == 0x00) && repeated(100, word(0x1911B4) == 0x00) && repeated(100,
               word(0x191374) == 0x00) && repeated(100, word(0x191534) == 0x00) && byte(0x190A8D) == 0xFF && 
              byte(0x190C4D) == 0xFF && byte(0x190E0D) == 0xFF && byte(0x190FCD) == 0xFF && byte(0x19118D) == 0xFF && 
              byte(0x19134D) == 0xFF && byte(0x19150D) == 0xFF
)

achievement(
    title = "The Holy Swordsman", description = "Recruit Orlandu Durie", points = 2,
    id = 93983, badge = "103384", published = "1/9/2020 6:15:12 PM", modified = "1/21/2020 5:46:49 PM",
    trigger = never(dword(0x0577E0) != 0x15) && never(dword(0x0577E8) != 0x41) &&
              ((byte(0x058074) == 0x0D) ||
               (byte(0x058174) == 0x0D) ||
               (byte(0x058274) == 0x0D) ||
               (byte(0x058374) == 0x0D) ||
               (byte(0x058474) == 0x0D) ||
               (byte(0x058574) == 0x0D) ||
               (byte(0x058674) == 0x0D) ||
               (byte(0x058774) == 0x0D) ||
               (byte(0x058874) == 0x0D) ||
               (byte(0x058974) == 0x0D) ||
               (byte(0x058A74) == 0x0D) ||
               (byte(0x058B74) == 0x0D) ||
               (byte(0x058C74) == 0x0D) ||
               (byte(0x058D74) == 0x0D) ||
               (byte(0x058E74) == 0x0D))
)

achievement(
    title = "Warm Welcome", description = "Kill all enemies then Defeat Assassins at Limberry Gates", points = 10,
    id = 94156, badge = "103633", published = "1/10/2020 6:10:41 PM", modified = "1/18/2020 5:54:09 PM",
    trigger = never(dword(0x0578D4) != 0x31) && never(dword(0x0577E0) != 0x04) && never(dword(0x0577E8) != 0x13) && 
              never(byte(0x1908CC) != 0x2D) && never(byte(0x190A8C) != 0x2E) && repeated(100, word(0x190C74) == 0x00) && 
              repeated(100, word(0x190E34) == 0x00) && repeated(100, word(0x190FF4) == 0x00) && repeated(100,
               word(0x1911B4) == 0x00) &&
              ((repeated(100, byte(0x1908CD) == 0x00) && byte(0x1908CD) == 0xFF) ||
               (repeated(100, byte(0x190A8D) == 0x01) && byte(0x190A8D) == 0xFF))
)

achievement(
    title = "Genji Theft", description = "Steal All Equipment from Elmdor", points = 25,
    id = 94157, badge = "103642", published = "1/10/2020 6:41:14 PM", modified = "1/18/2020 5:54:11 PM",
    trigger = never(dword(0x0578D4) != 0x31) && never(dword(0x0577E0) != 0x04) && never(dword(0x0577E8) != 0x10) && 
              never(byte(0x1908CC) != 0x1B) && repeated(100, byte(0x1908E6) == 0x9B) && byte(0x1908E6) == 0xFF && 
              repeated(100, byte(0x1908E7) == 0xB7) && byte(0x1908E7) == 0xFF && repeated(100, byte(0x1908E8) == 0xD8) && 
              byte(0x1908E8) == 0xFF && repeated(100, byte(0x1908E9) == 0x2E) && byte(0x1908E9) == 0xFF && repeated(100,
               byte(0x1908EC) == 0x8C) && byte(0x1908EC) == 0xFF && repeated(100, byte(0x05970E) == 0x00) && 
              byte(0x05970E) == 0x01 && repeated(100, byte(0x05976C) == 0x00) && byte(0x05976C) == 0x01 && repeated(100,
               byte(0x05977B) == 0x00) && byte(0x05977B) == 0x01 && repeated(100, byte(0x059797) == 0x00) && 
              byte(0x059797) == 0x01 && repeated(100, byte(0x0597B8) == 0x00) && byte(0x0597B8) == 0x01
)

achievement(
    title = "Destroy The Angel of Death", description = "Kill all enemies then Defeat Zalera at Limberry Underground", points = 10,
    id = 94158, badge = "103643", published = "1/10/2020 6:49:51 PM", modified = "1/18/2020 5:54:13 PM",
    trigger = never(dword(0x0578D4) != 0x31) && never(dword(0x0577E0) != 0x04) && never(dword(0x0577E8) != 0x11) && 
              never(byte(0x190A8C) != 0x3E) && word(0x190AB4) == 0x00 && repeated(500, word(0x190C74) == 0x00) && 
              repeated(500, word(0x190E34) == 0x00) && repeated(500, word(0x190FF4) == 0x00) && repeated(500,
               word(0x1911B4) == 0x00) && repeated(500, word(0x191374) == 0x00)
)

achievement(
    title = "The Divine Knight", description = "Recruit Meliadoul", points = 2,
    id = 94159, badge = "103385", published = "1/10/2020 6:52:32 PM", modified = "1/21/2020 5:51:50 PM",
    trigger = never(dword(0x0577E0) != 0x04) && never(dword(0x0577E8) != 0x11) &&
              ((byte(0x058074) == 0x2A) ||
               (byte(0x058174) == 0x2A) ||
               (byte(0x058274) == 0x2A) ||
               (byte(0x058374) == 0x2A) ||
               (byte(0x058474) == 0x2A) ||
               (byte(0x058574) == 0x2A) ||
               (byte(0x058674) == 0x2A) ||
               (byte(0x058774) == 0x2A) ||
               (byte(0x058874) == 0x2A) ||
               (byte(0x058974) == 0x2A) ||
               (byte(0x058A74) == 0x2A) ||
               (byte(0x058B74) == 0x2A) ||
               (byte(0x058C74) == 0x2A) ||
               (byte(0x058D74) == 0x2A) ||
               (byte(0x058E74) == 0x2A))
)

achievement(
    title = "Exorcise The Ghost of Fury", description = "Kill all enemies then before Dycedarg turns then Defeat Adramelk at Igros Castle", points = 10,
    id = 94174, badge = "103661", published = "1/10/2020 10:04:46 PM", modified = "1/18/2020 5:54:16 PM",
    trigger = never(dword(0x0578D4) != 0x33) && never(dword(0x0577E0) != 0x02) && never(dword(0x0577E8) != 0x0A) && 
              never(byte(0x1908CC) != 0x08) && never(byte(0x190A8C) != 0x09) && never(byte(0x19150C) != 0x45) && 
              repeated(100, word(0x190C74) == 0x00) && repeated(100, word(0x190E34) == 0x00) && repeated(100,
               word(0x190FF4) == 0x00) && repeated(100, word(0x1911B4) == 0x00) && repeated(100, word(0x191374) == 0x00) && 
              repeated(100, word(0x191534) == 0x00)
)

achievement(
    title = "The Real Players", description = "Defeat Vormav_Kleitan_Rofel at Murond Holy Place", points = 10,
    id = 94177, badge = "103666", published = "1/10/2020 11:10:52 PM", modified = "1/18/2020 5:54:22 PM",
    trigger = never(dword(0x0578D4) != 0x34) && never(dword(0x0577E0) != 0x10) && never(dword(0x0577E8) != 0x03) && 
              byte(0x1908CC) == 0x24 && byte(0x190A8C) == 0x25 && byte(0x190C4C) == 0x27 &&
              ((repeated(100, byte(0x1908CD) == 0x00) && byte(0x1908CD) == 0xFF) ||
               (repeated(100, byte(0x190A8D) == 0x01) && byte(0x190A8D) == 0xFF) ||
               (repeated(100, byte(0x190C4D) == 0x02) && byte(0x190C4D) == 0xFF))
)

achievement(
    title = "Death Of A Family", description = "Kill all enemies then Defeat Zalbag at Murond Holy Place", points = 10,
    id = 94236, badge = "103668", published = "1/10/2020 11:20:13 PM", modified = "1/18/2020 5:54:24 PM",
    trigger = never(dword(0x0578D4) != 0x34) && never(dword(0x0577E0) != 0x10) && never(dword(0x0577E8) != 0x34) && 
              never(byte(0x190A8C) != 0x33) && repeated(100, word(0x190AB4) == 0x00) && repeated(100, word(0x190C74) ==
               0x00) && repeated(100, word(0x190E34) == 0x00) && repeated(100, word(0x190FF4) == 0x00)
)

achievement(
    title = "The Gateway", description = "Kill all enemies then Defeat Rofel at Orbonne", points = 10,
    id = 94334, badge = "103916", published = "1/11/2020 8:22:35 PM", modified = "1/18/2020 5:54:26 PM",
    trigger = never(dword(0x0578D4) != 0x35) && never(dword(0x0577E0) != 0x12) && never(dword(0x0577E8) != 0x3D) && 
              never(byte(0x1908CC) != 0x25) && repeated(100, word(0x1908F4) == 0x00) && repeated(100, word(0x190AB4) ==
               0x00) && repeated(100, word(0x190C74) == 0x00) && repeated(100, word(0x190E34) == 0x00) && repeated(100,
               word(0x190FF4) == 0x00) && repeated(100, word(0x1911B4) == 0x00)
)

achievement(
    title = "City Of Death", description = "Kill all enemies then Defeat Kletian at Murond Death City", points = 10,
    id = 94335, badge = "103917", published = "1/11/2020 8:33:37 PM", modified = "1/18/2020 5:54:28 PM",
    trigger = never(dword(0x0578D4) != 0x35) && never(dword(0x0577E0) != 0x14) && never(dword(0x0577E8) != 0x45) && 
              never(byte(0x1908CC) != 0x27) && repeated(100, word(0x1908F4) == 0x00) && repeated(100, word(0x190AB4) ==
               0x00) && repeated(100, word(0x190C74) == 0x00) && repeated(100, word(0x190E34) == 0x00) && repeated(100,
               word(0x190FF4) == 0x00) && repeated(100, word(0x1911B4) == 0x00) && repeated(100, word(0x191374) == 0x00)
)

achievement(
    title = "Find The Lost Precincts", description = "Kill all enemies then Defeat Balk at Lost Sacred Precincts", points = 10,
    id = 94336, badge = "103918", published = "1/11/2020 8:45:23 PM", modified = "1/18/2020 5:54:30 PM",
    trigger = never(dword(0x0578D4) != 0x35) && never(dword(0x0577E0) != 0x14) && never(dword(0x0577E8) != 0x36) && 
              never(byte(0x1908CC) != 0x2B) && repeated(100, word(0x1908F4) == 0x00) && repeated(100, word(0x190AB4) ==
               0x00) && repeated(100, word(0x190C74) == 0x00) && repeated(100, word(0x190E34) == 0x00) && repeated(100,
               word(0x190FF4) == 0x00) && repeated(100, word(0x1911B4) == 0x00)
)

achievement(
    title = "Regulated Blood Sacrifice", description = "Defeat Hashmalum", points = 25,
    id = 94339, badge = "103921", published = "1/11/2020 9:29:51 PM", modified = "1/18/2020 5:54:35 PM",
    trigger = never(dword(0x0578D4) != 0x35) && never(dword(0x0577E0) != 0x14) && never(dword(0x0577E8) != 0x37) && 
              never(byte(0x190C4C) != 0x40) && repeated(100, word(0x190C74) == 0x00)
)

achievement(
    title = "The Zodiac Brave Story", description = "Kill all enemies then defeat Altima and finish the game", points = 50,
    id = 94341, badge = "103923", published = "1/11/2020 9:52:14 PM", modified = "1/18/2020 5:54:38 PM",
    trigger = never(dword(0x0578D4) != 0x35) && never(dword(0x0577E0) != 0x14) && never(dword(0x0577E8) != 0x37) && 
              never(byte(0x19150C) != 0x41) && repeated(100, word(0x191534) == 0x00) && never(byte(0x1916CC) != 0x49) && 
              repeated(100, word(0x1916F4) == 0x00) && repeated(100, word(0x190E34) == 0x00) && repeated(100,
               word(0x190FF4) == 0x00) && repeated(100, word(0x1911B4) == 0x00) && repeated(100, word(0x191374) == 0x00)
)

achievement(
    title = "Still A Cadet", description = "Reach Level 10 With Ramza", points = 5,
    id = 90588, badge = "99133", published = "12/11/2019 6:38:40 PM", modified = "1/18/2020 5:51:37 PM",
    trigger = never(dword(0x0577B7) == 0x00) && never(dword(0x0577B8) == 0x10000013) &&
              ((once(byte(0x1924EE) == 0x09) && byte(0x1924EE) == 0x0A && unless(byte(0x1924CC) > 0x02)) ||
               (once(byte(0x1926AE) == 0x09) && byte(0x1926AE) == 0x0A && unless(byte(0x19268C) > 0x02)) ||
               (once(byte(0x19286E) == 0x09) && byte(0x19286E) == 0x0A && unless(byte(0x19284C) > 0x02)) ||
               (once(byte(0x192A2E) == 0x09) && once(byte(0x192A2E) == 0x0A) && unless(byte(0x192A0C) > 0x02)) ||
               (once(byte(0x192BEE) == 0x09) && byte(0x192BEE) == 0x0A && unless(byte(0x192BCC) > 0x02)))
)

achievement(
    title = "Nobel Prize Winner", description = "Master the Chemist Class with any character", points = 5,
    id = 90640, badge = "99278", published = "12/13/2019 2:56:23 AM", modified = "12/2/2020 9:18:42 PM",
    trigger = never(byte(0x0578D4) > 0x50) && never(byte(0x0578D4) == 0x00) &&
              ((unless(word(0x05800C) >= 0x270F) && low4(0x057FD8) == 0x08 && tbyte(0x057FA2) == 0xF8FCFF && 
                repeated(100, tbyte(0x057FA2) != 0xF8FCFF)) ||
               (unless(word(0x05810C) >= 0x270F) && low4(0x0580D8) == 0x08 && tbyte(0x0580A2) == 0xF8FCFF && 
                repeated(100, tbyte(0x0580A2) != 0xF8FCFF)) ||
               (unless(word(0x05820C) >= 0x270F) && low4(0x0581D8) == 0x08 && tbyte(0x0581A2) == 0xF8FCFF && 
                repeated(100, tbyte(0x0581A2) != 0xF8FCFF)) ||
               (unless(word(0x05830C) >= 0x270F) && low4(0x0582D8) == 0x08 && tbyte(0x0582A2) == 0xF8FCFF && 
                repeated(100, tbyte(0x0582A2) != 0xF8FCFF)) ||
               (unless(word(0x05840C) >= 0x270F) && low4(0x0583D8) == 0x08 && tbyte(0x0583A2) == 0xF8FCFF && 
                repeated(100, tbyte(0x0583A2) != 0xF8FCFF)) ||
               (unless(word(0x05850C) >= 0x270F) && low4(0x0584D8) == 0x08 && tbyte(0x0584A2) == 0xF8FCFF && 
                repeated(100, tbyte(0x0584A2) != 0xF8FCFF)) ||
               (unless(word(0x05860C) >= 0x270F) && low4(0x0585D8) == 0x08 && tbyte(0x0585A2) == 0xF8FCFF && 
                repeated(100, tbyte(0x0585A2) != 0xF8FCFF)) ||
               (unless(word(0x05870C) >= 0x270F) && low4(0x0586D8) == 0x08 && tbyte(0x0586A2) == 0xF8FCFF && 
                repeated(100, tbyte(0x0586A2) != 0xF8FCFF)) ||
               (unless(word(0x05880C) >= 0x270F) && low4(0x0587D8) == 0x08 && tbyte(0x0587A2) == 0xF8FCFF && 
                repeated(100, tbyte(0x0587A2) != 0xF8FCFF)) ||
               (unless(word(0x05890C) >= 0x270F) && low4(0x0588D8) == 0x08 && tbyte(0x0588A2) == 0xF8FCFF && 
                repeated(100, tbyte(0x0588A2) != 0xF8FCFF)) ||
               (unless(word(0x058A0C) >= 0x270F) && low4(0x0589D8) == 0x08 && tbyte(0x0589A2) == 0xF8FCFF && 
                repeated(100, tbyte(0x0589A2) != 0xF8FCFF)) ||
               (unless(word(0x058B0C) >= 0x270F) && low4(0x058AD8) == 0x08 && tbyte(0x058AA2) == 0xF8FCFF && 
                repeated(100, tbyte(0x058AA2) != 0xF8FCFF)) ||
               (unless(word(0x058C0C) >= 0x270F) && low4(0x058BD8) == 0x08 && tbyte(0x058BA2) == 0xF8FCFF && 
                repeated(100, tbyte(0x058BA2) != 0xF8FCFF)) ||
               (unless(word(0x058D0C) >= 0x270F) && low4(0x058CD8) == 0x08 && tbyte(0x058CA2) == 0xF8FCFF && 
                repeated(100, tbyte(0x058CA2) != 0xF8FCFF)) ||
               (unless(word(0x058E0C) >= 0x270F) && low4(0x058DD8) == 0x08 && tbyte(0x058DA2) == 0xF8FCFF && 
                repeated(100, tbyte(0x058DA2) != 0xF8FCFF)) ||
               (unless(word(0x058F0C) >= 0x270F) && low4(0x058ED8) == 0x08 && tbyte(0x058EA2) == 0xF8FCFF && 
                repeated(100, tbyte(0x058EA2) != 0xF8FCFF)))
)

achievement(
    title = "Breaker Of Gear", description = "Master the Knight Class with any character", points = 5,
    id = 90934, badge = "99279", published = "12/16/2019 3:50:58 PM", modified = "2/13/2020 10:33:46 PM",
    trigger = never(byte(0x0578D4) > 0x50) && never(byte(0x0578D4) == 0x00) &&
              ((unless(word(0x05800E) >= 0x270F) && high4(0x057FD9) == 0x08 && repeated(100, tbyte(0x057FA5) !=
                 0xF000FF) && tbyte(0x057FA5) == 0xF000FF) ||
               (unless(word(0x05810E) >= 0x270F) && high4(0x0580D9) == 0x08 && repeated(100, tbyte(0x0580A5) !=
                 0xF000FF) && tbyte(0x0580A5) == 0xF000FF) ||
               (unless(word(0x05820E) >= 0x270F) && high4(0x0581D9) == 0x08 && repeated(100, tbyte(0x0581A5) !=
                 0xF000FF) && tbyte(0x0581A5) == 0xF000FF) ||
               (unless(word(0x05830E) >= 0x270F) && high4(0x0582D9) == 0x08 && repeated(100, tbyte(0x0582A5) !=
                 0xF000FF) && tbyte(0x0582A5) == 0xF000FF) ||
               (unless(word(0x05840E) >= 0x270F) && high4(0x0583D9) == 0x08 && repeated(100, tbyte(0x0583A5) !=
                 0xF000FF) && tbyte(0x0583A5) == 0xF000FF) ||
               (unless(word(0x05850E) >= 0x270F) && high4(0x0584D9) == 0x08 && repeated(100, tbyte(0x0584A5) !=
                 0xF000FF) && tbyte(0x0584A5) == 0xF000FF) ||
               (unless(word(0x05860E) >= 0x270F) && high4(0x0585D9) == 0x08 && repeated(100, tbyte(0x0585A5) !=
                 0xF000FF) && tbyte(0x0585A5) == 0xF000FF) ||
               (unless(word(0x05870E) >= 0x270F) && high4(0x0586D9) == 0x08 && repeated(100, tbyte(0x0586A5) !=
                 0xF000FF) && tbyte(0x0586A5) == 0xF000FF) ||
               (unless(word(0x05880E) >= 0x270F) && high4(0x0587D9) == 0x08 && repeated(100, tbyte(0x0587A5) !=
                 0xF000FF) && tbyte(0x0587A5) == 0xF000FF) ||
               (unless(word(0x05890E) >= 0x270F) && high4(0x0588D9) == 0x08 && repeated(100, tbyte(0x0588A5) !=
                 0xF000FF) && tbyte(0x0588A5) == 0xF000FF) ||
               (unless(word(0x058A0E) >= 0x270F) && high4(0x0589D9) == 0x08 && repeated(100, tbyte(0x0589A5) !=
                 0xF000FF) && tbyte(0x0589A5) == 0xF000FF) ||
               (unless(word(0x058B0E) >= 0x270F) && high4(0x058AD9) == 0x08 && repeated(100, tbyte(0x058AA5) !=
                 0xF000FF) && tbyte(0x058AA5) == 0xF000FF) ||
               (unless(word(0x058C0E) >= 0x270F) && high4(0x058BD9) == 0x08 && repeated(100, tbyte(0x058BA5) !=
                 0xF000FF) && tbyte(0x058BA5) == 0xF000FF) ||
               (unless(word(0x058D0E) >= 0x270F) && high4(0x058CD9) == 0x08 && repeated(100, tbyte(0x058CA5) !=
                 0xF000FF) && tbyte(0x058CA5) == 0xF000FF) ||
               (unless(word(0x058E0E) >= 0x270F) && high4(0x058DD9) == 0x08 && repeated(100, tbyte(0x058DA5) !=
                 0xF000FF) && tbyte(0x058DA5) == 0xF000FF) ||
               (unless(word(0x058F0E) >= 0x270F) && high4(0x058ED9) == 0x08 && repeated(100, tbyte(0x058EA5) !=
                 0xF000FF) && tbyte(0x058EA5) == 0xF000FF))
)

achievement(
    title = "Charge It Up", description = "Master the Archer Class with any character", points = 5,
    id = 90935, badge = "99354", published = "12/16/2019 4:05:55 PM", modified = "12/2/2020 9:19:39 PM",
    trigger = never(byte(0x0578D4) > 0x50) && never(byte(0x0578D4) == 0x00) &&
              ((unless(word(0x058010) >= 0x270F) && low4(0x057FD9) == 0x08 && repeated(100, tbyte(0x057FA8) != 0xF800FF) && 
                tbyte(0x057FA8) == 0xF800FF) ||
               (unless(word(0x058110) >= 0x270F) && low4(0x0580D9) == 0x08 && repeated(100, tbyte(0x0580A8) != 0xF800FF) && 
                tbyte(0x0580A8) == 0xF800FF) ||
               (unless(word(0x058210) >= 0x270F) && low4(0x0581D9) == 0x08 && repeated(100, tbyte(0x0581A8) != 0xF800FF) && 
                tbyte(0x0581A8) == 0xF800FF) ||
               (unless(word(0x058310) >= 0x270F) && low4(0x0582D9) == 0x08 && repeated(100, tbyte(0x0582A8) != 0xF800FF) && 
                tbyte(0x0582A8) == 0xF800FF) ||
               (unless(word(0x058410) >= 0x270F) && low4(0x0583D9) == 0x08 && repeated(100, tbyte(0x0583A8) != 0xF800FF) && 
                tbyte(0x0583A8) == 0xF800FF) ||
               (unless(word(0x058510) >= 0x270F) && low4(0x0584D9) == 0x08 && repeated(100, tbyte(0x0584A8) != 0xF800FF) && 
                tbyte(0x0584A8) == 0xF800FF) ||
               (unless(word(0x058610) >= 0x270F) && low4(0x0585D9) == 0x08 && repeated(100, tbyte(0x0585A8) != 0xF800FF) && 
                tbyte(0x0585A8) == 0xF800FF) ||
               (unless(word(0x058710) >= 0x270F) && low4(0x0586D9) == 0x08 && repeated(100, tbyte(0x0586A8) != 0xF800FF) && 
                tbyte(0x0586A8) == 0xF800FF) ||
               (unless(word(0x058810) >= 0x270F) && low4(0x0587D9) == 0x08 && repeated(100, tbyte(0x0587A8) != 0xF800FF) && 
                tbyte(0x0587A8) == 0xF800FF) ||
               (unless(word(0x058910) >= 0x270F) && low4(0x0588D9) == 0x08 && repeated(100, tbyte(0x0588A8) != 0xF800FF) && 
                tbyte(0x0588A8) == 0xF800FF) ||
               (unless(word(0x058A10) >= 0x270F) && low4(0x0589D9) == 0x08 && repeated(100, tbyte(0x0589A8) != 0xF800FF) && 
                tbyte(0x0589A8) == 0xF800FF) ||
               (unless(word(0x058B10) >= 0x270F) && low4(0x058AD9) == 0x08 && repeated(100, tbyte(0x058AA8) != 0xF800FF) && 
                tbyte(0x058AA8) == 0xF800FF) ||
               (unless(word(0x058C10) >= 0x270F) && low4(0x058BD9) == 0x08 && repeated(100, tbyte(0x058BA8) != 0xF800FF) && 
                tbyte(0x058BA8) == 0xF800FF) ||
               (unless(word(0x058D10) >= 0x270F) && low4(0x058CD9) == 0x08 && repeated(100, tbyte(0x058CA8) != 0xF800FF) && 
                tbyte(0x058CA8) == 0xF800FF) ||
               (unless(word(0x058E10) >= 0x270F) && low4(0x058DD9) == 0x08 && repeated(100, tbyte(0x058DA8) != 0xF800FF) && 
                tbyte(0x058DA8) == 0xF800FF) ||
               (unless(word(0x058F10) >= 0x270F) && low4(0x058ED9) == 0x08 && repeated(100, tbyte(0x058EA8) != 0xF800FF) && 
                tbyte(0x058EA8) == 0xF800FF))
)

achievement(
    title = "Master Pugilist", description = "Master the Monk Class with any character", points = 5,
    id = 90937, badge = "99276", published = "12/16/2019 10:48:12 PM", modified = "2/13/2020 10:33:59 PM",
    trigger = never(byte(0x0578D4) > 0x50) && never(byte(0x0578D4) == 0x00) &&
              ((unless(word(0x058012) >= 0x270F) && high4(0x057FDA) == 0x08 && repeated(100, tbyte(0x057FAB) !=
                 0xF800FF) && tbyte(0x057FAB) == 0xF800FF) ||
               (unless(word(0x058112) >= 0x270F) && high4(0x0580DA) == 0x08 && repeated(100, tbyte(0x0580AB) !=
                 0xF800FF) && tbyte(0x0580AB) == 0xF800FF) ||
               (unless(word(0x058212) >= 0x270F) && high4(0x0581DA) == 0x08 && repeated(100, tbyte(0x0581AB) !=
                 0xF800FF) && tbyte(0x0581AB) == 0xF800FF) ||
               (unless(word(0x058312) >= 0x270F) && high4(0x0582DA) == 0x08 && repeated(100, tbyte(0x0582AB) !=
                 0xF800FF) && tbyte(0x0582AB) == 0xF800FF) ||
               (unless(word(0x058412) >= 0x270F) && high4(0x0583DA) == 0x08 && repeated(100, tbyte(0x0583AB) !=
                 0xF800FF) && tbyte(0x0583AB) == 0xF800FF) ||
               (unless(word(0x058512) >= 0x270F) && high4(0x0584DA) == 0x08 && repeated(100, tbyte(0x0584AB) !=
                 0xF800FF) && tbyte(0x0584AB) == 0xF800FF) ||
               (unless(word(0x058612) >= 0x270F) && high4(0x0585DA) == 0x08 && repeated(100, tbyte(0x0585AB) !=
                 0xF800FF) && tbyte(0x0585AB) == 0xF800FF) ||
               (unless(word(0x058712) >= 0x270F) && high4(0x0586DA) == 0x08 && repeated(100, tbyte(0x0586AB) !=
                 0xF800FF) && tbyte(0x0586AB) == 0xF800FF) ||
               (unless(word(0x058812) >= 0x270F) && high4(0x0587DA) == 0x08 && repeated(100, tbyte(0x0587AB) !=
                 0xF800FF) && tbyte(0x0587AB) == 0xF800FF) ||
               (unless(word(0x058912) >= 0x270F) && high4(0x0588DA) == 0x08 && repeated(100, tbyte(0x0588AB) !=
                 0xF800FF) && tbyte(0x0588AB) == 0xF800FF) ||
               (unless(word(0x058A12) >= 0x270F) && high4(0x0589DA) == 0x08 && repeated(100, tbyte(0x0589AB) !=
                 0xF800FF) && tbyte(0x0589AB) == 0xF800FF) ||
               (unless(word(0x058B12) >= 0x270F) && high4(0x058ADA) == 0x08 && repeated(100, tbyte(0x058AAB) !=
                 0xF800FF) && tbyte(0x058AAB) == 0xF800FF) ||
               (unless(word(0x058C12) >= 0x270F) && high4(0x058BDA) == 0x08 && repeated(100, tbyte(0x058BAB) !=
                 0xF800FF) && tbyte(0x058BAB) == 0xF800FF) ||
               (unless(word(0x058D12) >= 0x270F) && high4(0x058CDA) == 0x08 && repeated(100, tbyte(0x058CAB) !=
                 0xF800FF) && tbyte(0x058CAB) == 0xF800FF) ||
               (unless(word(0x058E12) >= 0x270F) && high4(0x058DDA) == 0x08 && repeated(100, tbyte(0x058DAB) !=
                 0xF800FF) && tbyte(0x058DAB) == 0xF800FF) ||
               (unless(word(0x058F12) >= 0x270F) && high4(0x058EDA) == 0x08 && repeated(100, tbyte(0x058EAB) !=
                 0xF800FF) && tbyte(0x058EAB) == 0xF800FF))
)

achievement(
    title = "Go With God", description = "Master the Priest Class with any character", points = 5,
    id = 90938, badge = "99355", published = "12/16/2019 11:00:07 PM", modified = "2/13/2020 10:34:05 PM",
    trigger = never(byte(0x0578D4) > 0x50) && never(byte(0x0578D4) == 0x00) &&
              ((unless(word(0x058014) >= 0x270F) && low4(0x057FDA) == 0x08 && repeated(100, tbyte(0x057FAE) != 0xC0FEFF) && 
                tbyte(0x057FAE) == 0xC0FEFF) ||
               (unless(word(0x058114) >= 0x270F) && low4(0x0580DA) == 0x08 && repeated(100, tbyte(0x0580AE) != 0xC0FEFF) && 
                tbyte(0x0580AE) == 0xC0FEFF) ||
               (unless(word(0x058214) >= 0x270F) && low4(0x0581DA) == 0x08 && repeated(100, tbyte(0x0581AE) != 0xC0FEFF) && 
                tbyte(0x0581AE) == 0xC0FEFF) ||
               (unless(word(0x058314) >= 0x270F) && low4(0x0582DA) == 0x08 && repeated(100, tbyte(0x0582AE) != 0xC0FEFF) && 
                tbyte(0x0582AE) == 0xC0FEFF) ||
               (unless(word(0x058414) >= 0x270F) && low4(0x0583DA) == 0x08 && repeated(100, tbyte(0x0583AE) != 0xC0FEFF) && 
                tbyte(0x0583AE) == 0xC0FEFF) ||
               (unless(word(0x058514) >= 0x270F) && low4(0x0584DA) == 0x08 && repeated(100, tbyte(0x0584AE) != 0xC0FEFF) && 
                tbyte(0x0584AE) == 0xC0FEFF) ||
               (unless(word(0x058614) >= 0x270F) && low4(0x0585DA) == 0x08 && repeated(100, tbyte(0x0585AE) != 0xC0FEFF) && 
                tbyte(0x0585AE) == 0xC0FEFF) ||
               (unless(word(0x058714) >= 0x270F) && low4(0x0586DA) == 0x08 && repeated(100, tbyte(0x0586AE) != 0xC0FEFF) && 
                tbyte(0x0586AE) == 0xC0FEFF) ||
               (unless(word(0x058814) >= 0x270F) && low4(0x0587DA) == 0x08 && repeated(100, tbyte(0x0587AE) != 0xC0FEFF) && 
                tbyte(0x0587AE) == 0xC0FEFF) ||
               (never(word(0x058914) >= 0x270F) && low4(0x0588DA) == 0x08 && repeated(100, tbyte(0x0588AE) != 0xC0FEFF) && 
                tbyte(0x0588AE) == 0xC0FEFF) ||
               (unless(word(0x058A14) >= 0x270F) && low4(0x0589DA) == 0x08 && repeated(100, tbyte(0x0589AE) != 0xC0FEFF) && 
                tbyte(0x0589AE) == 0xC0FEFF) ||
               (unless(word(0x058B14) >= 0x270F) && low4(0x058ADA) == 0x08 && repeated(100, tbyte(0x058AAE) != 0xC0FEFF) && 
                tbyte(0x058AAE) == 0xC0FEFF) ||
               (unless(word(0x058C14) >= 0x270F) && low4(0x058BDA) == 0x08 && repeated(100, tbyte(0x058BAE) != 0xC0FEFF) && 
                tbyte(0x058BAE) == 0xC0FEFF) ||
               (unless(word(0x058D14) >= 0x270F) && low4(0x058CDA) == 0x08 && repeated(100, tbyte(0x058CAE) != 0xC0FEFF) && 
                tbyte(0x058CAE) == 0xC0FEFF) ||
               (unless(word(0x058E14) >= 0x270F) && low4(0x058DDA) == 0x08 && repeated(100, tbyte(0x058DAE) != 0xC0FEFF) && 
                tbyte(0x058DAE) == 0xC0FEFF) ||
               (unless(word(0x058F14) >= 0x270F) && low4(0x058EDA) == 0x08 && repeated(100, tbyte(0x058EAE) != 0xC0FEFF) && 
                tbyte(0x058EAE) == 0xC0FEFF))
)

achievement(
    title = "Mister Crowley", description = "Master the Wizard Class with any character", points = 5,
    id = 91072, badge = "99356", published = "12/17/2019 6:30:38 PM", modified = "2/13/2020 10:34:12 PM",
    trigger = never(byte(0x0578D4) > 0x50) && never(byte(0x0578D4) == 0x00) &&
              ((unless(word(0x058016) >= 0x270F) && high4(0x057FDB) == 0x08 && repeated(100, tbyte(0x057FB1) !=
                 0xC0FFFF) && tbyte(0x057FB1) == 0xC0FFFF) ||
               (unless(word(0x058116) >= 0x270F) && high4(0x0580DB) == 0x08 && repeated(100, tbyte(0x0580B1) !=
                 0xC0FFFF) && tbyte(0x0580B1) == 0xC0FFFF) ||
               (unless(word(0x058216) >= 0x270F) && high4(0x0581DB) == 0x08 && repeated(100, tbyte(0x0581B1) !=
                 0xC0FFFF) && tbyte(0x0581B1) == 0xC0FFFF) ||
               (unless(word(0x058316) >= 0x270F) && high4(0x0582DB) == 0x08 && repeated(100, tbyte(0x0582B1) !=
                 0xC0FFFF) && tbyte(0x0582B1) == 0xC0FFFF) ||
               (unless(word(0x058416) >= 0x270F) && high4(0x0583DB) == 0x08 && repeated(100, tbyte(0x0583B1) !=
                 0xC0FFFF) && tbyte(0x0583B1) == 0xC0FFFF) ||
               (unless(word(0x058516) >= 0x270F) && high4(0x0584DB) == 0x08 && repeated(100, tbyte(0x0584B1) !=
                 0xC0FFFF) && tbyte(0x0584B1) == 0xC0FFFF) ||
               (unless(word(0x058616) >= 0x270F) && high4(0x0585DB) == 0x08 && repeated(100, tbyte(0x0585B1) !=
                 0xC0FFFF) && tbyte(0x0585B1) == 0xC0FFFF) ||
               (unless(word(0x058716) >= 0x270F) && high4(0x0586DB) == 0x08 && repeated(100, tbyte(0x0586B1) !=
                 0xC0FFFF) && tbyte(0x0586B1) == 0xC0FFFF) ||
               (unless(word(0x058816) >= 0x270F) && high4(0x0587DB) == 0x08 && repeated(100, tbyte(0x0587B1) !=
                 0xC0FFFF) && tbyte(0x0587B1) == 0xC0FFFF) ||
               (unless(word(0x058916) >= 0x270F) && high4(0x0588DB) == 0x08 && repeated(100, tbyte(0x0588B1) !=
                 0xC0FFFF) && tbyte(0x0588B1) == 0xC0FFFF) ||
               (unless(word(0x058A16) >= 0x270F) && high4(0x0589DB) == 0x08 && repeated(100, tbyte(0x0589B1) !=
                 0xC0FFFF) && tbyte(0x0589B1) == 0xC0FFFF) ||
               (unless(word(0x058B16) >= 0x270F) && high4(0x058ADB) == 0x08 && repeated(100, tbyte(0x058AB1) !=
                 0xC0FFFF) && tbyte(0x058AB1) == 0xC0FFFF) ||
               (unless(word(0x058C16) >= 0x270F) && high4(0x058BDB) == 0x08 && repeated(100, tbyte(0x058BB1) !=
                 0xC0FFFF) && tbyte(0x058BB1) == 0xC0FFFF) ||
               (unless(word(0x058D16) >= 0x270F) && high4(0x058CDB) == 0x08 && repeated(100, tbyte(0x058CB1) !=
                 0xC0FFFF) && tbyte(0x058CB1) == 0xC0FFFF) ||
               (unless(word(0x058E16) >= 0x270F) && high4(0x058DDB) == 0x08 && repeated(100, tbyte(0x058DB1) !=
                 0xC0FFFF) && tbyte(0x058DB1) == 0xC0FFFF) ||
               (unless(word(0x058F16) >= 0x270F) && high4(0x058EDB) == 0x08 && repeated(100, tbyte(0x058EB1) !=
                 0xC0FFFF) && tbyte(0x058EB1) == 0xC0FFFF))
)

achievement(
    title = "Jumping On Strings", description = "Master the Time Mage Class with any character", points = 5,
    id = 91073, badge = "99357", published = "12/17/2019 6:44:57 PM", modified = "2/13/2020 10:34:18 PM",
    trigger = never(byte(0x0578D4) > 0x50) && never(byte(0x0578D4) == 0x00) &&
              ((unless(word(0x058018) >= 0x270F) && low4(0x057FDB) == 0x08 && repeated(100, tbyte(0x057FB4) != 0xF8F0FF) && 
                tbyte(0x057FB4) == 0xF8F0FF) ||
               (unless(word(0x058118) >= 0x270F) && low4(0x0580DB) == 0x08 && repeated(100, tbyte(0x0580B4) != 0xF8F0FF) && 
                tbyte(0x0580B4) == 0xF8F0FF) ||
               (unless(word(0x058218) >= 0x270F) && low4(0x0581DB) == 0x08 && repeated(100, tbyte(0x0581B4) != 0xF8F0FF) && 
                tbyte(0x0581B4) == 0xF8F0FF) ||
               (unless(word(0x058318) >= 0x270F) && low4(0x0582DB) == 0x08 && repeated(100, tbyte(0x0582B4) != 0xF8F0FF) && 
                tbyte(0x0582B4) == 0xF8F0FF) ||
               (unless(word(0x058418) >= 0x270F) && low4(0x0583DB) == 0x08 && repeated(100, tbyte(0x0583B4) != 0xF8F0FF) && 
                tbyte(0x0583B4) == 0xF8F0FF) ||
               (unless(word(0x058518) >= 0x270F) && low4(0x0584DB) == 0x08 && repeated(100, tbyte(0x0584B4) != 0xF8F0FF) && 
                tbyte(0x0584B4) == 0xF8F0FF) ||
               (unless(word(0x058618) >= 0x270F) && low4(0x0585DB) == 0x08 && repeated(100, tbyte(0x0585B4) != 0xF8F0FF) && 
                tbyte(0x0585B4) == 0xF8F0FF) ||
               (unless(word(0x058718) >= 0x270F) && low4(0x0586DB) == 0x08 && repeated(100, tbyte(0x0586B4) != 0xF8F0FF) && 
                tbyte(0x0586B4) == 0xF8F0FF) ||
               (unless(word(0x058818) >= 0x270F) && low4(0x0587DB) == 0x08 && repeated(100, tbyte(0x0587B4) != 0xF8F0FF) && 
                tbyte(0x0587B4) == 0xF8F0FF) ||
               (unless(word(0x058918) >= 0x270F) && low4(0x0588DB) == 0x08 && repeated(100, tbyte(0x0588B4) != 0xF8F0FF) && 
                tbyte(0x0588B4) == 0xF8F0FF) ||
               (unless(word(0x058A18) >= 0x270F) && low4(0x0589DB) == 0x08 && repeated(100, tbyte(0x0589B4) != 0xF8F0FF) && 
                tbyte(0x0589B4) == 0xF8F0FF) ||
               (unless(word(0x058B18) >= 0x270F) && low4(0x058ADB) == 0x08 && repeated(100, tbyte(0x058AB4) != 0xF8F0FF) && 
                tbyte(0x058AB4) == 0xF8F0FF) ||
               (unless(word(0x058C18) >= 0x270F) && low4(0x058BDB) == 0x08 && repeated(100, tbyte(0x058BB4) != 0xF8F0FF) && 
                tbyte(0x058BB4) == 0xF8F0FF) ||
               (unless(word(0x058D18) >= 0x270F) && low4(0x058CDB) == 0x08 && repeated(100, tbyte(0x058CB4) != 0xF8F0FF) && 
                tbyte(0x058CB4) == 0xF8F0FF) ||
               (unless(word(0x058E18) >= 0x270F) && low4(0x058DDB) == 0x08 && repeated(100, tbyte(0x058DB4) != 0xF8F0FF) && 
                tbyte(0x058DB4) == 0xF8F0FF) ||
               (unless(word(0x058F18) >= 0x270F) && low4(0x058EDB) == 0x08 && repeated(100, tbyte(0x058EB4) != 0xF8F0FF) && 
                tbyte(0x058EB4) == 0xF8F0FF))
)

achievement(
    title = "Ivalice's Most Wanted", description = "Master the Thief Class with any character", points = 5,
    id = 91075, badge = "99748", published = "12/18/2019 5:28:58 PM", modified = "2/13/2020 10:34:26 PM",
    trigger = never(byte(0x0578D4) > 0x50) && never(byte(0x0578D4) == 0x00) &&
              ((unless(word(0x05801C) >= 0x270F) && low4(0x057FDC) == 0x08 && tbyte(0x057FBA) == 0xFC00FF && 
                repeated(100, tbyte(0x057FBA) != 0xFC00FF)) ||
               (unless(word(0x05811C) >= 0x270F) && low4(0x0580DC) == 0x08 && tbyte(0x0580BA) == 0xFC00FF && 
                repeated(100, tbyte(0x0580BA) != 0xFC00FF)) ||
               (unless(word(0x05821C) >= 0x270F) && low4(0x0581DC) == 0x08 && tbyte(0x0581BA) == 0xFC00FF && 
                repeated(100, tbyte(0x0581BA) != 0xFC00FF)) ||
               (unless(word(0x05831C) >= 0x270F) && low4(0x0582DC) == 0x08 && tbyte(0x0582BA) == 0xFC00FF && 
                repeated(100, tbyte(0x0582BA) != 0xFC00FF)) ||
               (unless(word(0x05841C) >= 0x270F) && low4(0x0583DC) == 0x08 && tbyte(0x0583BA) == 0xFC00FF && 
                repeated(100, tbyte(0x0583BA) != 0xFC00FF)) ||
               (unless(word(0x05851C) >= 0x270F) && low4(0x0584DC) == 0x08 && tbyte(0x0584BA) == 0xFC00FF && 
                repeated(100, tbyte(0x0584BA) != 0xFC00FF)) ||
               (unless(word(0x05861C) >= 0x270F) && low4(0x0585DC) == 0x08 && tbyte(0x0585BA) == 0xFC00FF && 
                repeated(100, tbyte(0x0585BA) != 0xFC00FF)) ||
               (unless(word(0x05871C) >= 0x270F) && low4(0x0586DC) == 0x08 && tbyte(0x0586BA) == 0xFC00FF && 
                repeated(100, tbyte(0x0586BA) != 0xFC00FF)) ||
               (unless(word(0x05881C) >= 0x270F) && low4(0x0587DC) == 0x08 && tbyte(0x0587BA) == 0xFC00FF && 
                repeated(100, tbyte(0x0587BA) != 0xFC00FF)) ||
               (unless(word(0x05891C) >= 0x270F) && low4(0x0588DC) == 0x08 && tbyte(0x0588BA) == 0xFC00FF && 
                repeated(100, tbyte(0x0588BA) != 0xFC00FF)) ||
               (unless(word(0x058A1C) >= 0x270F) && low4(0x0589DC) == 0x08 && tbyte(0x0589BA) == 0xFC00FF && 
                repeated(100, tbyte(0x0589BA) != 0xFC00FF)) ||
               (unless(word(0x058B1C) >= 0x270F) && low4(0x058ADC) == 0x08 && tbyte(0x058ABA) == 0xFC00FF && 
                repeated(100, tbyte(0x058ABA) != 0xFC00FF)) ||
               (unless(word(0x058C1C) >= 0x270F) && low4(0x058BDC) == 0x08 && tbyte(0x058BBA) == 0xFC00FF && 
                repeated(100, tbyte(0x058BBA) != 0xFC00FF)) ||
               (unless(word(0x058D1C) >= 0x270F) && low4(0x058CDC) == 0x08 && tbyte(0x058CBA) == 0xFC00FF && 
                repeated(100, tbyte(0x058CBA) != 0xFC00FF)) ||
               (unless(word(0x058E1C) >= 0x270F) && low4(0x058DDC) == 0x08 && tbyte(0x058DBA) == 0xFC00FF && 
                repeated(100, tbyte(0x058DBA) != 0xFC00FF)) ||
               (unless(word(0x058F1C) >= 0x270F) && low4(0x058EDC) == 0x08 && tbyte(0x058EBA) == 0xFC00FF && 
                repeated(100, tbyte(0x058EBA) != 0xFC00FF)))
)

achievement(
    title = "Rydia's Equal[m]", description = "Master the Summoner Class with any character(must learn Zodiac)", points = 10,
    id = 91076, badge = "99749", published = "12/18/2019 5:31:23 PM", modified = "8/23/2021 3:46:24 PM",
    trigger = never(byte(0x0578D4) > 0x50) && never(byte(0x0578D4) == 0x00) &&
              ((unless(word(0x05801A) >= 0x270F) && high4(0x057FDC) == 0x08 && repeated(100, tbyte(0x057FAB) !=
                 0xC0FFFF) && tbyte(0x057FB7) == 0xC0FFFF) ||
               (unless(word(0x05811A) >= 0x270F) && high4(0x0580DC) == 0x08 && repeated(100, tbyte(0x0580B7) !=
                 0xC0FFFF) && tbyte(0x0580B7) == 0xC0FFFF) ||
               (unless(word(0x05821A) >= 0x270F) && high4(0x0581DC) == 0x08 && repeated(100, tbyte(0x0581B7) !=
                 0xC0FFFF) && tbyte(0x0581B7) == 0xC0FFFF) ||
               (unless(word(0x05831A) >= 0x270F) && high4(0x0582DC) == 0x08 && repeated(100, tbyte(0x0582B7) !=
                 0xC0FFFF) && tbyte(0x0582B7) == 0xC0FFFF) ||
               (unless(word(0x05841A) >= 0x270F) && high4(0x0583DC) == 0x08 && repeated(100, tbyte(0x0583B7) !=
                 0xC0FFFF) && tbyte(0x0583B7) == 0xC0FFFF) ||
               (unless(word(0x05851A) >= 0x270F) && high4(0x0584DC) == 0x08 && repeated(100, tbyte(0x0584B7) !=
                 0xC0FFFF) && tbyte(0x0584B7) == 0xC0FFFF) ||
               (unless(word(0x05861A) >= 0x270F) && high4(0x0585DC) == 0x08 && repeated(100, tbyte(0x0585B7) !=
                 0xC0FFFF) && tbyte(0x0585B7) == 0xC0FFFF) ||
               (unless(word(0x05871A) >= 0x270F) && high4(0x0586DC) == 0x08 && repeated(100, tbyte(0x0586B7) !=
                 0xC0FFFF) && tbyte(0x0586B7) == 0xC0FFFF) ||
               (unless(word(0x05881A) >= 0x270F) && high4(0x0587DC) == 0x08 && repeated(100, tbyte(0x0587B7) !=
                 0xC0FFFF) && tbyte(0x0587B7) == 0xC0FFFF) ||
               (unless(word(0x05891A) >= 0x270F) && high4(0x0588DC) == 0x08 && repeated(100, tbyte(0x0588B7) !=
                 0xC0FFFF) && tbyte(0x0588B7) == 0xC0FFFF) ||
               (unless(word(0x058A1A) >= 0x270F) && high4(0x0589DC) == 0x08 && repeated(100, tbyte(0x0589B7) !=
                 0xC0FFFF) && tbyte(0x0589B7) == 0xC0FFFF) ||
               (unless(word(0x058B1A) >= 0x270F) && high4(0x058ADC) == 0x08 && repeated(100, tbyte(0x058AB7) !=
                 0xC0FFFF) && tbyte(0x058AB7) == 0xC0FFFF) ||
               (unless(word(0x058C1A) >= 0x270F) && high4(0x058BDC) == 0x08 && repeated(100, tbyte(0x058BB7) !=
                 0xC0FFFF) && tbyte(0x058BB7) == 0xC0FFFF) ||
               (unless(word(0x058D1A) >= 0x270F) && high4(0x058CDC) == 0x08 && repeated(100, tbyte(0x058CB7) !=
                 0xC0FFFF) && tbyte(0x058CB7) == 0xC0FFFF) ||
               (unless(word(0x058E1A) >= 0x270F) && high4(0x058DDC) == 0x08 && repeated(100, tbyte(0x058DB7) !=
                 0xC0FFFF) && tbyte(0x058DB7) == 0xC0FFFF) ||
               (unless(word(0x058F1A) >= 0x270F) && high4(0x058EDC) == 0x08 && repeated(100, tbyte(0x058EB7) !=
                 0xC0FFFF) && tbyte(0x058EB7) == 0xC0FFFF) ||
               (unless(word(0x1925E0) >= 0x270F) && byte(0x19257D) == 0xFF && byte(0x19257F) == 0xC0 && 
                prev(bit0(0x19257E)) == 0x00 && bit0(0x19257E) == 0x01 && byte(0x19257E) == 0xFF) ||
               (unless(word(0x1927A0) >= 0x270F) && byte(0x19273D) == 0xFF && byte(0x19273F) == 0xC0 && 
                prev(bit0(0x19273E)) == 0x00 && bit0(0x19273E) == 0x01 && byte(0x19273E) == 0xFF) ||
               (unless(word(0x192960) >= 0x270F) && byte(0x1928FD) == 0xFF && byte(0x1928FF) == 0xC0 && 
                prev(bit0(0x1928FE)) == 0x00 && bit0(0x1928FE) == 0x01 && byte(0x1928FE) == 0xFF) ||
               (unless(word(0x192B20) >= 0x270F) && byte(0x192ABD) == 0xFF && byte(0x192ABF) == 0xC0 && 
                prev(bit0(0x192ABE)) == 0x00 && bit0(0x192ABE) == 0x01 && byte(0x192ABE) == 0xFF) ||
               (unless(word(0x192CE0) >= 0x270F) && byte(0x192C7D) == 0xFF && byte(0x192C7F) == 0xC0 && 
                prev(bit0(0x192C7E)) == 0x00 && bit0(0x192C7E) == 0x01 && byte(0x192C7E) == 0xFF))
)

achievement(
    title = "Hear No Evil, See No Evil, Say No Evil", description = "Master the Oracle Class with any character", points = 5,
    id = 91077, badge = "99750", published = "12/18/2019 5:33:18 PM", modified = "2/13/2020 10:34:38 PM",
    trigger = never(byte(0x0578D4) > 0x50) && never(byte(0x0578D4) == 0x00) &&
              ((unless(word(0x058020) >= 0x270F) && low4(0x057FDD) == 0x08 && repeated(100, tbyte(0x057FC0) != 0xF0FCFF) && 
                tbyte(0x057FC0) == 0xF0FCFF) ||
               (unless(word(0x058120) >= 0x270F) && low4(0x0580DD) == 0x08 && repeated(100, tbyte(0x0580C0) != 0xF0FCFF) && 
                tbyte(0x0580C0) == 0xF0FCFF) ||
               (unless(word(0x058220) >= 0x270F) && low4(0x0581DD) == 0x08 && repeated(100, tbyte(0x0581C0) != 0xF0FCFF) && 
                tbyte(0x0581C0) == 0xF0FCFF) ||
               (unless(word(0x058320) >= 0x270F) && low4(0x0582DD) == 0x08 && repeated(100, tbyte(0x0582C0) != 0xF0FCFF) && 
                tbyte(0x0582C0) == 0xF0FCFF) ||
               (unless(word(0x058420) >= 0x270F) && low4(0x0583DD) == 0x08 && repeated(100, tbyte(0x0583C0) != 0xF0FCFF) && 
                tbyte(0x0583C0) == 0xF0FCFF) ||
               (unless(word(0x058520) >= 0x270F) && low4(0x0584DD) == 0x08 && repeated(100, tbyte(0x0584C0) != 0xF0FCFF) && 
                tbyte(0x0584C0) == 0xF0FCFF) ||
               (unless(word(0x058620) >= 0x270F) && low4(0x0585DD) == 0x08 && repeated(100, tbyte(0x0585C0) != 0xF0FCFF) && 
                tbyte(0x0585C0) == 0xF0FCFF) ||
               (unless(word(0x058720) >= 0x270F) && low4(0x0586DD) == 0x08 && repeated(100, tbyte(0x0586C0) != 0xF0FCFF) && 
                tbyte(0x0586C0) == 0xF0FCFF) ||
               (unless(word(0x058820) >= 0x270F) && low4(0x0587DD) == 0x08 && repeated(100, tbyte(0x0587C0) != 0xF0FCFF) && 
                tbyte(0x0587C0) == 0xF0FCFF) ||
               (unless(word(0x058920) >= 0x270F) && low4(0x0588DD) == 0x08 && repeated(100, tbyte(0x0588C0) != 0xF0FCFF) && 
                tbyte(0x0588C0) == 0xF0FCFF) ||
               (unless(word(0x058C00) >= 0x270F) && low4(0x0589DD) == 0x08 && repeated(100, tbyte(0x0589C0) != 0xF0FCFF) && 
                tbyte(0x0589C0) == 0xF0FCFF) ||
               (unless(word(0x058B20) >= 0x270F) && low4(0x058ADD) == 0x08 && repeated(100, tbyte(0x058AC0) != 0xF0FCFF) && 
                tbyte(0x058AC0) == 0xF0FCFF) ||
               (unless(word(0x058C20) >= 0x270F) && low4(0x058BDD) == 0x08 && repeated(100, tbyte(0x058BC0) != 0xF0FCFF) && 
                tbyte(0x058BC0) == 0xF0FCFF) ||
               (unless(word(0x058D20) >= 0x270F) && low4(0x058CDD) == 0x08 && repeated(100, tbyte(0x058CC0) != 0xF0FCFF) && 
                tbyte(0x058CC0) == 0xF0FCFF) ||
               (unless(word(0x058E20) >= 0x270F) && low4(0x058DDD) == 0x08 && repeated(100, tbyte(0x058DC0) != 0xF0FCFF) && 
                tbyte(0x058DC0) == 0xF0FCFF) ||
               (unless(word(0x058F20) >= 0x270F) && low4(0x058EDD) == 0x08 && repeated(100, tbyte(0x058EC0) != 0xF0FCFF) && 
                tbyte(0x058EC0) == 0xF0FCFF))
)

achievement(
    title = "Daravon's Pupil", description = "Masters the Mediator Class with any character", points = 5,
    id = 91078, badge = "99751", published = "12/18/2019 5:35:11 PM", modified = "2/13/2020 10:34:44 PM",
    trigger = never(byte(0x0578D4) > 0x50) && never(byte(0x0578D4) == 0x00) &&
              ((unless(word(0x05801E) >= 0x270F) && high4(0x057FDD) == 0x08 && repeated(100, tbyte(0x057FBD) !=
                 0xF0C0FF) && tbyte(0x057FBD) == 0xF0C0FF) ||
               (unless(word(0x05811E) >= 0x270F) && high4(0x0580DD) == 0x08 && repeated(100, tbyte(0x0580BD) !=
                 0xF0C0FF) && tbyte(0x0580BD) == 0xF0C0FF) ||
               (unless(word(0x05821E) >= 0x270F) && high4(0x0581DD) == 0x08 && repeated(100, tbyte(0x0581BD) !=
                 0xF0C0FF) && tbyte(0x0581BD) == 0xF0C0FF) ||
               (unless(word(0x05831E) >= 0x270F) && high4(0x0582DD) == 0x08 && repeated(100, tbyte(0x0582BD) !=
                 0xF0C0FF) && tbyte(0x0582BD) == 0xF0C0FF) ||
               (unless(word(0x05841E) >= 0x270F) && high4(0x0583DD) == 0x08 && repeated(100, tbyte(0x0583BD) !=
                 0xF0C0FF) && tbyte(0x0583BD) == 0xF0C0FF) ||
               (unless(word(0x05851E) >= 0x270F) && high4(0x0584DD) == 0x08 && repeated(100, tbyte(0x0584BD) !=
                 0xF0C0FF) && tbyte(0x0584BD) == 0xF0C0FF) ||
               (unless(word(0x05861E) >= 0x270F) && high4(0x0585DD) == 0x08 && repeated(100, tbyte(0x0585BD) !=
                 0xF0C0FF) && tbyte(0x0585BD) == 0xF0C0FF) ||
               (unless(word(0x05871E) >= 0x270F) && high4(0x0586DD) == 0x08 && repeated(100, tbyte(0x0586BD) !=
                 0xF0C0FF) && tbyte(0x0586BD) == 0xF0C0FF) ||
               (unless(word(0x05881E) >= 0x270F) && high4(0x0587DD) == 0x08 && repeated(100, tbyte(0x0587BD) !=
                 0xF0C0FF) && tbyte(0x0587BD) == 0xF0C0FF) ||
               (unless(word(0x05891E) >= 0x270F) && high4(0x0588DD) == 0x08 && repeated(100, tbyte(0x0588BD) !=
                 0xF0C0FF) && tbyte(0x0588BD) == 0xF0C0FF) ||
               (unless(word(0x058A1E) >= 0x270F) && high4(0x0589DD) == 0x08 && repeated(100, tbyte(0x0589BD) !=
                 0xF0C0FF) && tbyte(0x0589BD) == 0xF0C0FF) ||
               (unless(word(0x058B1E) >= 0x270F) && high4(0x058ADD) == 0x08 && repeated(100, tbyte(0x058ABD) !=
                 0xF0C0FF) && tbyte(0x058ABD) == 0xF0C0FF) ||
               (unless(word(0x058C1E) >= 0x270F) && high4(0x058BDD) == 0x08 && repeated(100, tbyte(0x058BBD) !=
                 0xF0C0FF) && tbyte(0x058BBD) == 0xF0C0FF) ||
               (unless(word(0x058D1E) >= 0x270F) && high4(0x058CDD) == 0x08 && repeated(100, tbyte(0x058CBD) !=
                 0xF0C0FF) && tbyte(0x058CBD) == 0xF0C0FF) ||
               (unless(word(0x058E1E) >= 0x270F) && high4(0x058DDD) == 0x08 && repeated(100, tbyte(0x058DBD) !=
                 0xF0C0FF) && tbyte(0x058DBD) == 0xF0C0FF) ||
               (unless(word(0x058F1E) >= 0x270F) && high4(0x058EDD) == 0x08 && repeated(100, tbyte(0x058EBD) !=
                 0xF0C0FF) && tbyte(0x058EBD) == 0xF0C0FF))
)

achievement(
    title = "White Boys CAN Jump", description = "Master the Lancer Class with any character", points = 5,
    id = 91079, badge = "99752", published = "12/18/2019 5:39:26 PM", modified = "2/13/2020 10:33:27 PM",
    trigger = never(byte(0x0578D4) > 0x50) && never(byte(0x0578D4) == 0x00) &&
              ((unless(word(0x058024) >= 0x270F) && low4(0x057FDE) == 0x08 && repeated(100, tbyte(0x057FC6) != 0xE0F0FF) && 
                tbyte(0x057FC6) == 0xE0F0FF) ||
               (unless(word(0x058124) >= 0x270F) && low4(0x0580DE) == 0x08 && repeated(100, tbyte(0x0580C6) != 0xE0F0FF) && 
                tbyte(0x0580C6) == 0xE0F0FF) ||
               (unless(word(0x058224) >= 0x270F) && low4(0x0581DE) == 0x08 && repeated(100, tbyte(0x0581C6) != 0xE0F0FF) && 
                tbyte(0x0581C6) == 0xE0F0FF) ||
               (unless(word(0x058324) >= 0x270F) && low4(0x0582DE) == 0x08 && repeated(100, tbyte(0x0582C6) != 0xE0F0FF) && 
                tbyte(0x0582C6) == 0xE0F0FF) ||
               (unless(word(0x058424) >= 0x270F) && low4(0x0583DE) == 0x08 && repeated(100, tbyte(0x0583C6) != 0xE0F0FF) && 
                tbyte(0x0583C6) == 0xE0F0FF) ||
               (unless(word(0x058524) >= 0x270F) && low4(0x0584DE) == 0x08 && repeated(100, tbyte(0x0584C6) != 0xE0F0FF) && 
                tbyte(0x0584C6) == 0xE0F0FF) ||
               (unless(word(0x058624) >= 0x270F) && low4(0x0585DE) == 0x08 && repeated(100, tbyte(0x0585C6) != 0xE0F0FF) && 
                tbyte(0x0585C6) == 0xE0F0FF) ||
               (unless(word(0x058724) >= 0x270F) && low4(0x0586DE) == 0x08 && repeated(100, tbyte(0x0586C6) != 0xE0F0FF) && 
                tbyte(0x0586C6) == 0xE0F0FF) ||
               (unless(word(0x058824) >= 0x270F) && low4(0x0587DE) == 0x08 && repeated(100, tbyte(0x0587C6) != 0xE0F0FF) && 
                tbyte(0x0587C6) == 0xE0F0FF) ||
               (unless(word(0x058924) >= 0x270F) && low4(0x0588DE) == 0x08 && repeated(100, tbyte(0x0588C6) != 0xE0F0FF) && 
                tbyte(0x0588C6) == 0xE0F0FF) ||
               (unless(word(0x058A24) >= 0x270F) && low4(0x0589DE) == 0x08 && repeated(100, tbyte(0x0589C6) != 0xE0F0FF) && 
                tbyte(0x0589C6) == 0xE0F0FF) ||
               (unless(word(0x058B24) >= 0x270F) && low4(0x058ADE) == 0x08 && repeated(100, tbyte(0x058AC6) != 0xE0F0FF) && 
                tbyte(0x058AC6) == 0xE0F0FF) ||
               (unless(word(0x058C24) >= 0x270F) && low4(0x058BDE) == 0x08 && repeated(100, tbyte(0x058BC6) != 0xE0F0FF) && 
                tbyte(0x058BC6) == 0xE0F0FF) ||
               (unless(word(0x058D24) >= 0x270F) && low4(0x058CDE) == 0x08 && repeated(100, tbyte(0x058CC6) != 0xE0F0FF) && 
                tbyte(0x058CC6) == 0xE0F0FF) ||
               (unless(word(0x058E24) >= 0x270F) && low4(0x058DDE) == 0x08 && repeated(100, tbyte(0x058DC6) != 0xE0F0FF) && 
                tbyte(0x058DC6) == 0xE0F0FF) ||
               (unless(word(0x058F24) >= 0x270F) && low4(0x058EDE) == 0x08 && repeated(100, tbyte(0x058EC6) != 0xE0F0FF) && 
                tbyte(0x058EC6) == 0xE0F0FF))
)

achievement(
    title = "Master Of the Elements", description = "Master the Geomancer class with any character", points = 5,
    id = 91080, badge = "99753", published = "12/18/2019 5:41:26 PM", modified = "2/13/2020 10:34:52 PM",
    trigger = never(byte(0x0578D4) > 0x50) && never(byte(0x0578D4) == 0x00) &&
              ((unless(word(0x058022) >= 0x270F) && high4(0x057FDE) == 0x08 && repeated(100, tbyte(0x057FC3) !=
                 0xF0F0FF) && tbyte(0x057FC3) == 0xF0F0FF) ||
               (unless(word(0x058122) >= 0x270F) && high4(0x0580DE) == 0x08 && repeated(100, tbyte(0x0580C3) !=
                 0xF0F0FF) && tbyte(0x0580C3) == 0xF0F0FF) ||
               (unless(word(0x058222) >= 0x270F) && high4(0x0581DE) == 0x08 && repeated(100, tbyte(0x0581C3) !=
                 0xF0F0FF) && tbyte(0x0581C3) == 0xF0F0FF) ||
               (unless(word(0x058322) >= 0x270F) && high4(0x0582DE) == 0x08 && repeated(100, tbyte(0x0582C3) !=
                 0xF0F0FF) && tbyte(0x0582C3) == 0xF0F0FF) ||
               (unless(word(0x058422) >= 0x270F) && high4(0x0583DE) == 0x08 && repeated(100, tbyte(0x0583C3) !=
                 0xF0F0FF) && tbyte(0x0583C3) == 0xF0F0FF) ||
               (unless(word(0x058522) >= 0x270F) && high4(0x0584DE) == 0x08 && repeated(100, tbyte(0x0584C3) !=
                 0xF0F0FF) && tbyte(0x0584C3) == 0xF0F0FF) ||
               (unless(word(0x058622) >= 0x270F) && high4(0x0585DE) == 0x08 && repeated(100, tbyte(0x0585C3) !=
                 0xF0F0FF) && tbyte(0x0585C3) == 0xF0F0FF) ||
               (unless(word(0x058722) >= 0x270F) && high4(0x0586DE) == 0x08 && repeated(100, tbyte(0x0586C3) !=
                 0xF0F0FF) && tbyte(0x0586C3) == 0xF0F0FF) ||
               (unless(word(0x058822) >= 0x270F) && high4(0x0587DE) == 0x08 && repeated(100, tbyte(0x0587C3) !=
                 0xF0F0FF) && tbyte(0x0587C3) == 0xF0F0FF) ||
               (unless(word(0x058922) >= 0x270F) && high4(0x0588DE) == 0x08 && repeated(100, tbyte(0x0588C3) !=
                 0xF0F0FF) && tbyte(0x0588C3) == 0xF0F0FF) ||
               (unless(word(0x058A22) >= 0x270F) && high4(0x0589DE) == 0x08 && repeated(100, tbyte(0x0589C3) !=
                 0xF0F0FF) && tbyte(0x0589C3) == 0xF0F0FF) ||
               (unless(word(0x058B22) >= 0x270F) && high4(0x058ADE) == 0x08 && repeated(100, tbyte(0x058AC3) !=
                 0xF0F0FF) && tbyte(0x058AC3) == 0xF0F0FF) ||
               (unless(word(0x058C22) >= 0x270F) && high4(0x058BDE) == 0x08 && repeated(100, tbyte(0x058BC3) !=
                 0xF0F0FF) && tbyte(0x058BC3) == 0xF0F0FF) ||
               (unless(word(0x058D22) >= 0x270F) && high4(0x058CDE) == 0x08 && repeated(100, tbyte(0x058CC3) !=
                 0xF0F0FF) && tbyte(0x058CC3) == 0xF0F0FF) ||
               (unless(word(0x058E22) >= 0x270F) && high4(0x058DDE) == 0x08 && repeated(100, tbyte(0x058DC3) !=
                 0xF0F0FF) && tbyte(0x058DC3) == 0xF0F0FF) ||
               (unless(word(0x058F22) >= 0x270F) && high4(0x058EDE) == 0x08 && repeated(100, tbyte(0x058EC3) !=
                 0xF0F0FF) && tbyte(0x058EC3) == 0xF0F0FF))
)

achievement(
    title = "In The Shadows", description = "Master the Ninja Class with any character", points = 5,
    id = 91081, badge = "99754", published = "12/18/2019 5:43:38 PM", modified = "12/2/2020 9:22:31 PM",
    trigger = never(byte(0x0578D4) > 0x50) && never(byte(0x0578D4) == 0x00) &&
              ((unless(word(0x058028) >= 0x270F) && low4(0x057FDF) == 0x08 && repeated(100, tbyte(0x057FCC) != 0xF0F0FF) && 
                tbyte(0x057FCC) == 0xF0F0FF) ||
               (unless(word(0x058128) >= 0x270F) && low4(0x0580DF) == 0x08 && repeated(100, tbyte(0x0580CC) != 0xF0F0FF) && 
                tbyte(0x0580CC) == 0xF0F0FF) ||
               (unless(word(0x058228) >= 0x270F) && low4(0x0581DF) == 0x08 && repeated(100, tbyte(0x0581CC) != 0xF0F0FF) && 
                tbyte(0x0581CC) == 0xF0F0FF) ||
               (unless(word(0x058328) >= 0x270F) && low4(0x0582DF) == 0x08 && repeated(100, tbyte(0x0582CC) != 0xF0F0FF) && 
                tbyte(0x0582CC) == 0xF0F0FF) ||
               (unless(word(0x058428) >= 0x270F) && low4(0x0583DF) == 0x08 && repeated(100, tbyte(0x0583CC) != 0xF0F0FF) && 
                tbyte(0x0583CC) == 0xF0F0FF) ||
               (unless(word(0x058528) >= 0x270F) && low4(0x0584DF) == 0x08 && repeated(100, tbyte(0x0584CC) != 0xF0F0FF) && 
                tbyte(0x0584CC) == 0xF0F0FF) ||
               (unless(word(0x058628) >= 0x270F) && low4(0x0585DF) == 0x08 && repeated(100, tbyte(0x0585CC) != 0xF0F0FF) && 
                tbyte(0x0585CC) == 0xF0F0FF) ||
               (unless(word(0x058728) >= 0x270F) && low4(0x0586DF) == 0x08 && repeated(100, tbyte(0x0586CC) != 0xF0F0FF) && 
                tbyte(0x0586CC) == 0xF0F0FF) ||
               (unless(word(0x058828) >= 0x270F) && low4(0x0587DF) == 0x08 && repeated(100, tbyte(0x0587CC) != 0xF0F0FF) && 
                tbyte(0x0587CC) == 0xF0F0FF) ||
               (unless(word(0x058928) >= 0x270F) && low4(0x0588DF) == 0x08 && repeated(100, tbyte(0x0588CC) != 0xF0F0FF) && 
                tbyte(0x0588CC) == 0xF0F0FF) ||
               (unless(word(0x058A28) >= 0x270F) && low4(0x0589DF) == 0x08 && repeated(100, tbyte(0x0589CC) != 0xF0F0FF) && 
                tbyte(0x0589CC) == 0xF0F0FF) ||
               (unless(word(0x058B28) >= 0x270F) && low4(0x058ADF) == 0x08 && repeated(100, tbyte(0x058ACC) != 0xF0F0FF) && 
                tbyte(0x058ACC) == 0xF0F0FF) ||
               (unless(word(0x058C28) >= 0x270F) && low4(0x058BDF) == 0x08 && repeated(100, tbyte(0x058BCC) != 0xF0F0FF) && 
                tbyte(0x058BCC) == 0xF0F0FF) ||
               (unless(word(0x058D28) >= 0x270F) && low4(0x058CDF) == 0x08 && repeated(100, tbyte(0x058CCC) != 0xF0F0FF) && 
                tbyte(0x058CCC) == 0xF0F0FF) ||
               (unless(word(0x058E28) >= 0x270F) && low4(0x058DDF) == 0x08 && repeated(100, tbyte(0x058DCC) != 0xF0F0FF) && 
                tbyte(0x058DCC) == 0xF0F0FF) ||
               (unless(word(0x058F28) >= 0x270F) && low4(0x058EDF) == 0x08 && repeated(100, tbyte(0x058ECC) != 0xF0F0FF) && 
                tbyte(0x058ECC) == 0xF0F0FF))
)

achievement(
    title = "Soul Searcher", description = "Master the Samurai Class with any character", points = 5,
    id = 91082, badge = "99755", published = "12/18/2019 5:46:11 PM", modified = "2/13/2020 10:35:04 PM",
    trigger = never(byte(0x0578D4) > 0x50) && never(byte(0x0578D4) == 0x00) &&
              ((unless(word(0x058026) >= 0x270F) && high4(0x057FDF) == 0x08 && repeated(100, tbyte(0x057FC9) !=
                 0xF8C0FF) && tbyte(0x057FC9) == 0xF8C0FF) ||
               (unless(word(0x058126) >= 0x270F) && high4(0x0580DF) == 0x08 && repeated(100, tbyte(0x0580C9) !=
                 0xF8C0FF) && tbyte(0x0580C9) == 0xF8C0FF) ||
               (unless(word(0x058226) >= 0x270F) && high4(0x0581DF) == 0x08 && repeated(100, tbyte(0x0581C9) !=
                 0xF8C0FF) && tbyte(0x0581C9) == 0xF8C0FF) ||
               (unless(word(0x058326) >= 0x270F) && high4(0x0582DF) == 0x08 && repeated(100, tbyte(0x0582C9) !=
                 0xF8C0FF) && tbyte(0x0582C9) == 0xF8C0FF) ||
               (unless(word(0x058426) >= 0x270F) && high4(0x0583DF) == 0x08 && repeated(100, tbyte(0x0583C9) !=
                 0xF8C0FF) && tbyte(0x0583C9) == 0xF8C0FF) ||
               (unless(word(0x058526) >= 0x270F) && high4(0x0584DF) == 0x08 && repeated(100, tbyte(0x0584C9) !=
                 0xF8C0FF) && tbyte(0x0584C9) == 0xF8C0FF) ||
               (unless(word(0x058626) >= 0x270F) && high4(0x0585DF) == 0x08 && repeated(100, tbyte(0x0585C9) !=
                 0xF8C0FF) && tbyte(0x0585C9) == 0xF8C0FF) ||
               (unless(word(0x058726) >= 0x270F) && high4(0x0586DF) == 0x08 && repeated(100, tbyte(0x0586C9) !=
                 0xF8C0FF) && tbyte(0x0586C9) == 0xF8C0FF) ||
               (unless(word(0x058826) >= 0x270F) && high4(0x0587DF) == 0x08 && repeated(100, tbyte(0x0587C9) !=
                 0xF8C0FF) && tbyte(0x0587C9) == 0xF8C0FF) ||
               (unless(word(0x058926) >= 0x270F) && high4(0x0588DF) == 0x08 && repeated(100, tbyte(0x0588C9) !=
                 0xF8C0FF) && tbyte(0x0588C9) == 0xF8C0FF) ||
               (unless(word(0x058A26) >= 0x270F) && high4(0x0589DF) == 0x08 && repeated(100, tbyte(0x0589C9) !=
                 0xF8C0FF) && tbyte(0x0589C9) == 0xF8C0FF) ||
               (unless(word(0x058B26) >= 0x270F) && high4(0x058ADF) == 0x08 && repeated(100, tbyte(0x058AC9) !=
                 0xF8C0FF) && tbyte(0x058AC9) == 0xF8C0FF) ||
               (unless(word(0x058C26) >= 0x270F) && high4(0x058BDF) == 0x08 && repeated(100, tbyte(0x058BC9) !=
                 0xF8C0FF) && tbyte(0x058BC9) == 0xF8C0FF) ||
               (unless(word(0x058D26) >= 0x270F) && high4(0x058CDF) == 0x08 && repeated(100, tbyte(0x058CC9) !=
                 0xF8C0FF) && tbyte(0x058CC9) == 0xF8C0FF) ||
               (unless(word(0x058E26) >= 0x270F) && high4(0x058DDF) == 0x08 && repeated(100, tbyte(0x058DC9) !=
                 0xF8C0FF) && tbyte(0x058DC9) == 0xF8C0FF) ||
               (unless(word(0x058F26) >= 0x270F) && high4(0x058EDF) == 0x08 && repeated(100, tbyte(0x058EC9) !=
                 0xF8C0FF) && tbyte(0x058EC9) == 0xF8C0FF))
)

achievement(
    title = "Golden Voice", description = "Master the Bard Class with any character", points = 5,
    id = 91083, badge = "99756", published = "12/18/2019 5:47:44 PM", modified = "2/13/2020 10:35:11 PM",
    trigger = never(byte(0x0578D4) > 0x50) && never(byte(0x0578D4) == 0x00) &&
              ((unless(word(0x05802C) >= 0x270F) && low4(0x057FE0) == 0x08 && repeated(100, tbyte(0x057FD2) != 0xF000FE) && 
                tbyte(0x057FD2) == 0xF000FE) ||
               (unless(word(0x05812C) >= 0x270F) && low4(0x0580E0) == 0x08 && repeated(100, tbyte(0x0580D2) != 0xF000FE) && 
                tbyte(0x0580D2) == 0xF000FE) ||
               (unless(word(0x05822C) >= 0x270F) && low4(0x0581E0) == 0x08 && repeated(100, tbyte(0x0581D2) != 0xF000FE) && 
                tbyte(0x0581D2) == 0xF000FE) ||
               (unless(word(0x05832C) >= 0x270F) && low4(0x0582E0) == 0x08 && repeated(100, tbyte(0x0582D2) != 0xF000FE) && 
                tbyte(0x0582D2) == 0xF000FE) ||
               (unless(word(0x05842C) >= 0x270F) && low4(0x0583E0) == 0x08 && repeated(100, tbyte(0x0583D2) != 0xF000FE) && 
                tbyte(0x0583D2) == 0xF000FE) ||
               (unless(word(0x05852C) >= 0x270F) && low4(0x0584E0) == 0x08 && repeated(100, tbyte(0x0584D2) != 0xF000FE) && 
                tbyte(0x0584D2) == 0xF000FE) ||
               (unless(word(0x05862C) >= 0x270F) && low4(0x0585E0) == 0x08 && repeated(100, tbyte(0x0585D2) != 0xF000FE) && 
                tbyte(0x0585D2) == 0xF000FE) ||
               (unless(word(0x05872C) >= 0x270F) && low4(0x0586E0) == 0x08 && repeated(100, tbyte(0x0586D2) != 0xF000FE) && 
                tbyte(0x0586D2) == 0xF000FE) ||
               (unless(word(0x05882C) >= 0x270F) && low4(0x0587E0) == 0x08 && repeated(100, tbyte(0x0587D2) != 0xF000FE) && 
                tbyte(0x0587D2) == 0xF000FE) ||
               (unless(word(0x05892C) >= 0x270F) && low4(0x0588E0) == 0x08 && repeated(100, tbyte(0x0588D2) != 0xF000FE) && 
                tbyte(0x0588D2) == 0xF000FE) ||
               (unless(word(0x058D2C) >= 0x270F) && low4(0x0589E0) == 0x08 && repeated(100, tbyte(0x0589D2) != 0xF000FE) && 
                tbyte(0x0589D2) == 0xF000FE) ||
               (unless(word(0x058B2C) >= 0x270F) && low4(0x058AE0) == 0x08 && repeated(100, tbyte(0x058AD2) != 0xF000FE) && 
                tbyte(0x058AD2) == 0xF000FE) ||
               (unless(word(0x058C2C) >= 0x270F) && low4(0x058BE0) == 0x08 && repeated(100, tbyte(0x058BD2) != 0xF000FE) && 
                tbyte(0x058BD2) == 0xF000FE) ||
               (unless(word(0x058D2C) >= 0x270F) && low4(0x058CE0) == 0x08 && repeated(100, tbyte(0x058CD2) != 0xF000FE) && 
                tbyte(0x058CD2) == 0xF000FE) ||
               (unless(word(0x058E2C) >= 0x270F) && low4(0x058DE0) == 0x08 && repeated(100, tbyte(0x058DD2) != 0xF000FE) && 
                tbyte(0x058DD2) == 0xF000FE) ||
               (unless(word(0x058F2C) >= 0x270F) && low4(0x058EE0) == 0x08 && repeated(100, tbyte(0x058ED2) != 0xF000FE) && 
                tbyte(0x058ED2) == 0xF000FE))
)

achievement(
    title = "Math Wizard", description = "Master the Calculator Class with any character", points = 5,
    id = 91084, badge = "99757", published = "12/18/2019 5:49:33 PM", modified = "2/13/2020 10:35:17 PM",
    trigger = never(byte(0x0578D4) > 0x50) && never(byte(0x0578D4) == 0x00) &&
              ((unless(word(0x05802A) >= 0x270F) && high4(0x057FE0) == 0x08 && repeated(100, tbyte(0x057FCF) !=
                 0xF800FF) && tbyte(0x057FCF) == 0xF800FF) ||
               (unless(word(0x05812A) >= 0x270F) && high4(0x0580E0) == 0x08 && repeated(100, tbyte(0x0580CF) !=
                 0xF800FF) && tbyte(0x0580CF) == 0xF800FF) ||
               (unless(word(0x05822A) >= 0x270F) && high4(0x0581E0) == 0x08 && repeated(100, tbyte(0x0581CF) !=
                 0xF800FF) && tbyte(0x0581CF) == 0xF800FF) ||
               (unless(word(0x05832A) >= 0x270F) && high4(0x0582E0) == 0x08 && repeated(100, tbyte(0x0582CF) !=
                 0xF800FF) && tbyte(0x0582CF) == 0xF800FF) ||
               (unless(word(0x05842A) >= 0x270F) && high4(0x0583E0) == 0x08 && repeated(100, tbyte(0x0583CF) !=
                 0xF800FF) && tbyte(0x0583CF) == 0xF800FF) ||
               (unless(word(0x05852A) >= 0x270F) && high4(0x0584E0) == 0x08 && repeated(100, tbyte(0x0584CF) !=
                 0xF800FF) && tbyte(0x0584CF) == 0xF800FF) ||
               (unless(word(0x05862A) >= 0x270F) && high4(0x0585E0) == 0x08 && repeated(100, tbyte(0x0585CF) !=
                 0xF800FF) && tbyte(0x0585CF) == 0xF800FF) ||
               (unless(word(0x05872A) >= 0x270F) && high4(0x0586E0) == 0x08 && repeated(100, tbyte(0x0586CF) !=
                 0xF800FF) && tbyte(0x0586CF) == 0xF800FF) ||
               (unless(word(0x05882A) >= 0x270F) && high4(0x0587E0) == 0x08 && repeated(100, tbyte(0x0587CF) !=
                 0xF800FF) && tbyte(0x0587CF) == 0xF800FF) ||
               (unless(word(0x05892A) >= 0x270F) && high4(0x0588E0) == 0x08 && repeated(100, tbyte(0x0588CF) !=
                 0xF800FF) && tbyte(0x0588CF) == 0xF800FF) ||
               (unless(word(0x058A2A) >= 0x270F) && high4(0x0589E0) == 0x08 && repeated(100, tbyte(0x0589CF) !=
                 0xF800FF) && tbyte(0x0589CF) == 0xF800FF) ||
               (unless(word(0x058B2A) >= 0x270F) && high4(0x058AE0) == 0x08 && repeated(100, tbyte(0x058ACF) !=
                 0xF800FF) && tbyte(0x058ACF) == 0xF800FF) ||
               (unless(word(0x058C2A) >= 0x270F) && high4(0x058BE0) == 0x08 && repeated(100, tbyte(0x058BCF) !=
                 0xF800FF) && tbyte(0x058BCF) == 0xF800FF) ||
               (unless(word(0x058D2A) >= 0x270F) && high4(0x058CE0) == 0x08 && repeated(100, tbyte(0x058CCF) !=
                 0xF800FF) && tbyte(0x058CCF) == 0xF800FF) ||
               (unless(word(0x058E2A) >= 0x270F) && high4(0x058DE0) == 0x08 && repeated(100, tbyte(0x058DCF) !=
                 0xF800FF) && tbyte(0x058DCF) == 0xF800FF) ||
               (unless(word(0x058F2A) >= 0x270F) && high4(0x058EE0) == 0x08 && repeated(100, tbyte(0x058ECF) !=
                 0xF800FF) && tbyte(0x058ECF) == 0xF800FF))
)

achievement(
    title = "No Longer the Backup", description = "Master the Dancer Class with any character", points = 5,
    id = 91109, badge = "99758", published = "12/18/2019 10:30:29 PM", modified = "2/13/2020 10:35:23 PM",
    trigger = never(byte(0x0578D4) > 0x50) && never(byte(0x0578D4) == 0x00) &&
              ((unless(word(0x05812E) >= 0x270F) && high4(0x0580E1) == 0x08 && repeated(100, tbyte(0x0580D5) !=
                 0xF000FE) && tbyte(0x0580D5) == 0xF000FE) ||
               (unless(word(0x05822E) >= 0x270F) && high4(0x0581E1) == 0x08 && repeated(100, tbyte(0x0581D5) !=
                 0xF000FE) && tbyte(0x0581D5) == 0xF000FE) ||
               (unless(word(0x05832E) >= 0x270F) && high4(0x0582E1) == 0x08 && repeated(100, tbyte(0x0582D5) !=
                 0xF000FE) && tbyte(0x0582D5) == 0xF000FE) ||
               (unless(word(0x05842E) >= 0x270F) && high4(0x0583E1) == 0x08 && repeated(100, tbyte(0x0583D5) !=
                 0xF000FE) && tbyte(0x0583D5) == 0xF000FE) ||
               (unless(word(0x05852E) >= 0x270F) && high4(0x0584E1) == 0x08 && repeated(100, tbyte(0x0584D5) !=
                 0xF000FE) && tbyte(0x0584D5) == 0xF000FE) ||
               (unless(word(0x05862E) >= 0x270F) && high4(0x0585E1) == 0x08 && repeated(100, tbyte(0x0585D5) !=
                 0xF000FE) && tbyte(0x0585D5) == 0xF000FE) ||
               (unless(word(0x05872E) >= 0x270F) && high4(0x0586E1) == 0x08 && repeated(100, tbyte(0x0586D5) !=
                 0xF000FE) && tbyte(0x0586D5) == 0xF000FE) ||
               (unless(word(0x05882E) >= 0x270F) && high4(0x0587E1) == 0x08 && repeated(100, tbyte(0x0587D5) !=
                 0xF000FE) && tbyte(0x0587D5) == 0xF000FE) ||
               (unless(word(0x05892E) >= 0x270F) && high4(0x0588E1) == 0x08 && repeated(100, tbyte(0x0588D5) !=
                 0xF000FE) && tbyte(0x0588D5) == 0xF000FE) ||
               (unless(word(0x058A2E) >= 0x270F) && high4(0x0589E1) == 0x08 && repeated(100, tbyte(0x0589D5) !=
                 0xF000FE) && tbyte(0x0589D5) == 0xF000FE) ||
               (unless(word(0x058B2E) >= 0x270F) && high4(0x058AE1) == 0x08 && repeated(100, tbyte(0x058AD5) !=
                 0xF000FE) && tbyte(0x058AD5) == 0xF000FE) ||
               (unless(word(0x058C2E) >= 0x270F) && high4(0x058BE1) == 0x08 && repeated(100, tbyte(0x058BD5) !=
                 0xF000FE) && tbyte(0x058BD5) == 0xF000FE) ||
               (unless(word(0x058D2E) >= 0x270F) && high4(0x058CE1) == 0x08 && repeated(100, tbyte(0x058CD5) !=
                 0xF000FE) && tbyte(0x058CD5) == 0xF000FE) ||
               (unless(word(0x058E2E) >= 0x270F) && high4(0x058DE1) == 0x08 && repeated(100, tbyte(0x058DD5) !=
                 0xF000FE) && tbyte(0x058DD5) == 0xF000FE) ||
               (unless(word(0x058F2E) >= 0x270F) && high4(0x058EE1) == 0x08 && repeated(100, tbyte(0x058ED5) !=
                 0xF000FE) && tbyte(0x058ED5) == 0xF000FE))
)

achievement(
    title = "You've Got Guts[m]", description = "Master the Squire Class with Ramza(Must learn Ultima)", points = 10,
    id = 92113, badge = "100100", published = "12/26/2019 4:58:42 PM", modified = "2/13/2020 10:35:37 PM",
    trigger = never(byte(0x0578D4) < 0x31) && never(byte(0x0578D4) > 0x50) &&
              ((unless(word(0x05800A) >= 0x270F) && high4(0x057FD8) == 0x08 && byte(0x057F74) == 0x03 && tbyte(0x057F9F)
                 == 0xFC80FF && repeated(100, tbyte(0x057F9F) != 0xFC80FF)) ||
               (byte(0x1924CC) == 0x03 && byte(0x1924CF) == 0x03 && byte(0x192565) == 0xFF && byte(0x192567) == 0xFC && 
                once(bit7(0x192566) == 0x00) && bit7(0x192566) == 0x01 && once(bit7(0x192566) > prev(bit7(0x192566)))) ||
               (byte(0x19268C) == 0x03 && byte(0x19268F) == 0x03 && byte(0x192725) == 0xFF && byte(0x192727) == 0xFC && 
                once(bit7(0x192726) == 0x00) && bit7(0x192726) == 0x01 && once(bit7(0x192726) > prev(bit7(0x192726)))) ||
               (byte(0x19284C) == 0x03 && byte(0x19284F) == 0x03 && byte(0x1928E5) == 0xFF && byte(0x1928E7) == 0xFC && 
                once(bit7(0x1928E6) == 0x00) && bit7(0x1928E6) == 0x01 && once(bit7(0x1928E6) > prev(bit7(0x1928E6)))) ||
               (byte(0x192A0C) == 0x03 && byte(0x192A0F) == 0x03 && byte(0x192AA5) == 0xFF && byte(0x192AA7) == 0xFC && 
                once(bit7(0x192AA6) == 0x00) && bit7(0x192AA6) == 0x01 && once(bit7(0x192AA6) > prev(bit7(0x192AA6)))) ||
               (byte(0x192BCC) == 0x03 && byte(0x192BCF) == 0x03 && byte(0x192C65) == 0xFF && byte(0x192C67) == 0xFC && 
                once(bit7(0x192C66) == 0x00) && bit7(0x192C66) == 0x01 && once(bit7(0x192C66) > prev(bit7(0x192C66)))))
)

achievement(
    title = "Walk The Path Of Light", description = "Master the Holy Knight class with Agrais", points = 5,
    id = 92345, badge = "100101", published = "12/27/2019 6:08:21 PM", modified = "2/13/2020 10:35:52 PM",
    trigger = never(byte(0x0578D4) < 0x10) && never(byte(0x0578D4) > 0x50) &&
              ((unless(word(0x05810A) >= 0x270F) && byte(0x058074) == 0x1E && high4(0x0580D8) == 0x08 && repeated(100,
                 tbyte(0x05809F) != 0xFC00F8) && tbyte(0x05809F) == 0xFC00F8) ||
               (unless(word(0x05820A) >= 0x270F) && byte(0x058174) == 0x1E && high4(0x0581D8) == 0x08 && repeated(100,
                 tbyte(0x05819F) != 0xFC00F8) && tbyte(0x05819F) == 0xFC00F8) ||
               (unless(word(0x05830A) >= 0x270F) && byte(0x058274) == 0x1E && high4(0x0582D8) == 0x08 && repeated(100,
                 tbyte(0x05829F) != 0xFC00F8) && tbyte(0x05829F) == 0xFC00F8) ||
               (unless(word(0x05840A) >= 0x270F) && byte(0x058374) == 0x1E && high4(0x0583D8) == 0x08 && repeated(100,
                 tbyte(0x05839F) != 0xFC00F8) && tbyte(0x05839F) == 0xFC00F8) ||
               (unless(word(0x05850A) >= 0x270F) && byte(0x058474) == 0x1E && high4(0x0584D8) == 0x08 && repeated(100,
                 tbyte(0x05849F) != 0xFC00F8) && tbyte(0x05849F) == 0xFC00F8) ||
               (unless(word(0x05860A) >= 0x270F) && byte(0x058574) == 0x1E && high4(0x0585D8) == 0x08 && repeated(100,
                 tbyte(0x05859F) != 0xFC00F8) && tbyte(0x05859F) == 0xFC00F8) ||
               (unless(word(0x05870A) >= 0x270F) && byte(0x058674) == 0x1E && high4(0x0586D8) == 0x08 && repeated(100,
                 tbyte(0x05869F) != 0xFC00F8) && tbyte(0x05869F) == 0xFC00F8) ||
               (unless(word(0x05880A) >= 0x270F) && byte(0x058774) == 0x1E && high4(0x0587D8) == 0x08 && repeated(100,
                 tbyte(0x05879F) != 0xFC00F8) && tbyte(0x05879F) == 0xFC00F8) ||
               (unless(word(0x05890A) >= 0x270F) && byte(0x058874) == 0x1E && high4(0x0588D8) == 0x08 && repeated(100,
                 tbyte(0x05889F) != 0xFC00F8) && tbyte(0x05889F) == 0xFC00F8) ||
               (unless(word(0x058A0A) >= 0x270F) && byte(0x058974) == 0x1E && high4(0x0589D8) == 0x08 && repeated(100,
                 tbyte(0x05899F) != 0xFC00F8) && tbyte(0x05899F) == 0xFC00F8) ||
               (unless(word(0x058B0A) >= 0x270F) && byte(0x058A74) == 0x1E && high4(0x058AD8) == 0x08 && repeated(100,
                 tbyte(0x058A9F) != 0xFC00F8) && tbyte(0x058A9F) == 0xFC00F8) ||
               (unless(word(0x058C0A) >= 0x270F) && byte(0x058B74) == 0x1E && high4(0x058BD8) == 0x08 && repeated(100,
                 tbyte(0x058B9F) != 0xFC00F8) && tbyte(0x058B9F) == 0xFC00F8) ||
               (unless(word(0x058D0A) >= 0x270F) && byte(0x058C74) == 0x1E && high4(0x058CD8) == 0x08 && repeated(100,
                 tbyte(0x058C9F) != 0xFC00F8) && tbyte(0x058C9F) == 0xFC00F8) ||
               (unless(word(0x058E0A) >= 0x270F) && byte(0x058D74) == 0x1E && high4(0x058DD8) == 0x08 && repeated(100,
                 tbyte(0x058D9F) != 0xFC00F8) && tbyte(0x058D9F) == 0xFC00F8) ||
               (unless(word(0x058F0A) >= 0x270F) && byte(0x058E74) == 0x1E && high4(0x058ED8) == 0x08 && repeated(100,
                 tbyte(0x058E9F) != 0xFC00F8) && tbyte(0x058E9F) == 0xFC00F8))
)

achievement(
    title = "Seal The Deal", description = "Master the Engineer class with Mustadio", points = 5,
    id = 92346, badge = "101610", published = "12/27/2019 6:55:50 PM", modified = "2/13/2020 10:36:04 PM",
    trigger = never(byte(0x0578D4) < 0x10) && never(byte(0x0578D4) > 0x50) &&
              ((unless(word(0x05810A) >= 0x270F) && byte(0x058074) == 0x16 && high4(0x0580D8) >= 0x05 && repeated(100,
                 tbyte(0x05809F) != 0xFC00E0) && tbyte(0x05809F) == 0xFC00E0) ||
               (unless(word(0x05820A) >= 0x270F) && byte(0x058174) == 0x16 && high4(0x0581D8) >= 0x05 && repeated(100,
                 tbyte(0x05819F) != 0xFC00E0) && tbyte(0x05819F) == 0xFC00E0) ||
               (unless(word(0x05822A) >= 0x270F) && byte(0x058274) == 0x16 && high4(0x0582D8) >= 0x05 && repeated(100,
                 tbyte(0x05829F) != 0xFC00E0) && tbyte(0x05829F) == 0xFC00E0) ||
               (unless(word(0x05840A) >= 0x270F) && byte(0x058374) == 0x16 && high4(0x0583D8) >= 0x05 && repeated(100,
                 tbyte(0x05839F) != 0xFC00E0) && tbyte(0x05839F) == 0xFC00E0) ||
               (unless(word(0x05850A) >= 0x270F) && byte(0x058474) == 0x16 && high4(0x0584D8) >= 0x05 && repeated(100,
                 tbyte(0x05849F) != 0xFC00E0) && tbyte(0x05849F) == 0xFC00E0) ||
               (unless(word(0x05860A) >= 0x270F) && byte(0x058574) == 0x16 && high4(0x0585D8) >= 0x05 && repeated(100,
                 tbyte(0x05859F) != 0xFC00E0) && tbyte(0x05859F) == 0xFC00E0) ||
               (unless(word(0x05870A) >= 0x270F) && byte(0x058674) == 0x16 && high4(0x0586D8) >= 0x05 && repeated(100,
                 tbyte(0x05869F) != 0xFC00E0) && tbyte(0x05869F) == 0xFC00E0) ||
               (unless(word(0x05880A) >= 0x270F) && byte(0x058774) == 0x16 && high4(0x0587D8) >= 0x05 && repeated(100,
                 tbyte(0x05879F) != 0xFC00E0) && tbyte(0x05879F) == 0xFC00E0) ||
               (unless(word(0x05890A) >= 0x270F) && byte(0x058874) == 0x16 && high4(0x0588D8) >= 0x05 && repeated(100,
                 tbyte(0x05889F) != 0xFC00E0) && tbyte(0x05889F) == 0xFC00E0) ||
               (unless(word(0x058A0A) >= 0x270F) && byte(0x058974) == 0x16 && high4(0x0589D8) >= 0x05 && repeated(100,
                 tbyte(0x05899F) != 0xFC00E0) && tbyte(0x05899F) == 0xFC00E0) ||
               (unless(word(0x058B0A) >= 0x270F) && byte(0x058A74) == 0x16 && high4(0x058AD8) >= 0x05 && repeated(100,
                 tbyte(0x058A9F) != 0xFC00E0) && tbyte(0x058A9F) == 0xFC00E0) ||
               (unless(word(0x058C0A) >= 0x270F) && byte(0x058B74) == 0x16 && high4(0x058BD8) >= 0x05 && repeated(100,
                 tbyte(0x058B9F) != 0xFC00E0) && tbyte(0x058B9F) == 0xFC00E0) ||
               (unless(word(0x058D0A) >= 0x270F) && byte(0x058C74) == 0x16 && high4(0x058CD8) >= 0x05 && repeated(100,
                 tbyte(0x058C9F) != 0xFC00E0) && tbyte(0x058C9F) == 0xFC00E0) ||
               (unless(word(0x058E0A) >= 0x270F) && byte(0x058D74) == 0x16 && high4(0x058DD8) >= 0x05 && repeated(100,
                 tbyte(0x058D9F) != 0xFC00E0) && tbyte(0x058D9F) == 0xFC00E0) ||
               (unless(word(0x058F0A) >= 0x270F) && byte(0x058E74) == 0x16 && high4(0x058ED8) >= 0x05 && repeated(100,
                 tbyte(0x058E9F) != 0xFC00E0) && tbyte(0x058E9F) == 0xFC00E0))
)

achievement(
    title = "Stairway To Heaven", description = "Master the Heaven Knight class with Rafa", points = 5,
    id = 92347, badge = "101611", published = "12/27/2019 7:12:41 PM", modified = "2/21/2020 2:50:45 AM",
    trigger = never(byte(0x0578D4) < 0x20) && never(byte(0x0578D4) > 0x50) &&
              ((unless(word(0x05810A) >= 0x270F) && byte(0x058074) == 0x29 && high4(0x0580D8) == 0x08 && repeated(100,
                 tbyte(0x05809F) != 0xFC00FC) && tbyte(0x05809F) == 0xFC00FC) ||
               (unless(word(0x05820A) >= 0x270F) && byte(0x058174) == 0x29 && high4(0x0581D8) == 0x08 && repeated(100,
                 tbyte(0x05819F) != 0xFC00FC) && tbyte(0x05819F) == 0xFC00FC) ||
               (unless(word(0x05830A) >= 0x270F) && byte(0x058274) == 0x29 && high4(0x0582D8) == 0x08 && repeated(100,
                 tbyte(0x05829F) != 0xFC00FC) && tbyte(0x05829F) == 0xFC00FC) ||
               (unless(word(0x05840A) >= 0x270F) && byte(0x058374) == 0x29 && high4(0x0583D8) == 0x08 && repeated(100,
                 tbyte(0x05839F) != 0xFC00FC) && tbyte(0x05839F) == 0xFC00FC) ||
               (unless(word(0x05850A) >= 0x270F) && byte(0x058474) == 0x29 && high4(0x0584D8) == 0x08 && repeated(100,
                 tbyte(0x05849F) != 0xFC00FC) && tbyte(0x05849F) == 0xFC00FC) ||
               (unless(word(0x05860A) >= 0x270F) && byte(0x058574) == 0x29 && high4(0x0585D8) == 0x08 && repeated(100,
                 tbyte(0x05859F) != 0xFC00FC) && tbyte(0x05859F) == 0xFC00FC) ||
               (unless(word(0x05870A) >= 0x270F) && byte(0x058674) == 0x29 && high4(0x0586D8) == 0x08 && repeated(100,
                 tbyte(0x05869F) != 0xFC00FC) && tbyte(0x05869F) == 0xFC00FC) ||
               (unless(word(0x05880A) >= 0x270F) && byte(0x058774) == 0x29 && high4(0x0587D8) == 0x08 && repeated(100,
                 tbyte(0x05879F) != 0xFC00FC) && tbyte(0x05879F) == 0xFC00FC) ||
               (unless(word(0x05890A) >= 0x270F) && byte(0x058874) == 0x29 && high4(0x0588D8) == 0x08 && repeated(100,
                 tbyte(0x05889F) != 0xFC00FC) && tbyte(0x05889F) == 0xFC00FC) ||
               (unless(word(0x058A0A) >= 0x270F) && byte(0x058974) == 0x29 && high4(0x0589D8) == 0x08 && repeated(100,
                 tbyte(0x05899F) != 0xFC00FC) && tbyte(0x05899F) == 0xFC00FC) ||
               (unless(word(0x058B0A) >= 0x270F) && byte(0x058A74) == 0x29 && high4(0x058AD8) == 0x08 && repeated(100,
                 tbyte(0x058A9F) != 0xFC00FC) && tbyte(0x058A9F) == 0xFC00FC) ||
               (unless(word(0x058C0A) >= 0x270F) && byte(0x058B74) == 0x29 && high4(0x058BD8) == 0x08 && repeated(100,
                 tbyte(0x058B9F) != 0xFC00FC) && tbyte(0x058B9F) == 0xFC00FC) ||
               (unless(word(0x058D0A) >= 0x270F) && byte(0x058C74) == 0x29 && high4(0x058CD8) == 0x08 && repeated(100,
                 tbyte(0x058C9F) != 0xFC00FC) && tbyte(0x058C9F) == 0xFC00FC) ||
               (unless(word(0x058E0A) >= 0x270F) && byte(0x058D74) == 0x29 && high4(0x058DD8) == 0x08 && repeated(100,
                 tbyte(0x058D9F) != 0xFC00FC) && tbyte(0x058D9F) == 0xFC00FC) ||
               (unless(word(0x058F0A) >= 0x270F) && byte(0x058E74) == 0x29 && high4(0x058ED8) == 0x08 && repeated(100,
                 tbyte(0x058E9F) != 0xFC00FC) && tbyte(0x058E9F) == 0xFC00FC))
)

achievement(
    title = "Stairway To Hell", description = "Master the Hell Knight class with Malek", points = 5,
    id = 92348, badge = "101612", published = "12/27/2019 7:18:59 PM", modified = "2/21/2020 2:50:31 AM",
    trigger = never(byte(0x0578D4) < 0x20) && never(byte(0x0578D4) > 0x50) &&
              ((unless(word(0x05810A) >= 0x270F) && byte(0x058074) == 0x1A && high4(0x0580D8) == 0x08 && repeated(100,
                 tbyte(0x05809F) != 0xFC00FC) && tbyte(0x05809F) == 0xFC00FC) ||
               (unless(word(0x05820A) >= 0x270F) && byte(0x058174) == 0x1A && high4(0x0581D8) == 0x08 && repeated(100,
                 tbyte(0x05819F) != 0xFC00FC) && tbyte(0x05819F) == 0xFC00FC) ||
               (unless(word(0x05830A) >= 0x270F) && byte(0x058274) == 0x1A && high4(0x0582D8) == 0x08 && repeated(100,
                 tbyte(0x05829F) != 0xFC00FC) && tbyte(0x05829F) == 0xFC00FC) ||
               (unless(word(0x05840A) >= 0x270F) && byte(0x058374) == 0x1A && high4(0x0583D8) == 0x08 && repeated(100,
                 tbyte(0x05839F) != 0xFC00FC) && tbyte(0x05839F) == 0xFC00FC) ||
               (unless(word(0x05850A) >= 0x270F) && byte(0x058474) == 0x1A && high4(0x0584D8) == 0x08 && repeated(100,
                 tbyte(0x05849F) != 0xFC00FC) && tbyte(0x05849F) == 0xFC00FC) ||
               (unless(word(0x05860A) >= 0x270F) && byte(0x058574) == 0x1A && high4(0x0585D8) == 0x08 && repeated(100,
                 tbyte(0x05859F) != 0xFC00FC) && tbyte(0x05859F) == 0xFC00FC) ||
               (unless(word(0x05870A) >= 0x270F) && byte(0x058674) == 0x1A && high4(0x0586D8) == 0x08 && repeated(100,
                 tbyte(0x05869F) != 0xFC00FC) && tbyte(0x05869F) == 0xFC00FC) ||
               (unless(word(0x05880A) >= 0x270F) && byte(0x058774) == 0x1A && high4(0x0587D8) == 0x08 && repeated(100,
                 tbyte(0x05879F) != 0xFC00FC) && tbyte(0x05879F) == 0xFC00FC) ||
               (unless(word(0x05890A) >= 0x270F) && byte(0x058874) == 0x1A && high4(0x0588D8) == 0x08 && repeated(100,
                 tbyte(0x05889F) != 0xFC00FC) && tbyte(0x05889F) == 0xFC00FC) ||
               (unless(word(0x058A0A) >= 0x270F) && byte(0x058974) == 0x1A && high4(0x0589D8) == 0x08 && repeated(100,
                 tbyte(0x05899F) != 0xFC00FC) && tbyte(0x05899F) == 0xFC00FC) ||
               (unless(word(0x058B0A) >= 0x270F) && byte(0x058A74) == 0x1A && high4(0x058AD8) == 0x08 && repeated(100,
                 tbyte(0x058A9F) != 0xFC00FC) && tbyte(0x058A9F) == 0xFC00FC) ||
               (unless(word(0x058C0A) >= 0x270F) && byte(0x058B74) == 0x1A && high4(0x058BD8) == 0x08 && repeated(100,
                 tbyte(0x058B9F) != 0xFC00FC) && tbyte(0x058B9F) == 0xFC00FC) ||
               (unless(word(0x058D0A) >= 0x270F) && byte(0x058C74) == 0x1A && high4(0x058CD8) == 0x08 && repeated(100,
                 tbyte(0x058C9F) != 0xFC00FC) && tbyte(0x058C9F) == 0xFC00FC) ||
               (unless(word(0x058E0A) >= 0x270F) && byte(0x058D74) == 0x1A && high4(0x058DD8) == 0x08 && repeated(100,
                 tbyte(0x058D9F) != 0xFC00FC) && tbyte(0x058D9F) == 0xFC00FC) ||
               (unless(word(0x058F0A) >= 0x270F) && byte(0x058E74) == 0x1A && high4(0x058ED8) == 0x08 && repeated(100,
                 tbyte(0x058E9F) != 0xFC00FC) && tbyte(0x058E9F) == 0xFC00FC))
)

achievement(
    title = "Death To Heathens", description = "Master the Temple Knight class with Beowulf", points = 5,
    id = 92349, badge = "101613", published = "12/27/2019 7:19:05 PM", modified = "2/21/2020 2:51:13 AM",
    trigger = never(byte(0x0578D4) < 0x20) && never(byte(0x0578D4) > 0x50) &&
              ((unless(word(0x05810A) >= 0x270F) && byte(0x058074) == 0x1F && high4(0x0580D8) == 0x08 && repeated(100,
                 tbyte(0x05809F) != 0xFCFEFF) && tbyte(0x05809F) == 0xFCFEFF) ||
               (unless(word(0x05820A) >= 0x270F) && byte(0x058174) == 0x1F && high4(0x0581D8) == 0x08 && repeated(100,
                 tbyte(0x05819F) != 0xFCFEFF) && tbyte(0x05819F) == 0xFCFEFF) ||
               (unless(word(0x05830A) >= 0x270F) && byte(0x058274) == 0x1F && high4(0x0582D8) == 0x08 && repeated(100,
                 tbyte(0x05829F) != 0xFCFEFF) && tbyte(0x05829F) == 0xFCFEFF) ||
               (unless(word(0x05840A) >= 0x270F) && byte(0x058374) == 0x1F && high4(0x0583D8) == 0x08 && repeated(100,
                 tbyte(0x05839F) != 0xFCFEFF) && tbyte(0x05839F) == 0xFCFEFF) ||
               (unless(word(0x05850A) >= 0x270F) && byte(0x058474) == 0x1F && high4(0x0584D8) == 0x08 && repeated(100,
                 tbyte(0x05849F) != 0xFCFEFF) && tbyte(0x05849F) == 0xFCFEFF) ||
               (unless(word(0x05860A) >= 0x270F) && byte(0x058574) == 0x1F && high4(0x0585D8) == 0x08 && repeated(100,
                 tbyte(0x05859F) != 0xFCFEFF) && tbyte(0x05859F) == 0xFCFEFF) ||
               (unless(word(0x05870A) >= 0x270F) && byte(0x058674) == 0x1F && high4(0x0586D8) == 0x08 && repeated(100,
                 tbyte(0x05869F) != 0xFCFEFF) && tbyte(0x05869F) == 0xFCFEFF) ||
               (unless(word(0x05880A) >= 0x270F) && byte(0x058774) == 0x1F && high4(0x0587D8) == 0x08 && repeated(100,
                 tbyte(0x05879F) != 0xFCFEFF) && tbyte(0x05879F) == 0xFCFEFF) ||
               (unless(word(0x05890A) >= 0x270F) && byte(0x058874) == 0x1F && high4(0x0588D8) == 0x08 && repeated(100,
                 tbyte(0x05889F) != 0xFCFEFF) && tbyte(0x05889F) == 0xFCFEFF) ||
               (unless(word(0x058A0A) >= 0x270F) && byte(0x058974) == 0x1F && high4(0x0589D8) == 0x08 && repeated(100,
                 tbyte(0x05899F) != 0xFCFEFF) && tbyte(0x05899F) == 0xFCFEFF) ||
               (unless(word(0x058B0A) >= 0x270F) && byte(0x058A74) == 0x1F && high4(0x058AD8) == 0x08 && repeated(100,
                 tbyte(0x058A9F) != 0xFCFEFF) && tbyte(0x058A9F) == 0xFCFEFF) ||
               (unless(word(0x058C0A) >= 0x270F) && byte(0x058B74) == 0x1F && high4(0x058BD8) == 0x08 && repeated(100,
                 tbyte(0x058B9F) != 0xFCFEFF) && tbyte(0x058B9F) == 0xFCFEFF) ||
               (unless(word(0x058D0A) >= 0x270F) && byte(0x058C74) == 0x1F && high4(0x058CD8) == 0x08 && repeated(100,
                 tbyte(0x058C9F) != 0xFCFEFF) && tbyte(0x058C9F) == 0xFCFEFF) ||
               (unless(word(0x058E0A) >= 0x270F) && byte(0x058D74) == 0x1F && high4(0x058DD8) == 0x08 && repeated(100,
                 tbyte(0x058D9F) != 0xFCFEFF) && tbyte(0x058D9F) == 0xFCFEFF) ||
               (unless(word(0x058F0A) >= 0x270F) && byte(0x058E74) == 0x1F && high4(0x058ED8) == 0x08 && repeated(100,
                 tbyte(0x058E9F) != 0xFCFEFF) && tbyte(0x058E9F) == 0xFCFEFF))
)

achievement(
    title = "Dragon Whisperer", description = "Master the Dragoneer class with Reis", points = 5,
    id = 92350, badge = "101614", published = "12/27/2019 7:21:22 PM", modified = "2/13/2020 10:36:43 PM",
    trigger = never(byte(0x0578D4) < 0x28) && never(byte(0x0578D4) > 0x50) &&
              ((unless(word(0x05810A) >= 0x270F) && byte(0x058074) == 0x0F && high4(0x0580D8) == 0x08 && repeated(100,
                 tbyte(0x05809F) != 0xFC00FF) && tbyte(0x05809F) == 0xFC00FF) ||
               (unless(word(0x05820A) >= 0x270F) && byte(0x058174) == 0x0F && high4(0x0581D8) == 0x08 && repeated(100,
                 tbyte(0x05819F) != 0xFC00FF) && tbyte(0x05819F) == 0xFC00FF) ||
               (unless(word(0x05830A) >= 0x270F) && byte(0x058274) == 0x0F && high4(0x0582D8) == 0x08 && repeated(100,
                 tbyte(0x05829F) != 0xFC00FF) && tbyte(0x05829F) == 0xFC00FF) ||
               (unless(word(0x05840A) >= 0x270F) && byte(0x058374) == 0x0F && high4(0x0583D8) == 0x08 && repeated(100,
                 tbyte(0x05839F) != 0xFC00FF) && tbyte(0x05839F) == 0xFC00FF) ||
               (unless(word(0x05850A) >= 0x270F) && byte(0x058474) == 0x0F && high4(0x0584D8) == 0x08 && repeated(100,
                 tbyte(0x05849F) != 0xFC00FF) && tbyte(0x05849F) == 0xFC00FF) ||
               (unless(word(0x05860A) >= 0x270F) && byte(0x058574) == 0x0F && high4(0x0585D8) == 0x08 && repeated(100,
                 tbyte(0x05859F) != 0xFC00FF) && tbyte(0x05859F) == 0xFC00FF) ||
               (unless(word(0x05870A) >= 0x270F) && byte(0x058674) == 0x0F && high4(0x0586D8) == 0x08 && repeated(100,
                 tbyte(0x05869F) != 0xFC00FF) && tbyte(0x05869F) == 0xFC00FF) ||
               (unless(word(0x05880A) >= 0x270F) && byte(0x058774) == 0x0F && high4(0x0587D8) == 0x08 && repeated(100,
                 tbyte(0x05879F) != 0xFC00FF) && tbyte(0x05879F) == 0xFC00FF) ||
               (unless(word(0x05890A) >= 0x270F) && byte(0x058874) == 0x0F && high4(0x0588D8) == 0x08 && repeated(100,
                 tbyte(0x05889F) != 0xFC00FF) && tbyte(0x05889F) == 0xFC00FF) ||
               (unless(word(0x058A0A) >= 0x270F) && byte(0x058974) == 0x0F && high4(0x0589D8) == 0x08 && repeated(100,
                 tbyte(0x05899F) != 0xFC00FF) && tbyte(0x05899F) == 0xFC00FF) ||
               (unless(word(0x058B0A) >= 0x270F) && byte(0x058A74) == 0x0F && high4(0x058AD8) == 0x08 && repeated(100,
                 tbyte(0x058A9F) != 0xFC00FF) && tbyte(0x058A9F) == 0xFC00FF) ||
               (unless(word(0x058C0A) >= 0x270F) && byte(0x058B74) == 0x0F && high4(0x058BD8) == 0x08 && repeated(100,
                 tbyte(0x058B9F) != 0xFC00FF) && tbyte(0x058B9F) == 0xFC00FF) ||
               (unless(word(0x058D0A) >= 0x270F) && byte(0x058C74) == 0x0F && high4(0x058CD8) == 0x08 && repeated(100,
                 tbyte(0x058C9F) != 0xFC00FF) && tbyte(0x058C9F) == 0xFC00FF) ||
               (unless(word(0x058E0A) >= 0x270F) && byte(0x058D74) == 0x0F && high4(0x058DD8) == 0x08 && repeated(100,
                 tbyte(0x058D9F) != 0xFC00FF) && tbyte(0x058D9F) == 0xFC00FF) ||
               (unless(word(0x058F0A) >= 0x270F) && byte(0x058E74) == 0x0F && high4(0x058ED8) == 0x08 && repeated(100,
                 tbyte(0x058E9F) != 0xFC00FF) && tbyte(0x058E9F) == 0xFC00FF))
)

achievement(
    title = "Under God's Divine Protection", description = "Master theDivine Knight class with Meliadoul", points = 5,
    id = 92351, badge = "101615", published = "12/27/2019 7:24:20 PM", modified = "2/21/2020 2:51:32 AM",
    trigger = never(byte(0x0578D4) < 0x28) && never(byte(0x0578D4) > 0x50) &&
              ((unless(word(0x05810A) >= 0x270F) && byte(0x058074) == 0x2A && high4(0x0580D8) >= 0x07 && repeated(100,
                 tbyte(0x05809F) != 0xFC00F0) && tbyte(0x05809F) == 0xFC00F0) ||
               (unless(word(0x05820A) >= 0x270F) && byte(0x058174) == 0x2A && high4(0x0581D8) >= 0x07 && repeated(100,
                 tbyte(0x05819F) != 0xFC00F0) && tbyte(0x05819F) == 0xFC00F0) ||
               (unless(word(0x05830A) >= 0x270F) && byte(0x058274) == 0x2A && high4(0x0582D8) >= 0x07 && repeated(100,
                 tbyte(0x05829F) != 0xFC00F0) && tbyte(0x05829F) == 0xFC00F0) ||
               (unless(word(0x05840A) >= 0x270F) && byte(0x058374) == 0x2A && high4(0x0583D8) >= 0x07 && repeated(100,
                 tbyte(0x05839F) != 0xFC00F0) && tbyte(0x05839F) == 0xFC00F0) ||
               (unless(word(0x05850A) >= 0x270F) && byte(0x058474) == 0x2A && high4(0x0584D8) >= 0x07 && repeated(100,
                 tbyte(0x05849F) != 0xFC00F0) && tbyte(0x05849F) == 0xFC00F0) ||
               (unless(word(0x05860A) >= 0x270F) && byte(0x058574) == 0x2A && high4(0x0585D8) >= 0x07 && repeated(100,
                 tbyte(0x05859F) != 0xFC00F0) && tbyte(0x05859F) == 0xFC00F0) ||
               (unless(word(0x05870A) >= 0x270F) && byte(0x058674) == 0x2A && high4(0x0586D8) >= 0x07 && repeated(100,
                 tbyte(0x05869F) != 0xFC00F0) && tbyte(0x05869F) == 0xFC00F0) ||
               (unless(word(0x05880A) >= 0x270F) && byte(0x058774) == 0x2A && high4(0x0587D8) >= 0x07 && repeated(100,
                 tbyte(0x05879F) != 0xFC00F0) && tbyte(0x05879F) == 0xFC00F0) ||
               (unless(word(0x05890A) >= 0x270F) && byte(0x058874) == 0x2A && high4(0x0588D8) >= 0x07 && repeated(100,
                 tbyte(0x05889F) != 0xFC00F0) && tbyte(0x05889F) == 0xFC00F0) ||
               (unless(word(0x058A0A) >= 0x270F) && byte(0x058974) == 0x2A && high4(0x0589D8) >= 0x07 && repeated(100,
                 tbyte(0x05899F) != 0xFC00F0) && tbyte(0x05899F) == 0xFC00F0) ||
               (unless(word(0x058B0A) >= 0x270F) && byte(0x058A74) == 0x2A && high4(0x058AD8) >= 0x07 && repeated(100,
                 tbyte(0x058A9F) != 0xFC00F0) && tbyte(0x058A9F) == 0xFC00F0) ||
               (unless(word(0x058C0A) >= 0x270F) && byte(0x058B74) == 0x2A && high4(0x058BD8) >= 0x07 && repeated(100,
                 tbyte(0x058B9F) != 0xFC00F0) && tbyte(0x058B9F) == 0xFC00F0) ||
               (unless(word(0x058D0A) >= 0x270F) && byte(0x058C74) == 0x2A && high4(0x058CD8) >= 0x07 && repeated(100,
                 tbyte(0x058C9F) != 0xFC00F0) && tbyte(0x058C9F) == 0xFC00F0) ||
               (unless(word(0x058E0A) >= 0x270F) && byte(0x058D74) == 0x2A && high4(0x058DD8) >= 0x07 && repeated(100,
                 tbyte(0x058D9F) != 0xFC00F0) && tbyte(0x058D9F) == 0xFC00F0) ||
               (unless(word(0x058F0A) >= 0x270F) && byte(0x058E74) == 0x2A && high4(0x058ED8) >= 0x07 && repeated(100,
                 tbyte(0x058E9F) != 0xFC00F0) && tbyte(0x058E9F) == 0xFC00F0))
)

achievement(
    title = "God Of Thunder", description = "Master the Holy Swordsman class with Orlandu", points = 5,
    id = 92352, badge = "101616", published = "12/27/2019 7:27:33 PM", modified = "2/21/2020 2:51:44 AM",
    trigger = never(byte(0x0578D4) < 0x28) && never(byte(0x0578D4) > 0x50) &&
              ((unless(word(0x05810A) >= 0x270F) && byte(0x058074) == 0x0D && high4(0x0580D8) == 0x08 && repeated(100,
                 tbyte(0x05809F) != 0xFCE0FF) && tbyte(0x05809F) == 0xFCE0FF) ||
               (unless(word(0x05820A) >= 0x270F) && byte(0x058174) == 0x0D && high4(0x0581D8) == 0x08 && repeated(100,
                 tbyte(0x05819F) != 0xFCE0FF) && tbyte(0x05819F) == 0xFCE0FF) ||
               (unless(word(0x05830A) >= 0x270F) && byte(0x058274) == 0x0D && high4(0x0582D8) == 0x08 && repeated(100,
                 tbyte(0x05829F) != 0xFCE0FF) && tbyte(0x05829F) == 0xFCE0FF) ||
               (unless(word(0x05840A) >= 0x270F) && byte(0x058374) == 0x0D && high4(0x0583D8) == 0x08 && repeated(100,
                 tbyte(0x05839F) != 0xFCE0FF) && tbyte(0x05839F) == 0xFCE0FF) ||
               (unless(word(0x05850A) >= 0x270F) && byte(0x058474) == 0x0D && high4(0x0584D8) == 0x08 && repeated(100,
                 tbyte(0x05849F) != 0xFCE0FF) && tbyte(0x05849F) == 0xFCE0FF) ||
               (unless(word(0x05860A) >= 0x270F) && byte(0x058574) == 0x0D && high4(0x0585D8) == 0x08 && repeated(100,
                 tbyte(0x05859F) != 0xFCE0FF) && tbyte(0x05859F) == 0xFCE0FF) ||
               (unless(word(0x05870A) >= 0x270F) && byte(0x058674) == 0x0D && high4(0x0586D8) == 0x08 && repeated(100,
                 tbyte(0x05869F) != 0xFCE0FF) && tbyte(0x05869F) == 0xFCE0FF) ||
               (unless(word(0x05880A) >= 0x270F) && byte(0x058774) == 0x0D && high4(0x0587D8) == 0x08 && repeated(100,
                 tbyte(0x05879F) != 0xFCE0FF) && tbyte(0x05879F) == 0xFCE0FF) ||
               (unless(word(0x05890A) >= 0x270F) && byte(0x058874) == 0x0D && high4(0x0588D8) == 0x08 && repeated(100,
                 tbyte(0x05889F) != 0xFCE0FF) && tbyte(0x05889F) == 0xFCE0FF) ||
               (unless(word(0x058A0A) >= 0x270F) && byte(0x058974) == 0x0D && high4(0x0589D8) == 0x08 && repeated(100,
                 tbyte(0x05899F) != 0xFCE0FF) && tbyte(0x05899F) == 0xFCE0FF) ||
               (unless(word(0x058B0A) >= 0x270F) && byte(0x058A74) == 0x0D && high4(0x058AD8) == 0x08 && repeated(100,
                 tbyte(0x058A9F) != 0xFCE0FF) && tbyte(0x058A9F) == 0xFCE0FF) ||
               (unless(word(0x058C0A) >= 0x270F) && byte(0x058B74) == 0x0D && high4(0x058BD8) == 0x08 && repeated(100,
                 tbyte(0x058B9F) != 0xFCE0FF) && tbyte(0x058B9F) == 0xFCE0FF) ||
               (unless(word(0x058D0A) >= 0x270F) && byte(0x058C74) == 0x0D && high4(0x058CD8) == 0x08 && repeated(100,
                 tbyte(0x058C9F) != 0xFCE0FF) && tbyte(0x058C9F) == 0xFCE0FF) ||
               (unless(word(0x058E0A) >= 0x270F) && byte(0x058D74) == 0x0D && high4(0x058DD8) == 0x08 && repeated(100,
                 tbyte(0x058D9F) != 0xFCE0FF) && tbyte(0x058D9F) == 0xFCE0FF) ||
               (unless(word(0x058F0A) >= 0x270F) && byte(0x058E74) == 0x0D && high4(0x058ED8) == 0x08 && repeated(100,
                 tbyte(0x058E9F) != 0xFCE0FF) && tbyte(0x058E9F) == 0xFCE0FF))
)

achievement(
    title = "Sephiroth's Bane", description = "Master the Soldier class with Cloud", points = 5,
    id = 92353, badge = "101617", published = "12/27/2019 7:29:44 PM", modified = "2/21/2020 2:51:56 AM",
    trigger = never(byte(0x0578D4) < 0x28) && never(byte(0x0578D4) > 0x50) &&
              ((unless(word(0x05810A) >= 0x270F) && byte(0x058074) == 0x32 && high4(0x0580D8) == 0x08 && repeated(100,
                 tbyte(0x05809F) != 0xFC00FF) && tbyte(0x05809F) == 0xFC00FF) ||
               (unless(word(0x05820A) >= 0x270F) && byte(0x058174) == 0x32 && high4(0x0581D8) == 0x08 && repeated(100,
                 tbyte(0x05819F) != 0xFC00FF) && tbyte(0x05819F) == 0xFC00FF) ||
               (unless(word(0x05830A) >= 0x270F) && byte(0x058274) == 0x32 && high4(0x0582D8) == 0x08 && repeated(100,
                 tbyte(0x05829F) != 0xFC00FF) && tbyte(0x05829F) == 0xFC00FF) ||
               (unless(word(0x05840A) >= 0x270F) && byte(0x058374) == 0x32 && high4(0x0583D8) == 0x08 && repeated(100,
                 tbyte(0x05839F) != 0xFC00FF) && tbyte(0x05839F) == 0xFC00FF) ||
               (unless(word(0x05850A) >= 0x270F) && byte(0x058474) == 0x32 && high4(0x0584D8) == 0x08 && repeated(100,
                 tbyte(0x05849F) != 0xFC00FF) && tbyte(0x05849F) == 0xFC00FF) ||
               (unless(word(0x05860A) >= 0x270F) && byte(0x058574) == 0x32 && high4(0x0585D8) == 0x08 && repeated(100,
                 tbyte(0x05859F) != 0xFC00FF) && tbyte(0x05859F) == 0xFC00FF) ||
               (unless(word(0x05870A) >= 0x270F) && byte(0x058674) == 0x32 && high4(0x0586D8) == 0x08 && repeated(100,
                 tbyte(0x05869F) != 0xFC00FF) && tbyte(0x05869F) == 0xFC00FF) ||
               (unless(word(0x05880A) >= 0x270F) && byte(0x058774) == 0x32 && high4(0x0587D8) == 0x08 && repeated(100,
                 tbyte(0x05879F) != 0xFC00FF) && tbyte(0x05879F) == 0xFC00FF) ||
               (unless(word(0x05890A) >= 0x270F) && byte(0x058874) == 0x32 && high4(0x0588D8) == 0x08 && repeated(100,
                 tbyte(0x05889F) != 0xFC00FF) && tbyte(0x05889F) == 0xFC00FF) ||
               (unless(word(0x058A0A) >= 0x270F) && byte(0x058974) == 0x32 && high4(0x0589D8) == 0x08 && repeated(100,
                 tbyte(0x05899F) != 0xFC00FF) && tbyte(0x05899F) == 0xFC00FF) ||
               (unless(word(0x058B0A) >= 0x270F) && byte(0x058A74) == 0x32 && high4(0x058AD8) == 0x08 && repeated(100,
                 tbyte(0x058A9F) != 0xFC00FF) && tbyte(0x058A9F) == 0xFC00FF) ||
               (unless(word(0x058C0A) >= 0x270F) && byte(0x058B74) == 0x32 && high4(0x058BD8) == 0x08 && repeated(100,
                 tbyte(0x058B9F) != 0xFC00FF) && tbyte(0x058B9F) == 0xFC00FF) ||
               (unless(word(0x058D0A) >= 0x270F) && byte(0x058C74) == 0x32 && high4(0x058CD8) == 0x08 && repeated(100,
                 tbyte(0x058C9F) != 0xFC00FF) && tbyte(0x058C9F) == 0xFC00FF) ||
               (unless(word(0x058E0A) >= 0x270F) && byte(0x058D74) == 0x32 && high4(0x058DD8) == 0x08 && repeated(100,
                 tbyte(0x058D9F) != 0xFC00FF) && tbyte(0x058D9F) == 0xFC00FF) ||
               (unless(word(0x058F0A) >= 0x270F) && byte(0x058E74) == 0x32 && high4(0x058ED8) == 0x08 && repeated(100,
                 tbyte(0x058E9F) != 0xFC00FF) && tbyte(0x058E9F) == 0xFC00FF))
)

achievement(
    title = "Look Ma I'm A Heretic", description = "Reach Level 25 With Ramza", points = 5,
    id = 93879, badge = "103283", published = "1/7/2020 6:13:47 PM", modified = "1/18/2020 5:53:40 PM",
    trigger = never(dword(0x0577B7) == 0x00) && never(dword(0x0577B8) == 0x10000013) &&
              ((once(byte(0x1924EE) == 0x18) && byte(0x1924EE) == 0x19 && unless(byte(0x1924CC) > 0x03)) ||
               (once(byte(0x1926AE) == 0x18) && byte(0x1926AE) == 0x19 && unless(byte(0x19268C) > 0x03)) ||
               (once(byte(0x19286E) == 0x18) && byte(0x19286E) == 0x19 && unless(byte(0x19284C) > 0x03)) ||
               (once(byte(0x192A2E) == 0x18) && once(byte(0x192A2E) == 0x19) && unless(byte(0x192A0C) > 0x03)) ||
               (once(byte(0x192BEE) == 0x18) && byte(0x192BEE) == 0x19 && unless(byte(0x192BCC) > 0x03)))
)

achievement(
    title = "The True Brave", description = "Reach Level 50 With Ramza", points = 10,
    id = 93880, badge = "103284", published = "1/7/2020 6:13:51 PM", modified = "1/18/2020 5:53:41 PM",
    trigger = never(dword(0x0577B7) == 0x00) && never(dword(0x0577B8) == 0x10000013) &&
              ((once(byte(0x1924EE) == 0x31) && byte(0x1924EE) == 0x32 && unless(byte(0x1924CC) > 0x03)) ||
               (once(byte(0x1926AE) == 0x31) && byte(0x1926AE) == 0x32 && unless(byte(0x19268C) > 0x03)) ||
               (once(byte(0x19286E) == 0x31) && byte(0x19286E) == 0x32 && unless(byte(0x19284C) > 0x03)) ||
               (once(byte(0x192A2E) == 0x31) && once(byte(0x192A2E) == 0x32) && unless(byte(0x192A0C) > 0x03)) ||
               (once(byte(0x192BEE) == 0x31) && byte(0x192BEE) == 0x32 && unless(byte(0x192BCC) > 0x03)))
)

achievement(
    title = "I'M A MIME", description = " Change any character to Mime class", points = 5,
    id = 94346, badge = "103390", published = "1/11/2020 10:36:13 PM", modified = "1/18/2020 5:55:31 PM",
    trigger = never(dword(0x0577B8) != 0x00) && never(dword(0x0577B8) == 0x10000013) &&
              ((byte(0x057F76) == 0x5D && once(byte(0x057F76) != 0x5D)) ||
               (byte(0x058076) == 0x5D && once(byte(0x058076) != 0x5D)) ||
               (byte(0x058176) == 0x5D && once(byte(0x058176) != 0x5D)) ||
               (byte(0x058276) == 0x5D && once(byte(0x058276) != 0x5D)) ||
               (byte(0x058376) == 0x5D && once(byte(0x058376) != 0x5D)) ||
               (byte(0x058476) == 0x5D && once(byte(0x058476) != 0x5D)) ||
               (byte(0x058576) == 0x5D && once(byte(0x058576) != 0x5D)) ||
               (byte(0x058676) == 0x5D && once(byte(0x058676) != 0x5D)) ||
               (byte(0x058776) == 0x5D && once(byte(0x058776) != 0x5D)) ||
               (byte(0x058876) == 0x5D && once(byte(0x058876) != 0x5D)) ||
               (byte(0x058976) == 0x5D && once(byte(0x058976) != 0x5D)) ||
               (byte(0x058A76) == 0x5D && once(byte(0x058A76) != 0x5D)) ||
               (byte(0x058B76) == 0x5D && once(byte(0x058B76) != 0x5D)) ||
               (byte(0x058C76) == 0x5D && once(byte(0x058C76) != 0x5D)) ||
               (byte(0x058D76) == 0x5D && once(byte(0x058D76) != 0x5D)) ||
               (byte(0x058E76) == 0x5D && once(byte(0x058E76) != 0x5D)))
)

achievement(
    title = "Jack Of All Trades", description = "Level All jobs to level 4 or higher with one generic male character", points = 10,
    id = 95231, badge = "104920", published = "1/18/2020 5:27:42 PM", modified = "1/18/2020 5:56:28 PM",
    trigger = never(dword(0x0577B8) == 0x00) &&
              ((byte(0x1924CC) == 0x80 && low4(0x19259E) >= 0x04 && high4(0x19259E) >= 0x04 && low4(0x19259F) >= 0x04 && 
                high4(0x19259F) >= 0x04 && low4(0x1925A0) >= 0x04 && high4(0x1925A0) >= 0x04 && low4(0x1925A1) >= 0x04 && 
                high4(0x1925A1) >= 0x04 && low4(0x1925A2) >= 0x04 && high4(0x1925A2) >= 0x04 && low4(0x1925A3) >= 0x04 && 
                high4(0x1925A3) >= 0x04 && low4(0x1925A4) >= 0x04 && high4(0x1925A4) >= 0x04 && low4(0x1925A5) >= 0x04 && 
                high4(0x1925A5) >= 0x04 && low4(0x1925A6) >= 0x04 && high4(0x1925A6) >= 0x04) ||
               (byte(0x19268C) == 0x80 && low4(0x19275E) >= 0x04 && high4(0x19275E) >= 0x04 && low4(0x19275F) >= 0x04 && 
                high4(0x19275F) >= 0x04 && low4(0x192760) >= 0x04 && high4(0x192760) >= 0x04 && low4(0x192761) >= 0x04 && 
                high4(0x192761) >= 0x04 && low4(0x192762) >= 0x04 && high4(0x192762) >= 0x04 && low4(0x192763) >= 0x04 && 
                high4(0x192763) >= 0x04 && low4(0x192764) >= 0x04 && high4(0x192764) >= 0x04 && low4(0x192765) >= 0x04 && 
                high4(0x192765) >= 0x04 && low4(0x192766) >= 0x04 && high4(0x192766) >= 0x04) ||
               (byte(0x19284C) == 0x80 && low4(0x19291E) >= 0x04 && high4(0x19291E) >= 0x04 && low4(0x19291F) >= 0x04 && 
                high4(0x19291F) >= 0x04 && low4(0x192920) >= 0x04 && high4(0x192920) >= 0x04 && low4(0x192921) >= 0x04 && 
                high4(0x192921) >= 0x04 && low4(0x192922) >= 0x04 && high4(0x192922) >= 0x04 && low4(0x192923) >= 0x04 && 
                high4(0x192923) >= 0x04 && low4(0x192924) >= 0x04 && high4(0x192924) >= 0x04 && low4(0x192925) >= 0x04 && 
                high4(0x192925) >= 0x04 && low4(0x192926) >= 0x04 && high4(0x192926) >= 0x04) ||
               (byte(0x192A0C) == 0x80 && low4(0x192ADE) >= 0x04 && high4(0x192ADE) >= 0x04 && low4(0x192ADF) >= 0x04 && 
                high4(0x192ADF) >= 0x04 && low4(0x192AE0) >= 0x04 && high4(0x192AE0) >= 0x04 && low4(0x192AE1) >= 0x04 && 
                high4(0x192AE1) >= 0x04 && low4(0x192AE2) >= 0x04 && high4(0x192AE2) >= 0x04 && low4(0x192AE3) >= 0x04 && 
                high4(0x192AE3) >= 0x04 && low4(0x192AE4) >= 0x04 && high4(0x192AE4) >= 0x04 && low4(0x192AE5) >= 0x04 && 
                high4(0x192AE5) >= 0x04 && low4(0x192AE6) >= 0x04 && high4(0x192AE6) >= 0x04) ||
               (byte(0x192BCC) == 0x80 && low4(0x192C9E) >= 0x04 && high4(0x192C9E) >= 0x04 && low4(0x192C9F) >= 0x04 && 
                high4(0x192C9F) >= 0x04 && low4(0x192CA0) >= 0x04 && high4(0x192CA0) >= 0x04 && low4(0x192CA1) >= 0x04 && 
                high4(0x192CA1) >= 0x04 && low4(0x192CA2) >= 0x04 && high4(0x192CA2) >= 0x04 && low4(0x192CA3) >= 0x04 && 
                high4(0x192CA3) >= 0x04 && low4(0x192CA4) >= 0x04 && high4(0x192CA4) >= 0x04 && low4(0x192CA5) >= 0x04 && 
                high4(0x192CA5) >= 0x04 && low4(0x192CA6) >= 0x04 && high4(0x192CA6) >= 0x04))
)

achievement(
    title = "Jill Of All Trades", description = "Level All jobs to level 4 or higher with one generic female character", points = 10,
    id = 95232, badge = "104921", published = "1/18/2020 5:27:49 PM", modified = "1/18/2020 5:56:32 PM",
    trigger = never(dword(0x0577B8) == 0x00) &&
              ((byte(0x1924CC) == 0x81 && low4(0x19259E) >= 0x04 && high4(0x19259E) >= 0x04 && low4(0x19259F) >= 0x04 && 
                high4(0x19259F) >= 0x04 && low4(0x1925A0) >= 0x04 && high4(0x1925A0) >= 0x04 && low4(0x1925A1) >= 0x04 && 
                high4(0x1925A1) >= 0x04 && low4(0x1925A2) >= 0x04 && high4(0x1925A2) >= 0x04 && low4(0x1925A3) >= 0x04 && 
                high4(0x1925A3) >= 0x04 && low4(0x1925A4) >= 0x04 && high4(0x1925A4) >= 0x04 && low4(0x1925A5) >= 0x04 && 
                high4(0x1925A5) >= 0x04 && high4(0x1925A6) >= 0x04 && high4(0x1925A7) >= 0x04) ||
               (byte(0x19268C) == 0x81 && low4(0x19275E) >= 0x04 && high4(0x19275E) >= 0x04 && low4(0x19275F) >= 0x04 && 
                high4(0x19275F) >= 0x04 && low4(0x192760) >= 0x04 && high4(0x192760) >= 0x04 && low4(0x192761) >= 0x04 && 
                high4(0x192761) >= 0x04 && low4(0x192762) >= 0x04 && high4(0x192762) >= 0x04 && low4(0x192763) >= 0x04 && 
                high4(0x192763) >= 0x04 && low4(0x192764) >= 0x04 && high4(0x192764) >= 0x04 && low4(0x192765) >= 0x04 && 
                high4(0x192765) >= 0x04 && high4(0x192766) >= 0x04 && high4(0x192767) >= 0x04) ||
               (byte(0x19284C) == 0x81 && low4(0x19291E) >= 0x04 && high4(0x19291E) >= 0x04 && low4(0x19291F) >= 0x04 && 
                high4(0x19291F) >= 0x04 && low4(0x192920) >= 0x04 && high4(0x192920) >= 0x04 && low4(0x192921) >= 0x04 && 
                high4(0x192921) >= 0x04 && low4(0x192922) >= 0x04 && high4(0x192922) >= 0x04 && low4(0x192923) >= 0x04 && 
                high4(0x192923) >= 0x04 && low4(0x192924) >= 0x04 && high4(0x192924) >= 0x04 && low4(0x192925) >= 0x04 && 
                high4(0x192925) >= 0x04 && high4(0x192926) >= 0x04 && high4(0x192927) >= 0x04) ||
               (byte(0x192A0C) == 0x81 && low4(0x192ADE) >= 0x04 && high4(0x192ADE) >= 0x04 && low4(0x192ADF) >= 0x04 && 
                high4(0x192ADF) >= 0x04 && low4(0x192AE0) >= 0x04 && high4(0x192AE0) >= 0x04 && low4(0x192AE1) >= 0x04 && 
                high4(0x192AE1) >= 0x04 && low4(0x192AE2) >= 0x04 && high4(0x192AE2) >= 0x04 && low4(0x192AE3) >= 0x04 && 
                high4(0x192AE3) >= 0x04 && low4(0x192AE4) >= 0x04 && high4(0x192AE4) >= 0x04 && low4(0x192AE5) >= 0x04 && 
                high4(0x192AE5) >= 0x04 && high4(0x192AE6) >= 0x04 && high4(0x192AE7) >= 0x04) ||
               (byte(0x192BCC) == 0x81 && low4(0x192C9E) >= 0x04 && high4(0x192C9E) >= 0x04 && low4(0x192C9F) >= 0x04 && 
                high4(0x192C9F) >= 0x04 && low4(0x192CA0) >= 0x04 && high4(0x192CA0) >= 0x04 && low4(0x192CA1) >= 0x04 && 
                high4(0x192CA1) >= 0x04 && low4(0x192CA2) >= 0x04 && high4(0x192CA2) >= 0x04 && low4(0x192CA3) >= 0x04 && 
                high4(0x192CA3) >= 0x04 && low4(0x192CA4) >= 0x04 && high4(0x192CA4) >= 0x04 && low4(0x192CA5) >= 0x04 && 
                high4(0x192CA5) >= 0x04 && high4(0x192CA6) >= 0x04 && high4(0x192CA7) >= 0x04))
)

achievement(
    title = "The Temple Knight", description = "Recruit Beowulf", points = 10,
    id = 93877, badge = "103281", published = "1/7/2020 6:08:16 PM", modified = "1/21/2020 5:54:09 PM",
    trigger = never(dword(0x0577E0) != 0x08) && never(dword(0x0577E8) != 0x27) &&
              ((byte(0x058074) == 0x1F) ||
               (byte(0x058174) == 0x1F) ||
               (byte(0x058274) == 0x1F) ||
               (byte(0x058374) == 0x1F) ||
               (byte(0x058474) == 0x1F) ||
               (byte(0x058574) == 0x1F) ||
               (byte(0x058674) == 0x1F) ||
               (byte(0x058774) == 0x1F) ||
               (byte(0x058874) == 0x1F) ||
               (byte(0x058974) == 0x1F) ||
               (byte(0x058A74) == 0x1F) ||
               (byte(0x058B74) == 0x1F) ||
               (byte(0x058C74) == 0x1F) ||
               (byte(0x058D74) == 0x1F) ||
               (byte(0x058E74) == 0x1F))
)

achievement(
    title = "The Holy Dragon", description = "Recruit Reis in Dragon Form", points = 5,
    id = 93878, badge = "103282", published = "1/7/2020 6:08:19 PM", modified = "1/21/2020 5:56:35 PM",
    trigger = never(dword(0x0577E0) != 0x08) && never(dword(0x0577E8) != 0x27) &&
              ((byte(0x058074) == 0x48) ||
               (byte(0x058174) == 0x48) ||
               (byte(0x058274) == 0x48) ||
               (byte(0x058374) == 0x48) ||
               (byte(0x058474) == 0x48) ||
               (byte(0x058574) == 0x48) ||
               (byte(0x058674) == 0x48) ||
               (byte(0x058774) == 0x48) ||
               (byte(0x058874) == 0x48) ||
               (byte(0x058974) == 0x48) ||
               (byte(0x058A74) == 0x48) ||
               (byte(0x058B74) == 0x48) ||
               (byte(0x058C74) == 0x48) ||
               (byte(0x058D74) == 0x48) ||
               (byte(0x058E74) == 0x48))
)

achievement(
    title = "The Worker", description = "Recruit Worker 8", points = 10,
    id = 93980, badge = "103388", published = "1/9/2020 2:40:26 AM", modified = "1/23/2020 10:38:39 PM",
    trigger = never(dword(0x0577E0) != 0x0B) && never(dword(0x0577E8) != 0x29) &&
              ((byte(0x058074) == 0x82 && repeated(100, byte(0x058076) != 0x91) && byte(0x058076) == 0x91) ||
               (byte(0x058174) == 0x82 && repeated(100, byte(0x058176) != 0x91) && byte(0x058176) == 0x91) ||
               (byte(0x058274) == 0x82 && repeated(100, byte(0x058276) != 0x91) && byte(0x058276) == 0x91) ||
               (byte(0x058374) == 0x82 && repeated(100, byte(0x058376) != 0x91) && byte(0x058376) == 0x91) ||
               (byte(0x058474) == 0x82 && repeated(100, byte(0x058476) != 0x91) && byte(0x058476) == 0x91) ||
               (byte(0x058574) == 0x82 && repeated(100, byte(0x058576) != 0x91) && byte(0x058576) == 0x91) ||
               (byte(0x058674) == 0x82 && repeated(100, byte(0x058676) != 0x91) && byte(0x058676) == 0x91) ||
               (byte(0x058774) == 0x82 && repeated(100, byte(0x058776) != 0x91) && byte(0x058776) == 0x91) ||
               (byte(0x058874) == 0x82 && repeated(100, byte(0x058876) != 0x91) && byte(0x058876) == 0x91) ||
               (byte(0x058974) == 0x82 && repeated(100, byte(0x058976) != 0x91) && byte(0x058976) == 0x91) ||
               (byte(0x058A74) == 0x82 && repeated(100, byte(0x058A76) != 0x91) && byte(0x058A76) == 0x91) ||
               (byte(0x058B74) == 0x82 && repeated(100, byte(0x058B76) != 0x91) && byte(0x058B76) == 0x91) ||
               (byte(0x058C74) == 0x82 && repeated(100, byte(0x058C76) != 0x91) && byte(0x058C76) == 0x91) ||
               (byte(0x058D74) == 0x82 && repeated(100, byte(0x058D76) != 0x91) && byte(0x058D76) == 0x91) ||
               (byte(0x058E74) == 0x82 && repeated(100, byte(0x058E76) != 0x91) && byte(0x058E76) == 0x91))
)

achievement(
    title = "Genocide Mode", description = "Kill all enemies then Defeat Worker 7 at Nelveska Temple", points = 10,
    id = 93984, badge = "103413", published = "1/9/2020 6:29:10 PM", modified = "1/18/2020 5:54:05 PM",
    trigger = never(dword(0x0578D4) < 0x2D) && never(dword(0x0577E0) != 0x17) && never(dword(0x0577E8) != 0x46) && 
              word(0x1908F4) == 0x00 && repeated(500, word(0x190AB4) == 0x00) && repeated(500, word(0x190C74) == 0x00) && 
              repeated(500, word(0x190E34) == 0x00) && repeated(500, word(0x190FF4) == 0x00) && repeated(500,
               word(0x1911B4) == 0x00)
)

achievement(
    title = "The Dragoneer", description = "Recruit Reis in Human Form", points = 5,
    id = 93985, badge = "103387", published = "1/9/2020 6:31:59 PM", modified = "1/21/2020 5:59:17 PM",
    trigger = never(dword(0x0577E0) != 0x17) && never(dword(0x0577E8) != 0x46) &&
              ((byte(0x058074) == 0x0F) ||
               (byte(0x058174) == 0x0F) ||
               (byte(0x058274) == 0x0F) ||
               (byte(0x058374) == 0x0F) ||
               (byte(0x058474) == 0x0F) ||
               (byte(0x058574) == 0x0F) ||
               (byte(0x058674) == 0x0F) ||
               (byte(0x058774) == 0x0F) ||
               (byte(0x058874) == 0x0F) ||
               (byte(0x058974) == 0x0F) ||
               (byte(0x058A74) == 0x0F) ||
               (byte(0x058B74) == 0x0F) ||
               (byte(0x058C74) == 0x0F) ||
               (byte(0x058D74) == 0x0F) ||
               (byte(0x058E74) == 0x0F))
)

achievement(
    title = "Soldier 1st Class", description = "Recruit Cloud", points = 10,
    id = 94175, badge = "103386", published = "1/10/2020 10:12:35 PM", modified = "1/21/2020 6:00:14 PM",
    trigger = never(dword(0x0577E0) != 0x0E) && never(dword(0x0577E8) != 0x2F) &&
              ((byte(0x058074) == 0x32) ||
               (byte(0x058174) == 0x32) ||
               (byte(0x058274) == 0x32) ||
               (byte(0x058374) == 0x32) ||
               (byte(0x058474) == 0x32) ||
               (byte(0x058574) == 0x32) ||
               (byte(0x058674) == 0x32) ||
               (byte(0x058774) == 0x32) ||
               (byte(0x058874) == 0x32) ||
               (byte(0x058974) == 0x32) ||
               (byte(0x058A74) == 0x32) ||
               (byte(0x058B74) == 0x32) ||
               (byte(0x058C74) == 0x32) ||
               (byte(0x058D74) == 0x32) ||
               (byte(0x058E74) == 0x32))
)

achievement(
    title = "Push It To The Limit", description = "Find Materia Blade", points = 5,
    id = 94176, badge = "103663", published = "1/10/2020 10:29:12 PM", modified = "1/30/2020 5:32:01 PM",
    trigger = never(dword(0x0577E0) != 0x1B) && never(dword(0x0577E8) != 0x4B) && once(bit0(0x059439) == 0x00) && 
              bit0(0x059439) == 0x01 && once(byte(0x059700) == 0x00) && byte(0x059700) == 0x01
)

achievement(
    title = "Disappearing Act[m]", description = "Find The Vanishing Mantle", points = 5,
    id = 94537, badge = "104146", published = "1/13/2020 6:26:06 PM", modified = "1/18/2020 5:55:55 PM",
    trigger = never(dword(0x0577E0) != 0x2A) && never(dword(0x0577E8) != 0x5A) && repeated(100, bit5(0x059441) == 0x00) && 
              bit5(0x059441) == 0x01 && byte(0x0597CB) >= 0x01 && once(byte(0x0597CB) >= prev(byte(0x0597CB)))
)

achievement(
    title = "Close to Your Heart", description = "Perform a crystal move", points = 1,
    id = 95079, badge = "104809", published = "1/17/2020 9:46:55 PM", modified = "3/30/2021 3:49:08 PM",
    trigger = never(dword(0x0577B8) == 0x00) && never(dword(0x0577B8) == 0x10000013) && (byte(0x192652) == 0x01 ||
               byte(0x192812) == 0x01 || byte(0x1929D2) == 0x01 || byte(0x192B92) == 0x01 || byte(0x192D52) == 0x01) &&
              ((byte(0x1908CC) != 0x00 && once(byte(0x1908CD) != 0xFF) && byte(0x1908CD) == 0xFF && once(word(0x1908F4)
                 == 0x00) && once(bit6(0x190924) != 0x01) && bit6(0x190924) == 0x01) ||
               (byte(0x190C4C) != 0x00 && once(byte(0x190C4D) != 0xFF) && byte(0x190C4D) == 0xFF && once(word(0x190C74)
                 == 0x00) && once(bit6(0x190AE4) != 0x01) && bit6(0x190AE4) == 0x01) ||
               (byte(0x190C4C) != 0x00 && once(byte(0x190C4D) != 0xFF) && byte(0x190C4D) == 0xFF && once(word(0x190C74)
                 == 0x00) && once(bit6(0x190CA4) != 0x01) && bit6(0x190CA4) == 0x01) ||
               (byte(0x190E0C) != 0x00 && once(byte(0x190E0D) != 0xFF) && byte(0x190E0D) == 0xFF && once(word(0x190E34)
                 == 0x00) && once(bit6(0x190E64) != 0x01) && bit6(0x190E64) == 0x01) ||
               (byte(0x190FCC) != 0x00 && once(byte(0x190FCD) != 0xFF) && byte(0x190FCD) == 0xFF && once(word(0x190FF4)
                 == 0x00) && once(bit6(0x191024) != 0x01) && bit6(0x191024) == 0x01) ||
               (byte(0x19118C) != 0x00 && once(byte(0x19118D) != 0xFF) && byte(0x19118D) == 0xFF && once(word(0x1911B4)
                 == 0x00) && once(bit6(0x1911E4) != 0x01) && bit6(0x1911E4) == 0x01) ||
               (byte(0x19134C) != 0x00 && once(byte(0x19134D) != 0xFF) && byte(0x19134D) == 0xFF && once(word(0x191374)
                 == 0x00) && once(bit6(0x1913A4) != 0x01) && bit6(0x1913A4) == 0x01) ||
               (byte(0x19150C) != 0x00 && once(byte(0x19150D) != 0xFF) && byte(0x19150D) == 0xFF && once(word(0x191534)
                 == 0x00) && once(bit6(0x191564) != 0x01) && bit6(0x191564) == 0x01) ||
               (byte(0x1916CC) != 0x00 && once(byte(0x1916CD) != 0xFF) && byte(0x1916CD) == 0xFF && once(word(0x1916F4)
                 == 0x00) && once(bit6(0x191724) != 0x01) && bit6(0x191724) == 0x01) ||
               (byte(0x19188C) != 0x00 && once(byte(0x19188D) != 0xFF) && byte(0x19188D) == 0xFF && once(word(0x1918B4)
                 == 0x00) && once(bit6(0x1918E4) != 0x01) && bit6(0x1918E4) == 0x01) ||
               (byte(0x191A4C) != 0x00 && once(byte(0x191A4D) != 0xFF) && byte(0x191A4D) == 0xFF && once(word(0x191A74)
                 == 0x00) && once(bit6(0x191AA4) != 0x01) && bit6(0x191AA4) == 0x01) ||
               (byte(0x191C0C) != 0x00 && once(byte(0x191C0D) != 0xFF) && byte(0x191C0D) == 0xFF && once(word(0x191C34)
                 == 0x00) && once(bit6(0x191C64) != 0x01) && bit6(0x191C64) == 0x01))
)

achievement(
    title = "Buried Treasure", description = "Find an item using Move-Find Item skill", points = 1,
    id = 95080, badge = "104810", published = "1/17/2020 10:22:14 PM", modified = "4/3/2021 1:09:42 AM",
    trigger = dword(0x0577B8) != 0x00 && (byte(0x192652) == 0x01 || byte(0x192812) == 0x01 || byte(0x1929D2) == 0x01 ||
               byte(0x192B92) == 0x01 || byte(0x192D52) == 0x01) && (dword(0x059414) > prev(dword(0x059414)) ||
               dword(0x059418) > prev(dword(0x059418)) || dword(0x05941C) > prev(dword(0x05941C)) || dword(0x059420) >
               prev(dword(0x059420)) || dword(0x059424) > prev(dword(0x059424)) || dword(0x059428) >
               prev(dword(0x059428)) || dword(0x05942C) > prev(dword(0x05942C)) || dword(0x059430) >
               prev(dword(0x059430)) || dword(0x059434) > prev(dword(0x059434)) || dword(0x059438) >
               prev(dword(0x059438)) || dword(0x05943C) > prev(dword(0x05943C)) || dword(0x059440) >
               prev(dword(0x059440)) || dword(0x059444) > prev(dword(0x059444)) || dword(0x059448) >
               prev(dword(0x059448)) || dword(0x05944C) > prev(dword(0x05944C)))
)

achievement(
    title = "Mover and Shaker", description = "Move Find All items in every random encounter level(non deep dungeon or Bervenia Volcano)", points = 25,
    id = 95078, badge = "104800", published = "1/17/2020 9:23:08 PM", modified = "2/8/2022 6:48:49 PM",
    trigger = never(dword(0x0577B8) == 0x10000013) && never(dword(0x0577B8) == 0x00) && byte(0x05943D) == 0xFF && 
              byte(0x05943E) == 0xFF && byte(0x05943F) == 0xFF && byte(0x059440) == 0xFF && (prev(bit0(0x059437)) +
               prev(bit1(0x059437)) + prev(bit2(0x059437)) + prev(bit3(0x059437)) + prev(bit4(0x059438)) +
               prev(bit5(0x059438)) + prev(bit5(0x059438)) + prev(bit7(0x059438)) + prev(bit4(0x059439)) +
               prev(bit5(0x059439)) + prev(bit6(0x059439)) + prev(bit7(0x059439)) + prev(bit0(0x05943A)) +
               prev(bit1(0x05943A)) + prev(bit2(0x05943A)) + prev(bit3(0x05943A)) + prev(bit4(0x05943A)) +
               prev(bit5(0x05943A)) + prev(bit6(0x05943A)) + prev(bit7(0x05943A)) + prev(bit0(0x05943B)) +
               prev(bit1(0x05943B)) + prev(bit2(0x05943B)) + prev(bit3(0x05943B)) + prev(bit4(0x05943B)) +
               prev(bit5(0x05943B)) + prev(bit6(0x05943B)) + prev(bit7(0x05943B)) + prev(bit0(0x05943C)) +
               prev(bit1(0x05943C)) + prev(bit2(0x05943C)) + prev(bit3(0x05943C)) + prev(bit4(0x05943C)) +
               prev(bit5(0x05943C)) + prev(bit6(0x05943C)) + prev(bit7(0x05943C)) + prev(bit0(0x05943D)) +
               prev(bit1(0x05943D)) + prev(bit2(0x05943D)) + prev(bit3(0x05943D)) + prev(bit4(0x05943D)) +
               prev(bit5(0x05943D)) + prev(bit6(0x05943D)) + prev(bit7(0x05943D)) + prev(bit0(0x05943E)) +
               prev(bit1(0x05943E)) + prev(bit2(0x05943E)) + prev(bit3(0x05943E)) + prev(bit4(0x05943E)) +
               prev(bit5(0x05943E)) + prev(bit6(0x05943E)) + prev(bit7(0x05943E)) + prev(bit0(0x05943F)) +
               prev(bit1(0x05943F)) + prev(bit2(0x05943F)) + prev(bit3(0x05943F)) + prev(bit4(0x05943F)) +
               prev(bit5(0x05943F)) + prev(bit6(0x05943F)) + prev(bit7(0x05943F)) + prev(bit0(0x059440)) +
               prev(bit1(0x059440)) + prev(bit2(0x059440)) + prev(bit3(0x059440)) + prev(bit4(0x059440)) +
               prev(bit5(0x059440)) + prev(bit6(0x059440)) + prev(bit7(0x059440)) + prev(bit4(0x059441)) +
               prev(bit5(0x059441)) + prev(bit6(0x059441)) + prev(bit7(0x059441))) == 0x47 && measured((bit0(0x059437) +
               bit1(0x059437) + bit2(0x059437) + bit3(0x059437) + bit4(0x059438) + bit5(0x059438) + bit6(0x059438) +
               bit7(0x059438) + bit4(0x059439) + bit5(0x059439) + bit6(0x059439) + bit7(0x059439) + bit0(0x05943A) +
               bit1(0x05943A) + bit2(0x05943A) + bit3(0x05943A) + bit4(0x05943A) + bit5(0x05943A) + bit6(0x05943A) +
               bit7(0x05943A) + bit0(0x05943B) + bit1(0x05943B) + bit2(0x05943B) + bit3(0x05943B) + bit4(0x05943B) +
               bit5(0x05943B) + bit6(0x05943B) + bit7(0x05943B) + bit0(0x05943C) + bit1(0x05943C) + bit2(0x05943C) +
               bit3(0x05943C) + bit4(0x05943C) + bit5(0x05943C) + bit6(0x05943C) + bit7(0x05943C) + bit0(0x05943D) +
               bit1(0x05943D) + bit2(0x05943D) + bit3(0x05943D) + bit4(0x05943D) + bit5(0x05943D) + bit6(0x05943D) +
               bit7(0x05943D) + bit0(0x05943E) + bit1(0x05943E) + bit2(0x05943E) + bit3(0x05943E) + bit4(0x05943E) +
               bit5(0x05943E) + bit6(0x05943E) + bit7(0x05943E) + bit0(0x05943F) + bit1(0x05943F) + bit2(0x05943F) +
               bit3(0x05943F) + bit4(0x05943F) + bit5(0x05943F) + bit6(0x05943F) + bit7(0x05943F) + bit0(0x059440) +
               bit1(0x059440) + bit2(0x059440) + bit3(0x059440) + bit4(0x059440) + bit5(0x059440) + bit6(0x059440) +
               bit7(0x059440) + bit4(0x059441) + bit5(0x059441) + bit6(0x059441) + bit7(0x059441)) == 0x48)
)

achievement(
    title = "Sealed The Evil", description = "Petrify an enemy(No special characters)", points = 1,
    id = 94951, badge = "104629", published = "1/16/2020 6:10:06 PM", modified = "1/18/2020 5:56:08 PM",
    trigger = never(dword(0x0577B8) == 0x00) && never(dword(0x0577B8) == 0x10000013) &&
              ((byte(0x1908CC) >= 0x80 && byte(0x1908CC) <= 0x82 && once(bit7(0x190925) == 0x00) && bit7(0x190925) ==
                 0x01) ||
               (byte(0x190A8C) >= 0x80 && byte(0x190A8C) <= 0x82 && once(bit7(0x190AE5) == 0x00) && bit7(0x190AE5) ==
                 0x01) ||
               (byte(0x190C4C) >= 0x80 && byte(0x190C4C) <= 0x82 && once(bit7(0x190CA5) == 0x00) && bit7(0x190CA5) ==
                 0x01) ||
               (byte(0x190E0C) >= 0x80 && byte(0x190E0C) <= 0x82 && once(bit7(0x190E65) == 0x00) && bit7(0x190E65) ==
                 0x01) ||
               (byte(0x190FCC) >= 0x80 && byte(0x190FCC) <= 0x82 && once(bit7(0x191025) == 0x00) && bit7(0x191025) ==
                 0x01) ||
               (byte(0x19118C) >= 0x80 && byte(0x19118C) <= 0x82 && once(bit7(0x1911E5) == 0x00) && bit7(0x1911E5) ==
                 0x01) ||
               (byte(0x19134C) >= 0x80 && byte(0x19134C) <= 0x82 && once(bit7(0x1913A5) == 0x00) && bit7(0x1913A5) ==
                 0x01) ||
               (byte(0x19150C) >= 0x80 && byte(0x19150C) <= 0x82 && once(bit7(0x191565) == 0x00) && bit7(0x191565) ==
                 0x01) ||
               (byte(0x1916CC) >= 0x80 && byte(0x1916CC) <= 0x82 && once(bit7(0x191725) == 0x00) && bit7(0x191725) ==
                 0x01) ||
               (byte(0x19188C) >= 0x80 && byte(0x19188C) <= 0x82 && once(bit7(0x1918E5) == 0x00) && bit7(0x1918E5) ==
                 0x01) ||
               (byte(0x191A4C) >= 0x80 && byte(0x191A4C) <= 0x82 && once(bit7(0x191AA5) == 0x00) && bit7(0x191AA5) ==
                 0x01) ||
               (byte(0x191C0C) >= 0x80 && byte(0x191C0C) <= 0x82 && once(bit7(0x191C65) == 0x00) && bit7(0x191C65) ==
                 0x01) ||
               (byte(0x191DCC) >= 0x80 && byte(0x191DCC) <= 0x82 && once(bit7(0x191E25) == 0x00) && bit7(0x191E25) ==
                 0x01) ||
               (byte(0x191F8C) >= 0x80 && byte(0x191F8C) <= 0x82 && once(bit7(0x191FE5) == 0x00) && bit7(0x191FE5) ==
                 0x01) ||
               (byte(0x19214C) >= 0x80 && byte(0x19214C) <= 0x82 && once(bit7(0x1921A5) == 0x00) && bit7(0x1921A5) ==
                 0x01) ||
               (byte(0x19230C) >= 0x80 && byte(0x19230C) <= 0x82 && once(bit7(0x192365) == 0x00) && bit7(0x192365) ==
                 0x01))
)

achievement(
    title = "Choking The Chicken", description = "Kill a chicken(Generic enemies only)", points = 5,
    id = 94952, badge = "104636", published = "1/16/2020 6:19:51 PM", modified = "11/27/2021 6:07:39 AM",
    trigger = never(word(0x0577B8) == 0x00) && never(dword(0x0577B8) == 0x10000013) &&
              ((byte(0x1908CC) >= 0x80 && byte(0x1908CC) <= 0x82 && bit2(0x190926) == 0x01 && word(0x1908F4) == 0x00) ||
               (byte(0x190A8C) >= 0x80 && byte(0x190A8C) <= 0x82 && bit2(0x190AE6) == 0x01 && word(0x190AB4) == 0x00) ||
               (byte(0x190C4C) >= 0x80 && byte(0x190C4C) <= 0x82 && bit2(0x190CA6) == 0x01 && word(0x190C74) == 0x00) ||
               (byte(0x190E0C) >= 0x80 && byte(0x190E0C) <= 0x82 && bit2(0x190E66) == 0x01 && word(0x190E34) == 0x00) ||
               (byte(0x190FCC) >= 0x80 && byte(0x190FCC) <= 0x82 && bit2(0x191026) == 0x01 && word(0x190FF4) == 0x00) ||
               (byte(0x19118C) >= 0x80 && byte(0x19118C) <= 0x82 && bit2(0x1911E6) == 0x01 && word(0x1911B4) == 0x00) ||
               (byte(0x19134C) >= 0x80 && byte(0x19134C) <= 0x82 && bit2(0x1913A6) == 0x01 && word(0x191374) == 0x00) ||
               (byte(0x19150C) >= 0x80 && byte(0x19150C) <= 0x82 && bit2(0x191566) == 0x01 && word(0x191534) == 0x00) ||
               (byte(0x1916CC) >= 0x80 && byte(0x1916CC) <= 0x82 && bit2(0x191726) == 0x01 && word(0x1916F4) == 0x00) ||
               (byte(0x19188C) >= 0x80 && byte(0x19188C) <= 0x82 && bit2(0x1918E6) == 0x01 && word(0x1918B4) == 0x00) ||
               (byte(0x191A4C) >= 0x80 && byte(0x191A4C) <= 0x82 && bit2(0x191AA6) == 0x01 && word(0x191A74) == 0x00) ||
               (byte(0x191C0C) >= 0x80 && byte(0x191C0C) <= 0x82 && bit2(0x191C66) == 0x01 && word(0x191C34) == 0x00) ||
               (byte(0x191DCC) >= 0x80 && byte(0x191DCC) <= 0x82 && bit2(0x191E26) == 0x01 && word(0x191DF4) == 0x00) ||
               (byte(0x191F8C) >= 0x80 && byte(0x191F8C) <= 0x82 && bit2(0x191FE6) == 0x01 && word(0x191FB4) == 0x00) ||
               (byte(0x19214C) >= 0x80 && byte(0x19214C) <= 0x82 && bit2(0x1921A6) == 0x01 && word(0x192174) == 0x00) ||
               (byte(0x19230C) >= 0x80 && byte(0x19230C) <= 0x82 && bit2(0x192366) == 0x01 && word(0x192334) == 0x00))
)

achievement(
    title = "Kiss This B***h", description = "Kill a frog(Generic Human Enemies Only)", points = 5,
    id = 94953, badge = "104638", published = "1/16/2020 6:26:59 PM", modified = "11/27/2021 6:07:39 AM",
    trigger = never(dword(0x0577B8) == 0x00) && never(dword(0x0577B8) == 0x10000013) &&
              ((unless(byte(0x1908CC) < 0x80) && unless(byte(0x1908CC) > 0x81) && bit1(0x190926) == 0x01 && 
                word(0x1908F4) == 0x00 && repeated(100, word(0x1908F4) != 0x00)) ||
               (unless(byte(0x190A8C) < 0x80) && unless(byte(0x190A8C) > 0x81) && bit1(0x190AE6) == 0x01 && 
                word(0x190AB4) == 0x00 && repeated(100, word(0x190AB4) != 0x00)) ||
               (unless(byte(0x190C4C) < 0x80) && unless(byte(0x190C4C) > 0x81) && bit1(0x190CA6) == 0x01 && 
                word(0x190C74) == 0x00 && repeated(100, word(0x190C74) != 0x00)) ||
               (unless(byte(0x190E0C) < 0x80) && unless(byte(0x190E0C) > 0x81) && bit1(0x190E66) == 0x01 && 
                word(0x190E34) == 0x00 && repeated(100, word(0x190E34) != 0x00)) ||
               (unless(byte(0x190FCC) < 0x80) && unless(byte(0x190FCC) > 0x81) && bit1(0x191026) == 0x01 && 
                word(0x190FF4) == 0x00 && repeated(100, word(0x190FF4) != 0x00)) ||
               (unless(byte(0x19118C) < 0x80) && unless(byte(0x19118C) > 0x81) && bit1(0x1911E6) == 0x01 && 
                word(0x1911B4) == 0x00 && repeated(100, word(0x1911B4) != 0x00)) ||
               (unless(byte(0x19134C) < 0x80) && unless(byte(0x19134C) > 0x81) && bit1(0x1913A6) == 0x01 && 
                word(0x191374) == 0x00 && repeated(100, word(0x191374) != 0x00)) ||
               (unless(byte(0x19150C) < 0x80) && unless(byte(0x19150C) > 0x81) && bit1(0x191566) == 0x01 && 
                word(0x191534) == 0x00 && repeated(100, word(0x191534) != 0x00)) ||
               (unless(byte(0x1916CC) < 0x80) && unless(byte(0x1916CC) > 0x81) && bit1(0x191726) == 0x01 && 
                word(0x1916F4) == 0x00 && repeated(100, word(0x1916F4) != 0x00)) ||
               (unless(byte(0x19188C) < 0x80) && unless(byte(0x19188C) > 0x81) && bit1(0x1918E6) == 0x01 && 
                word(0x1918B4) == 0x00 && repeated(100, word(0x1918B4) != 0x00)) ||
               (unless(byte(0x191A4C) < 0x80) && unless(byte(0x191A4C) > 0x81) && bit1(0x191AA6) == 0x01 && 
                word(0x191A74) == 0x00 && repeated(100, word(0x191A74) != 0x00)) ||
               (unless(byte(0x191C0C) < 0x80) && unless(byte(0x191C0C) > 0x81) && bit1(0x191C66) == 0x01 && 
                word(0x191C34) == 0x00 && repeated(100, word(0x191C34) != 0x00)) ||
               (unless(byte(0x191DCC) < 0x80) && unless(byte(0x191DCC) > 0x81) && bit1(0x191E26) == 0x01 && 
                word(0x191DF4) == 0x00 && repeated(100, word(0x191DF4) != 0x00)) ||
               (unless(byte(0x191F8C) < 0x80) && unless(byte(0x191F8C) > 0x81) && bit1(0x191FE6) == 0x01 && 
                word(0x191FB4) == 0x00 && repeated(100, word(0x191FB4) != 0x00)) ||
               (unless(byte(0x19214C) < 0x80) && unless(byte(0x19214C) > 0x81) && bit1(0x1921A6) == 0x01 && 
                word(0x192174) == 0x00 && repeated(100, word(0x192174) != 0x00)) ||
               (unless(byte(0x19230C) < 0x80) && unless(byte(0x19230C) > 0x81) && bit1(0x192366) == 0x01 && 
                word(0x192334) == 0x00 && repeated(100, word(0x192334) != 0x00)))
)

achievement(
    title = "Good Way To Make a Buck", description = "Complete your first Proposition", points = 1,
    id = 94741, badge = "99258", published = "1/15/2020 4:57:26 PM", modified = "1/18/2020 5:55:57 PM",
    trigger = never(byte(0x0578D4) < 0x10) && never(dword(0x0577B8) != 0x00) &&
              ((once((low4(0x057978) + high4(0x057978) + low4(0x057979) + high4(0x057979) + low4(0x05797A) +
                 high4(0x05797A) + low4(0x05797B) + high4(0x05797B) + low4(0x05797C) + high4(0x05797C) + low4(0x05797D)
                 + high4(0x05797D) + low4(0x05797E) + high4(0x05797E) + low4(0x05797F) + high4(0x05797F)) == 0x0A) && 
                (low4(0x057978) + high4(0x057978) + low4(0x057979) + high4(0x057979) + low4(0x05797A) + high4(0x05797A)
                 + low4(0x05797B) + high4(0x05797B) + low4(0x05797C) + high4(0x05797C) + low4(0x05797D) +
                 high4(0x05797D) + low4(0x05797E) + high4(0x05797E) + low4(0x05797F) + high4(0x05797F)) == 0x0C) ||
               (once((low4(0x057980) + high4(0x057980) + low4(0x057981) + high4(0x057981) + low4(0x057982) +
                 high4(0x057982) + low4(0x057983) + high4(0x057983) + low4(0x057984) + high4(0x057984) + low4(0x057985)
                 + high4(0x057985) + low4(0x057986) + high4(0x057986) + low4(0x057987) + high4(0x057987)) == 0x0A) && 
                (low4(0x057980) + high4(0x057980) + low4(0x057981) + high4(0x057981) + low4(0x057982) + high4(0x057982)
                 + low4(0x057983) + high4(0x057983) + low4(0x057984) + high4(0x057984) + low4(0x057985) +
                 high4(0x057985) + low4(0x057986) + high4(0x057986) + low4(0x057987) + high4(0x057987)) == 0x0C) ||
               (once((low4(0x057988) + high4(0x057988) + low4(0x057989) + high4(0x057989) + low4(0x05798A) +
                 high4(0x05798A) + low4(0x05798B) + high4(0x05798B) + low4(0x05798C) + high4(0x05798C) + low4(0x05798D)
                 + high4(0x05798D) + low4(0x05798E) + high4(0x05798E) + low4(0x05798F) + high4(0x05798F)) == 0x0A) && 
                (low4(0x057988) + high4(0x057988) + low4(0x057989) + high4(0x057989) + low4(0x05798A) + high4(0x05798A)
                 + low4(0x05798B) + high4(0x05798B) + low4(0x05798C) + high4(0x05798C) + low4(0x05798D) +
                 high4(0x05798D) + low4(0x05798E) + high4(0x05798E) + low4(0x05798F) + high4(0x05798F)) == 0x0C) ||
               (once((low4(0x057990) + high4(0x057990) + low4(0x057991) + high4(0x057991) + low4(0x057992) +
                 high4(0x057992) + low4(0x057993) + high4(0x057993) + low4(0x057994) + high4(0x057994) + low4(0x057995)
                 + high4(0x057995) + low4(0x057996) + high4(0x057996) + low4(0x057997) + high4(0x057997)) == 0x0A) && 
                (low4(0x057990) + high4(0x057990) + low4(0x057991) + high4(0x057991) + low4(0x057992) + high4(0x057992)
                 + low4(0x057993) + high4(0x057993) + low4(0x057994) + high4(0x057994) + low4(0x057995) +
                 high4(0x057995) + low4(0x057996) + high4(0x057996) + low4(0x057997) + high4(0x057997)) == 0x0C) ||
               (once((low4(0x057998) + high4(0x057998) + low4(0x057999) + high4(0x057999) + low4(0x05799A) +
                 high4(0x05799A) + low4(0x05799B) + high4(0x05799B) + low4(0x05799C) + high4(0x05799C) + low4(0x05799D)
                 + high4(0x05799D) + low4(0x05799E) + high4(0x05799E) + low4(0x05799F) + high4(0x05799F)) == 0x0A) && 
                (low4(0x057998) + high4(0x057998) + low4(0x057999) + high4(0x057999) + low4(0x05799A) + high4(0x05799A)
                 + low4(0x05799B) + high4(0x05799B) + low4(0x05799C) + high4(0x05799C) + low4(0x05799D) +
                 high4(0x05799D) + low4(0x05799E) + high4(0x05799E) + low4(0x05799F) + high4(0x05799F)) == 0x0C) ||
               (once((low4(0x0579A0) + high4(0x0579A0) + low4(0x0579A1) + high4(0x0579A1) + low4(0x0579A2) +
                 high4(0x0579A2) + low4(0x0579A3) + high4(0x0579A3) + low4(0x0579A4) + high4(0x0579A4) + low4(0x0579A5)
                 + high4(0x0579A5) + low4(0x0579A6) + high4(0x0579A6) + low4(0x0579A7) + high4(0x0579A7)) == 0x0A) && 
                (low4(0x0579A0) + high4(0x0579A0) + low4(0x0579A1) + high4(0x0579A1) + low4(0x0579A2) + high4(0x0579A2)
                 + low4(0x0579A3) + high4(0x0579A3) + low4(0x0579A4) + high4(0x0579A4) + low4(0x0579A5) +
                 high4(0x0579A5) + low4(0x0579A6) + high4(0x0579A6) + low4(0x0579A7) + high4(0x0579A7)) == 0x0C))
)

achievement(
    title = "Treasure Hunter Zero", description = "Recieve a treasure from a proposition", points = 1,
    id = 94749, badge = "104440", published = "1/15/2020 5:13:14 PM", modified = "8/13/2021 8:06:29 PM",
    trigger = byte(0x0578D4) >= 0x10 && dword(0x0577B8) == 0x00 && (prev(byte(0x057970)) + prev(byte(0x057971)) +
               prev(byte(0x057972)) + prev(byte(0x057973))) == 0x00 && (byte(0x057970) + byte(0x057971) + byte(0x057972)
               + byte(0x057973)) > 0x01
)

achievement(
    title = "Adventurer Zero", description = "Find an unexplored land from a proposition", points = 1,
    id = 94750, badge = "104442", published = "1/15/2020 5:23:31 PM", modified = "8/13/2021 8:09:57 PM",
    trigger = byte(0x0578D4) >= 0x10 && dword(0x0577B8) == 0x00 && (prev(byte(0x057976)) + prev(byte(0x057977))) == 0x00 && 
              (byte(0x057976) + byte(0x057977)) >= 0x01
)

achievement(
    title = "Master Treasure Hunter[m]", description = "Find all treasures from propositions", points = 10,
    id = 94751, badge = "104444", published = "1/15/2020 5:28:23 PM", modified = "8/13/2021 8:10:36 PM",
    trigger = byte(0x0578D4) >= 0x10 && dword(0x0577B8) == 0x00 && prev(dword(0x057970)) < 0xFFFFFFFE && dword(0x057970)
               == 0xFFFFFFFE
)

achievement(
    title = "Master Adventurer[m]", description = "Find all unexplored lands from propositions", points = 10,
    id = 94752, badge = "104443", published = "1/15/2020 5:28:28 PM", modified = "8/13/2021 8:10:56 PM",
    trigger = byte(0x0578D4) >= 0x10 && dword(0x0577B8) == 0x00 && prev(word(0x057976)) < 0xFFFF && word(0x057976) ==
               0xFFFF
)

achievement(
    title = "Up For The Job[m]", description = "Finish All Propositions", points = 25,
    id = 94753, badge = "104439", published = "1/15/2020 5:28:32 PM", modified = "1/30/2020 1:59:30 PM",
    trigger = never(byte(0x0578D4) < 0x10) && never(dword(0x0577B8) != 0x00) && dword(0x057978) == 0xCCCCCCCC && 
              dword(0x05797C) == 0xCCCCCCCC && dword(0x057980) == 0xCCCCCCCC && dword(0x057984) == 0xCCCCCCCC && 
              dword(0x057988) == 0xCCCCCCCC && dword(0x05798C) == 0xCCCCCCCC && dword(0x057990) == 0xCCCCCCCC && 
              dword(0x057994) == 0xCCCCCCCC && dword(0x057998) == 0xCCCCCCCC && dword(0x05799C) == 0xCCCCCCCC && 
              dword(0x0579A0) == 0xCCCCCCCC && dword(0x0579A4) == 0xCCCCCCCC &&
              ((repeated(100, dword(0x057978) != 0xCCCCCCCC) && dword(0x057978) == 0xCCCCCCCC) ||
               (repeated(100, dword(0x05797C) != 0xCCCCCCCC) && dword(0x05797C) == 0xCCCCCCCC) ||
               (repeated(100, dword(0x057980) != 0xCCCCCCCC) && dword(0x057980) == 0xCCCCCCCC) ||
               (repeated(100, dword(0x057984) != 0xCCCCCCCC) && dword(0x057984) == 0xCCCCCCCC) ||
               (repeated(100, dword(0x057988) != 0xCCCCCCCC) && dword(0x057988) == 0xCCCCCCCC) ||
               (repeated(100, dword(0x05798C) != 0xCCCCCCCC) && dword(0x05798C) == 0xCCCCCCCC) ||
               (repeated(100, dword(0x057990) != 0xCCCCCCCC) && dword(0x057990) == 0xCCCCCCCC) ||
               (repeated(100, dword(0x057994) != 0xCCCCCCCC) && dword(0x057994) == 0xCCCCCCCC) ||
               (repeated(100, dword(0x057998) != 0xCCCCCCCC) && dword(0x057998) == 0xCCCCCCCC) ||
               (repeated(100, dword(0x05799C) != 0xCCCCCCCC) && dword(0x05799C) == 0xCCCCCCCC) ||
               (repeated(100, dword(0x0579A0) != 0xCCCCCCCC) && dword(0x0579A0) == 0xCCCCCCCC) ||
               (repeated(100, dword(0x0579A4) != 0xCCCCCCCC) && dword(0x0579A4) == 0xCCCCCCCC))
)

achievement(
    title = "One Ribbon To Rule Them All", description = "Recieve a ribbon from poaching", points = 10,
    id = 94958, badge = "104665", published = "1/16/2020 10:54:06 PM", modified = "1/25/2020 3:21:42 PM",
    trigger = never(byte(0x0578D4) < 0x10) && never(byte(0x0578D4) > 0x60) && never(byte(0x0577B8) != 0x00) && 
              never(byte(0x0577E0) == 0x00) && repeated(100, byte(0x05953F) > 0x00) && byte(0x05978B) > 0x00 && 
              repeated(100, byte(0x05978B) == 0x00)
)

achievement(
    title = "Turn To Stone", description = "Recieve a Stone Gun from poaching", points = 5,
    id = 94959, badge = "104664", published = "1/16/2020 10:58:21 PM", modified = "1/25/2020 3:21:26 PM",
    trigger = never(byte(0x0578D4) < 0x10) && never(byte(0x0578D4) > 0x60) && never(byte(0x0577B8) != 0x00) && 
              never(byte(0x0577E0) == 0x00) && repeated(100, byte(0x0594DD) > 0x00) && byte(0x059729) > 0x00 && 
              repeated(100, byte(0x059729) == 0x00)
)

achievement(
    title = "So Fresh and So Clean", description = "Have one of every perfume in inventory", points = 10,
    id = 94960, badge = "104666", published = "1/16/2020 11:06:34 PM", modified = "1/25/2020 3:09:20 PM",
    trigger = never(byte(0x0578D4) < 0x10) && never(byte(0x0578D4) > 0x60) && never(byte(0x0577B8) != 0x00) && 
              never(byte(0x0577E0) == 0x00) && byte(0x0597CC) > 0x00 && byte(0x0597CD) > 0x00 && byte(0x0597CE) > 0x00 && 
              byte(0x0597CF) > 0x00 &&
              ((repeated(100, byte(0x0597CC) == 0x00) && byte(0x0597CC) > 0x00) ||
               (repeated(100, byte(0x0597CD) == 0x00) && byte(0x0597CD) > 0x00) ||
               (repeated(100, byte(0x0597CE) == 0x00) && byte(0x0597CE) > 0x00) ||
               (repeated(100, byte(0x0597CF) == 0x00) && byte(0x0597CF) > 0x00))
)

achievement(
    title = "On The Hunt", description = "Poach a monster", points = 1,
    id = 95037, badge = "104667", published = "1/17/2020 4:30:31 PM", modified = "1/18/2020 5:56:20 PM",
    trigger = never(dword(0x0577B8) == 0x00) && never(dword(0x0577B8) == 0x10000013) &&
              ((once((dword(0x059494) + dword(0x059498) + dword(0x05949C) + dword(0x0594A0) + dword(0x0594A4) +
                 dword(0x0594A8) + dword(0x0594AC) + dword(0x0594B0) + dword(0x0594B4) + dword(0x0594B8) +
                 dword(0x0594BC) + dword(0x0594C0) + dword(0x0594C4) + dword(0x0594C8) + dword(0x0594CC)) == 0x00) && 
                once((dword(0x059494) + dword(0x059498) + dword(0x05949C) + dword(0x0594A0) + dword(0x0594A4) +
                 dword(0x0594A8) + dword(0x0594AC) + dword(0x0594B0) + dword(0x0594B4) + dword(0x0594B8) +
                 dword(0x0594BC) + dword(0x0594C0) + dword(0x0594C4) + dword(0x0594C8) + dword(0x0594CC)) > 0x00)) ||
               (once((dword(0x0594D0) + dword(0x0594D4) + dword(0x0594D8) + dword(0x0594DC) + dword(0x0594E0) +
                 dword(0x0594E4) + dword(0x0594E8) + dword(0x0594EC) + dword(0x0594F0) + dword(0x0594F4) +
                 dword(0x0594F8) + dword(0x0594FC) + dword(0x059500) + dword(0x059504) + dword(0x059508) +
                 dword(0x05950C)) == 0x00) && (dword(0x0594D0) + dword(0x0594D4) + dword(0x0594D8) + dword(0x0594DC) +
                 dword(0x0594E0) + dword(0x0594E4) + dword(0x0594E8) + dword(0x0594EC) + dword(0x0594F0) +
                 dword(0x0594F4) + dword(0x0594F8) + dword(0x0594FC) + dword(0x059500) + dword(0x059504) +
                 dword(0x059508) + dword(0x05950C)) > 0x00) ||
               (once((dword(0x059510) + dword(0x059514) + dword(0x059518) + dword(0x05951C) + dword(0x059520) +
                 dword(0x059524) + dword(0x059528) + dword(0x05952C) + dword(0x059530) + dword(0x059534) +
                 dword(0x059538) + dword(0x05953C) + dword(0x059540) + dword(0x059544) + dword(0x059548) +
                 dword(0x05954C)) == 0x00) && (dword(0x059510) + dword(0x059514) + dword(0x059518) + dword(0x05951C) +
                 dword(0x059520) + dword(0x059524) + dword(0x059528) + dword(0x05952C) + dword(0x059530) +
                 dword(0x059534) + dword(0x059538) + dword(0x05953C) + dword(0x059540) + dword(0x059544) +
                 dword(0x059548) + dword(0x05954C)) > 0x00) ||
               (once((dword(0x059550) + dword(0x059554) + dword(0x059558) + dword(0x05955C) + dword(0x059560) +
                 dword(0x059564) + dword(0x059568) + dword(0x05956C) + dword(0x059570) + dword(0x059574) +
                 dword(0x059578) + dword(0x05957C) + dword(0x059580) + dword(0x059584) + dword(0x059588) +
                 dword(0x05958C) + word(0x059590)) == 0x00) && (dword(0x059550) + dword(0x059554) + dword(0x059558) +
                 dword(0x05955C) + dword(0x059560) + dword(0x059564) + dword(0x059568) + dword(0x05956C) +
                 dword(0x059570) + dword(0x059574) + dword(0x059578) + dword(0x05957C) + dword(0x059580) +
                 dword(0x059584) + dword(0x059588) + dword(0x05958C) + word(0x059590)) > 0x00))
)

achievement(
    title = "SAIGON", description = "Find exit and finish NOGAIS", points = 5,
    id = 94397, badge = "103669", published = "1/12/2020 8:22:27 PM", modified = "5/3/2022 4:46:35 PM",
    trigger = never(bit5(0x057920) == 0x00) && never(dword(0x0577E0) != 0x16) && never(dword(0x0577E8) != 0x6B) && 
              repeated(100, byte(0x0578B0) == 0x00) && byte(0x0578B0) == 0x01 && byte(0x0578BC) > 0x00 && 
              dword(0x0577B8) == 0x5E
)

achievement(
    title = "TERMINATE", description = "Find exit and finish TERMINATE", points = 5,
    id = 94398, badge = "103670", published = "1/12/2020 8:22:31 PM", modified = "5/3/2022 4:46:36 PM",
    trigger = never(bit5(0x057920) == 0x00) && never(dword(0x0577E0) != 0x16) && never(dword(0x0577E8) != 0x69) && 
              repeated(100, byte(0x0578B0) == 0x01) && byte(0x0578B0) == 0x02 && byte(0x0578BC) > 0x00 && 
              dword(0x0577B8) == 0x5E
)

achievement(
    title = "DELTA", description = "Find exit and finish DELTA", points = 5,
    id = 94399, badge = "103671", published = "1/12/2020 8:22:34 PM", modified = "5/3/2022 4:46:36 PM",
    trigger = never(bit5(0x057920) == 0x00) && never(dword(0x0577E0) != 0x16) && never(dword(0x0577E8) != 0x6A) && 
              repeated(100, byte(0x0578B0) == 0x02) && byte(0x0578B0) == 0x03 && byte(0x0578BC) > 0x00 && 
              dword(0x0577B8) == 0x5E
)

achievement(
    title = "VALKYRIES", description = "Find exit and finish VALKYRIES", points = 5,
    id = 94400, badge = "103672", published = "1/12/2020 8:22:38 PM", modified = "5/3/2022 4:46:37 PM",
    trigger = never(bit5(0x057920) == 0x00) && never(dword(0x0577E0) != 0x16) && never(dword(0x0577E8) != 0x6E) && 
              repeated(100, byte(0x0578B0) == 0x03) && byte(0x0578B0) == 0x04 && byte(0x0578BC) > 0x00 && 
              dword(0x0577B8) == 0x5E
)

achievement(
    title = "NAPALM", description = "Find exit and finish MLAPAN", points = 5,
    id = 94401, badge = "103673", published = "1/12/2020 8:22:42 PM", modified = "5/3/2022 4:46:37 PM",
    trigger = never(bit5(0x057920) == 0x00) && never(dword(0x0577E0) != 0x16) && never(dword(0x0577E8) != 0x6F) && 
              repeated(100, byte(0x0578B0) == 0x04) && byte(0x0578B0) == 0x05 && byte(0x0578BC) > 0x00 && 
              dword(0x0577B8) == 0x5E
)

achievement(
    title = "TIGER", description = "Find exit and finish TIGER", points = 5,
    id = 94402, badge = "103674", published = "1/12/2020 8:22:45 PM", modified = "5/3/2022 4:46:37 PM",
    trigger = never(bit5(0x057920) == 0x00) && never(dword(0x0577E0) != 0x16) && never(dword(0x0577E8) != 0x70) && 
              repeated(100, byte(0x0578B0) == 0x05) && byte(0x0578B0) == 0x06 && byte(0x0578BC) > 0x00 && 
              dword(0x0577B8) == 0x5E
)

achievement(
    title = "BRIDGE", description = "Find exit and finish BRIDGE", points = 5,
    id = 94403, badge = "103675", published = "1/12/2020 8:22:49 PM", modified = "5/3/2022 4:46:38 PM",
    trigger = never(bit5(0x057920) == 0x00) && never(dword(0x0577E0) != 0x16) && never(dword(0x0577E8) != 0x6D) && 
              repeated(100, byte(0x0578B0) == 0x06) && byte(0x0578B0) == 0x07 && byte(0x0578BC) > 0x00 && 
              dword(0x0577B8) == 0x5E
)

achievement(
    title = "VOYAGE", description = "Find exit and finish VOYAGE", points = 5,
    id = 94404, badge = "103676", published = "1/12/2020 8:22:53 PM", modified = "5/3/2022 4:46:38 PM",
    trigger = never(bit5(0x057920) == 0x00) && never(dword(0x0577E0) != 0x16) && never(dword(0x0577E8) != 0x6C) && 
              repeated(100, byte(0x0578B0) == 0x07) && byte(0x0578B0) == 0x08 && byte(0x0578BC) > 0x00 && 
              dword(0x0577B8) == 0x5E
)

achievement(
    title = "HORROR", description = "Find exit and finish HORROR", points = 5,
    id = 94405, badge = "103677", published = "1/12/2020 8:22:56 PM", modified = "5/3/2022 4:46:38 PM",
    trigger = never(bit5(0x057920) == 0x00) && never(dword(0x0577E0) != 0x16) && never(dword(0x0577E8) != 0x71) && 
              repeated(100, byte(0x0578B0) == 0x08) && byte(0x0578B0) == 0x09 && byte(0x0578BC) > 0x00 && 
              dword(0x0577B8) == 0x5E
)

achievement(
    title = "Dugeon Spelunker", description = "Find all items in Deep Dungeon Levels", points = 25,
    id = 94408, badge = "103678", published = "1/12/2020 8:58:05 PM", modified = "1/18/2020 5:55:49 PM",
    trigger = never(bit5(0x057920) != 0x01) && never(dword(0x0577E0) != 0x16) && low4(0x059448) == 0x0F && 
              byte(0x059449) == 0xFF && byte(0x05944A) == 0xFF && byte(0x05944B) == 0xFF && byte(0x05944C) == 0xFF && 
              high4(0x05944D) == 0x0F &&
              ((once(dword(0x05944C) > prev(dword(0x05944C)))) ||
               (once(dword(0x059448) > prev(dword(0x059448)))))
)

achievement(
    title = "The Zodiac Monster", description = "Recruit Byblos", points = 10,
    id = 94409, badge = "103389", published = "1/12/2020 9:05:32 PM", modified = "1/23/2020 10:01:04 PM",
    trigger = never(dword(0x0577E0) != 0x16) && never(dword(0x0577E8) != 0x72) &&
              ((byte(0x058074) == 0x82 && repeated(100, byte(0x058076) != 0x90) && byte(0x058076) == 0x90) ||
               (byte(0x058174) == 0x82 && repeated(100, byte(0x058176) != 0x90) && byte(0x058176) == 0x90) ||
               (byte(0x058274) == 0x82 && repeated(100, byte(0x058276) != 0x90) && byte(0x058276) == 0x90) ||
               (byte(0x058374) == 0x82 && repeated(100, byte(0x058376) != 0x90) && byte(0x058376) == 0x90) ||
               (byte(0x058474) == 0x82 && repeated(100, byte(0x058476) != 0x90) && byte(0x058476) == 0x90) ||
               (byte(0x058574) == 0x82 && repeated(100, byte(0x058576) != 0x90) && byte(0x058576) == 0x90) ||
               (byte(0x058674) == 0x82 && repeated(100, byte(0x058676) != 0x90) && byte(0x058676) == 0x90) ||
               (byte(0x058774) == 0x82 && repeated(100, byte(0x058776) != 0x90) && byte(0x058776) == 0x90) ||
               (byte(0x058874) == 0x82 && repeated(100, byte(0x058876) != 0x90) && byte(0x058876) == 0x90) ||
               (byte(0x058974) == 0x82 && repeated(100, byte(0x058976) != 0x90) && byte(0x058976) == 0x90) ||
               (byte(0x058A74) == 0x82 && repeated(100, byte(0x058A76) != 0x90) && byte(0x058A76) == 0x90) ||
               (byte(0x058B74) == 0x82 && repeated(100, byte(0x058B76) != 0x90) && byte(0x058B76) == 0x90) ||
               (byte(0x058C74) == 0x82 && repeated(100, byte(0x058C76) != 0x90) && byte(0x058C76) == 0x90) ||
               (byte(0x058D74) == 0x82 && repeated(100, byte(0x058D76) != 0x90) && byte(0x058D76) == 0x90) ||
               (byte(0x058E74) == 0x82 && repeated(100, byte(0x058E76) != 0x90) && byte(0x058E76) == 0x90))
)

achievement(
    title = "END[m]", description = "Kill all enemies then Defeat Elidibs and finish Deep Dungeon", points = 25,
    id = 94413, badge = "104037", published = "1/12/2020 9:18:32 PM", modified = "4/13/2021 2:14:35 PM",
    trigger = never(bit5(0x057920) == 0x00) && never(byte(0x0578B0) != 0x09) && never(dword(0x0577E0) != 0x16) && 
              never(dword(0x0577E8) != 0x72) && repeated(500, word(0x1908F4) == 0x00) && (word(0x190C74) == 0x00 ||
               bit7(0x190CA5) == 0x01) && (word(0x190E34) == 0x00 || bit7(0x190E65) == 0x01) && (word(0x190FF4) == 0x00
               || bit7(0x191025) == 0x01) && (word(0x1911B4) == 0x00 || bit7(0x1911E5) == 0x01) && (word(0x191374) ==
               0x00 || bit7(0x1913A5) == 0x01)
)

achievement(
    title = "King Arthur[m]", description = "Equip 2 Excaliburs on Orlandu(No Item Duplication - Must Move-Find 2nd Excalibur)", points = 10,
    id = 94337, badge = "103919", published = "1/11/2020 9:00:22 PM", modified = "1/23/2020 10:56:39 PM",
    trigger = never(dword(0x0578D4) < 0x26) && never(bit1(0x05944B) != 0x01) && bit1(0x05944B) == 0x01 &&
              ((byte(0x058074) == 0x0D && byte(0x058085) == 0x23 && repeated(100, byte(0x058087) != 0x23) && 
                byte(0x058087) == 0x23) ||
               (byte(0x058174) == 0x0D && byte(0x058185) == 0x23 && repeated(100, byte(0x058187) != 0x23) && 
                byte(0x058187) == 0x23) ||
               (byte(0x058274) == 0x0D && byte(0x058285) == 0x23 && repeated(100, byte(0x058287) != 0x23) && 
                byte(0x058287) == 0x23) ||
               (byte(0x058374) == 0x0D && byte(0x058385) == 0x23 && repeated(100, byte(0x058387) != 0x23) && 
                byte(0x058387) == 0x23) ||
               (byte(0x058474) == 0x0D && byte(0x058485) == 0x23 && repeated(100, byte(0x058487) != 0x23) && 
                byte(0x058487) == 0x23) ||
               (byte(0x058574) == 0x0D && byte(0x058585) == 0x23 && repeated(100, byte(0x058587) != 0x23) && 
                byte(0x058587) == 0x23) ||
               (byte(0x058674) == 0x0D && byte(0x058685) == 0x23 && repeated(100, byte(0x058687) != 0x23) && 
                byte(0x058687) == 0x23) ||
               (byte(0x058774) == 0x0D && byte(0x058785) == 0x23 && repeated(100, byte(0x058787) != 0x23) && 
                byte(0x058787) == 0x23) ||
               (byte(0x058874) == 0x0D && byte(0x058885) == 0x23 && repeated(100, byte(0x058887) != 0x23) && 
                byte(0x058887) == 0x23) ||
               (byte(0x058974) == 0x0D && byte(0x058985) == 0x23 && repeated(100, byte(0x058987) != 0x23) && 
                byte(0x058987) == 0x23) ||
               (byte(0x058A74) == 0x0D && byte(0x058A85) == 0x23 && repeated(100, byte(0x058A87) != 0x23) && 
                byte(0x058A87) == 0x23) ||
               (byte(0x058B74) == 0x0D && byte(0x058B85) == 0x23 && repeated(100, byte(0x058B87) != 0x23) && 
                byte(0x058B87) == 0x23) ||
               (byte(0x058C74) == 0x0D && byte(0x058C85) == 0x23 && repeated(100, byte(0x058C87) != 0x23) && 
                byte(0x058C87) == 0x23) ||
               (byte(0x058D74) == 0x0D && byte(0x058D85) == 0x23 && repeated(100, byte(0x058D87) != 0x23) && 
                byte(0x058D87) == 0x23) ||
               (byte(0x058E74) == 0x0D && byte(0x058E85) == 0x23 && repeated(100, byte(0x058E87) != 0x23) && 
                byte(0x058E87) == 0x23))
)

achievement(
    title = "Queen Saver[m]", description = "Equip Two Save The Queen on Agrais", points = 10,
    id = 94338, badge = "103920", published = "1/11/2020 9:12:45 PM", modified = "1/23/2020 11:00:16 PM",
    trigger = never(dword(0x0578D4) < 0x26) &&
              ((byte(0x058074) == 0x1E && byte(0x058085) == 0x22 && repeated(100, byte(0x058087) != 0x22) && 
                byte(0x058087) == 0x22) ||
               (byte(0x058174) == 0x1E && byte(0x058185) == 0x22 && repeated(100, byte(0x058187) != 0x22) && 
                byte(0x058187) == 0x22) ||
               (byte(0x058274) == 0x1E && byte(0x058285) == 0x22 && repeated(100, byte(0x058287) != 0x22) && 
                byte(0x058287) == 0x22) ||
               (byte(0x058374) == 0x1E && byte(0x058385) == 0x22 && repeated(100, byte(0x058387) != 0x22) && 
                byte(0x058387) == 0x22) ||
               (byte(0x058474) == 0x1E && byte(0x058485) == 0x22 && repeated(100, byte(0x058487) != 0x22) && 
                byte(0x058487) == 0x22) ||
               (byte(0x058574) == 0x1E && byte(0x058585) == 0x22 && repeated(100, byte(0x058587) != 0x22) && 
                byte(0x058587) == 0x22) ||
               (byte(0x058674) == 0x1E && byte(0x058685) == 0x22 && repeated(100, byte(0x058687) != 0x22) && 
                byte(0x058687) == 0x22) ||
               (byte(0x058774) == 0x1E && byte(0x058785) == 0x22 && repeated(100, byte(0x058787) != 0x22) && 
                byte(0x058787) == 0x22) ||
               (byte(0x058874) == 0x1E && byte(0x058885) == 0x22 && repeated(100, byte(0x058887) != 0x22) && 
                byte(0x058887) == 0x22) ||
               (byte(0x058974) == 0x1E && byte(0x058985) == 0x22 && repeated(100, byte(0x058987) != 0x22) && 
                byte(0x058987) == 0x22) ||
               (byte(0x058A74) == 0x1E && byte(0x058A85) == 0x22 && repeated(100, byte(0x058A87) != 0x22) && 
                byte(0x058A87) == 0x22) ||
               (byte(0x058B74) == 0x1E && byte(0x058B85) == 0x22 && repeated(100, byte(0x058B87) != 0x22) && 
                byte(0x058B87) == 0x22) ||
               (byte(0x058C74) == 0x1E && byte(0x058C85) == 0x22 && repeated(100, byte(0x058C87) != 0x22) && 
                byte(0x058C87) == 0x22) ||
               (byte(0x058D74) == 0x1E && byte(0x058D85) == 0x22 && repeated(100, byte(0x058D87) != 0x22) && 
                byte(0x058D87) == 0x22) ||
               (byte(0x058E74) == 0x1E && byte(0x058E85) == 0x22 && repeated(100, byte(0x058E87) != 0x22) && 
                byte(0x058E87) == 0x22))
)

achievement(
    title = "Ramzarok[m]", description = "Equip 2 Ragnarock on Ramza Before Final Battle", points = 10,
    id = 94340, badge = "103922", published = "1/11/2020 9:34:44 PM", modified = "10/19/2020 2:01:30 PM",
    trigger = never(dword(0x0578D4) < 0x35) && never(byte(0x0577E0) != 0x14) && byte(0x057F74) == 0x03 && byte(0x057F85)
               == 0x24 && byte(0x057F87) == 0x24
)

achievement(
    title = "Forbidden Legend[m]", description = "Have one of Each Magic gun in inventory(Blast Gun, Glacier Gun, Blaze Gun)", points = 5,
    id = 94342, badge = "103928", published = "1/11/2020 9:58:52 PM", modified = "1/23/2020 10:45:59 PM",
    trigger = never(byte(0x0578D4) < 0x34) && never(bit2(0x059449) != 0x01) && never(bit5(0x05944C) != 0x01) && 
              byte(0x05972A) >= 0x01 && byte(0x05972B) >= 0x01 && byte(0x05972C) >= 0x01 &&
              ((repeated(100, byte(0x05972A) == 0x00) && byte(0x05972A) != 0x00) ||
               (repeated(100, byte(0x05972B) == 0x00) && byte(0x05972B) != 0x00) ||
               (repeated(100, byte(0x05972C) == 0x00) && byte(0x05972C) != 0x00))
)

achievement(
    title = "Painful Souls[m]", description = "Find a Chirijiraden", points = 10,
    id = 94343, badge = "103929", published = "1/11/2020 10:05:10 PM", modified = "2/6/2020 2:00:32 PM",
    trigger = never(byte(0x0577E8) != 0x72) && once(bit6(0x05944D) == 0x00) && bit6(0x05944D) == 0x01 && byte(0x05970F)
               >= 0x01 && once(byte(0x05970F) > prev(byte(0x05970F)))
)

achievement(
    title = "Ultimate Weapon[m]", description = "Find A Chaos Blade", points = 10,
    id = 94344, badge = "103931", published = "1/11/2020 10:06:05 PM", modified = "2/6/2020 2:00:48 PM",
    trigger = never(byte(0x0577E8) != 0x72) && once(bit5(0x05944D) == 0x00) && bit5(0x05944D) == 0x01 && byte(0x059705)
               >= 0x01 && once(byte(0x059705) > prev(byte(0x059705)))
)

achievement(
    title = "Legacy of Kain[m]", description = "Find Ultimate Javelin and Estucheon II", points = 5,
    id = 94345, badge = "103932", published = "1/11/2020 10:10:11 PM", modified = "1/23/2020 10:49:26 PM",
    trigger = never(byte(0x0577E8) != 0x46) && once(bit4(0x059437) == 0x00) && bit4(0x059437) == 0x01 && 
              once(bit7(0x059437) == 0x00) && bit7(0x059437) == 0x01 && once(byte(0x05974A) == 0x00) && byte(0x05974A)
               >= 0x01 && once(byte(0x05976F) == 0x00) && byte(0x05976F) >= 0x01
)
