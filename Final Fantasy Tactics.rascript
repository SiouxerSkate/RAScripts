// Final Fantasy Tactics
// #ID = 11246

achievement(
    title = "Learning The Ropes", description = "Complete Gariland Magic City", points = 1,
    id = 90403, badge = "98992", published = "12/10/2019 6:14:28 PM", modified = "7/13/2020 5:01:52 PM",
    trigger = never(dword(0x0578D4) != 0x00) && never(dword(0x0577E0) != 0x06) && never(dword(0x0577E8) != 0x16) && 
              repeated(500, word(0x190AB4) == 0x00) && repeated(500, word(0x190C74) == 0x00) && repeated(500, word(0x190E34) == 0x00) && 
              repeated(500, word(0x190FF4) == 0x00) && repeated(500, word(0x1911B4) == 0x00)
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
              ((byte(0x1908CC) != 0x00 && once(byte(0x1908CD) != 0xFF) && byte(0x1908CD) == 0xFF && 
                once(word(0x1908F4) == 0x00) && once(bit6(0x190924) != 0x01) && bit6(0x190924) == 0x01) ||
               (byte(0x190C4C) != 0x00 && once(byte(0x190C4D) != 0xFF) && byte(0x190C4D) == 0xFF && 
                once(word(0x190C74) == 0x00) && once(bit6(0x190AE4) != 0x01) && bit6(0x190AE4) == 0x01) ||
               (byte(0x190C4C) != 0x00 && once(byte(0x190C4D) != 0xFF) && byte(0x190C4D) == 0xFF && 
                once(word(0x190C74) == 0x00) && once(bit6(0x190CA4) != 0x01) && bit6(0x190CA4) == 0x01) ||
               (byte(0x190E0C) != 0x00 && once(byte(0x190E0D) != 0xFF) && byte(0x190E0D) == 0xFF && 
                once(word(0x190E34) == 0x00) && once(bit6(0x190E64) != 0x01) && bit6(0x190E64) == 0x01) ||
               (byte(0x190FCC) != 0x00 && once(byte(0x190FCD) != 0xFF) && byte(0x190FCD) == 0xFF && 
                once(word(0x190FF4) == 0x00) && once(bit6(0x191024) != 0x01) && bit6(0x191024) == 0x01) ||
               (byte(0x19118C) != 0x00 && once(byte(0x19118D) != 0xFF) && byte(0x19118D) == 0xFF && 
                once(word(0x1911B4) == 0x00) && once(bit6(0x1911E4) != 0x01) && bit6(0x1911E4) == 0x01) ||
               (byte(0x19134C) != 0x00 && once(byte(0x19134D) != 0xFF) && byte(0x19134D) == 0xFF && 
                once(word(0x191374) == 0x00) && once(bit6(0x1913A4) != 0x01) && bit6(0x1913A4) == 0x01) ||
               (byte(0x19150C) != 0x00 && once(byte(0x19150D) != 0xFF) && byte(0x19150D) == 0xFF && 
                once(word(0x191534) == 0x00) && once(bit6(0x191564) != 0x01) && bit6(0x191564) == 0x01) ||
               (byte(0x1916CC) != 0x00 && once(byte(0x1916CD) != 0xFF) && byte(0x1916CD) == 0xFF && 
                once(word(0x1916F4) == 0x00) && once(bit6(0x191724) != 0x01) && bit6(0x191724) == 0x01) ||
               (byte(0x19188C) != 0x00 && once(byte(0x19188D) != 0xFF) && byte(0x19188D) == 0xFF && 
                once(word(0x1918B4) == 0x00) && once(bit6(0x1918E4) != 0x01) && bit6(0x1918E4) == 0x01) ||
               (byte(0x191A4C) != 0x00 && once(byte(0x191A4D) != 0xFF) && byte(0x191A4D) == 0xFF && 
                once(word(0x191A74) == 0x00) && once(bit6(0x191AA4) != 0x01) && bit6(0x191AA4) == 0x01) ||
               (byte(0x191C0C) != 0x00 && once(byte(0x191C0D) != 0xFF) && byte(0x191C0D) == 0xFF && 
                once(word(0x191C34) == 0x00) && once(bit6(0x191C64) != 0x01) && bit6(0x191C64) == 0x01))
)

achievement(
    title = "Master Adventurer[m]", description = "Find all unexplored lands from propositions", points = 10,
    id = 94752, badge = "104443", published = "1/15/2020 5:28:28 PM", modified = "8/13/2021 8:10:56 PM",
    trigger = byte(0x0578D4) >= 0x10 && dword(0x0577B8) == 0x00 && prev(word(0x057976)) < 0xFFFF && 
              word(0x057976) == 0xFFFF
)

achievement(
    title = "Up For The Job[m]", description = "Finish All Propositions", points = 25,
    id = 94753, badge = "104439", published = "1/15/2020 5:28:32 PM", modified = "1/30/2020 1:59:30 PM",
    trigger = never(byte(0x0578D4) < 0x10) && never(dword(0x0577B8) != 0x00) && dword(0x057978) == 0xCCCCCCCC && 
              dword(0x05797C) == 0xCCCCCCCC && dword(0x057980) == 0xCCCCCCCC && dword(0x057984) == 0xCCCCCCCC && dword(0x057988) == 0xCCCCCCCC && 
              dword(0x05798C) == 0xCCCCCCCC && dword(0x057990) == 0xCCCCCCCC && dword(0x057994) == 0xCCCCCCCC && dword(0x057998) == 0xCCCCCCCC && 
              dword(0x05799C) == 0xCCCCCCCC && dword(0x0579A0) == 0xCCCCCCCC && dword(0x0579A4) == 0xCCCCCCCC &&
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
