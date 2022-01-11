// Final Fantasy Tactics: The War of the Lions
// #ID = 3236

achievement(
    title = "New Reckruits", description = "Complete first battle at Gariland Magick Akademy", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b420) == 0x16 && word(0x12e5ecc) == 0 && word(0x12e60b4) == 0 
              && word(0x12e629c) == 0 && word(0x12e6484) == 0 && word(0x12e666c) == 0 
              && dword(0x144b404) > prev(dword(0x144b404))    
)

achievement(
    title = "Good Judge Of Character?", description = "On Mandalia Plain, choose not to save Aragath but do not let him get KO'd", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b420) == 0x55 && word(0x12e60b4) == 0 && word(0x12e629c) == 0
              && word(0x12e6484) == 0 && word(0x12e666c) == 0 && word(0x12e6854) == 0
              && word(0x12e6a3c) == 0 && dword(0x144b404) > prev(dword(0x144b404))
              && byte(0x144b3b4) == 0 && never(byte(0x144b420) != 0x55) && once(unless(word(0x12e5ecc) == 0))
)

achievement(
    title = "Slum Rat Millionare", description = "Complete battle at Dorter Slums without any player HP falling to 0 and all levels <= 5", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b420) == 0x20 && word(0x12e629c) == 0 && word(0x12e6484) == 0
              && word(0x12e666c) == 0 && word(0x12e6854) == 0 && word(0x12e6a3c) == 0
              && word(0x12e6c24) == 0 && dword(0x144b404) > prev(dword(0x144b404))
              && once(unless(word(0x12e7b64) == 0)) && once(unless(word(0x12e5ce4) == 0)) && once(unless(word(0x12e5ecc) == 0))
              && byte(0x12e5cdd) <= 0x5 && byte(0x12e7b5d) <= 0x5 && byte(0x12e7d45) <= 0x5 && byte(0x12e7f2d) <= 0x5 && byte(0x12e8115) <= 0x5 && byte(0x12e5ec5) <= 0x5
              && (
                 (byte(0x12e7b34) == 0x01 && byte(0x12e7d1c) == 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && never(byte(0x144b420) != 0x20))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) != 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)) && once(unless(word(0x12e7f34) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) != 0 && byte(0x12e80ec) != 0 && once(unless(word(0x12e7d4c) == 0)) && once(unless(word(0x12e7f34) == 0)) && once(unless(word(0x12e811c) == 0)))
              )
)

achievement(
    title = "Seek Out the Rats", description = "Complete batlle at Sand Rats Sietch without any player HP falling to 0 and all levels <= 6", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b420) == 0x22 && word(0x12e60b4) == 0 && word(0x12e629c) == 0
              && word(0x12e6484) == 0 && word(0x12e666c) == 0 && word(0x12e6854) == 0
              && word(0x12e6a3c) == 0 && dword(0x144b404) > prev(dword(0x144b404))
              && once(unless(word(0x12e7b64) == 0)) && once(unless(word(0x12e5ce4) == 0)) && once(unless(word(0x12e5ecc) == 0))
              && byte(0x12e5cdd) <= 0x6 && byte(0x12e7b5d) <= 0x6 && byte(0x12e7d45) <= 0x6 && byte(0x12e7f2d) <= 0x6 && byte(0x12e8115) <= 0x6 && byte(0x12e5ec5) <= 0x6
              && (
                 (byte(0x12e7b34) == 0x01 && byte(0x12e7d1c) == 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && never(byte(0x144b420) != 0x22))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) != 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)) && once(unless(word(0x12e7f34) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) != 0 && byte(0x12e80ec) != 0 && once(unless(word(0x12e7d4c) == 0)) && once(unless(word(0x12e7f34) == 0)) && once(unless(word(0x12e811c) == 0)))
              )
)

achievement(
    title = "Tis Heaven's Will", description = "At Brigand's Den kill all enemies then defeat Milleuda. Without any player HP falling to 0 and all levels <= 8", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b420) == 0x5b && word(0x12e60b4) == 0 && word(0x12e629c) == 0
              && word(0x12e6484) == 0 && word(0x12e666c) == 0 && word(0x12e6854) == 0
              && word(0x12e6a3c) == 0 && dword(0x144b404) > prev(dword(0x144b404))
              && once(unless(word(0x12e7b64) == 0)) && once(unless(word(0x12e5ce4) == 0)) && once(unless(word(0x12e5ecc) == 0))
              && byte(0x12e5cdd) <= 0x8 && byte(0x12e7b5d) <= 0x8 && byte(0x12e7d45) <= 0x8 && byte(0x12e7f2d) <= 0x8 && byte(0x12e8115) <= 0x8 && byte(0x12e5ec5) <= 0x8
              && (
                 (byte(0x12e7b34) == 0x01 && byte(0x12e7d1c) == 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && never(byte(0x144b420) != 0x5b))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) != 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)) && once(unless(word(0x12e7f34) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) != 0 && byte(0x12e80ec) != 0 && once(unless(word(0x12e7d4c) == 0)) && once(unless(word(0x12e7f34) == 0)) && once(unless(word(0x12e811c) == 0)))
              )
)

achievement(
    title = "What Fuels Your Hatred", description = "At Lanalian Plateau kill all enemies then defeat Milleuda. Without any player HP falling to 0 and all levels <= 8", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b420) == 0x4D && word(0x144b50c) == 0x0B
              && word(0x12e5ecc) == 0 && word(0x12e60b4) == 0 && word(0x12e629c) == 0
              && word(0x12e6484) == 0 && word(0x12e666c) == 0 && word(0x12e6854) == 0
              && dword(0x144b404) > prev(dword(0x144b404))
              && once(unless(word(0x12e7b64) == 0)) && once(unless(word(0x12e5ce4) == 0))
              && byte(0x12e5cdd) <= 0x8 && byte(0x12e7b5d) <= 0x8 && byte(0x12e7d45) <= 0x8 && byte(0x12e7f2d) <= 0x8 && byte(0x12e8115) <= 0x8 && byte(0x12e82fd) <= 0x8
              && (
                 (byte(0x12e7b34) == 0x01 && byte(0x12e7d1c) == 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && never(byte(0x144b420) != 0x4D))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) != 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)) && once(unless(word(0x12e7f34) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) != 0 && byte(0x12e80ec) != 0 && once(unless(word(0x12e7d4c) == 0)) && once(unless(word(0x12e7f34) == 0)) && once(unless(word(0x12e811c) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) != 0 && byte(0x12e80ec) != 0 && once(unless(word(0x12e7d4c) == 0)) && once(unless(word(0x12e7f34) == 0)) && once(unless(word(0x12e811c) == 0)) && once(unless(word(0x12e8304) == 0)))     
              )
)

achievement(
    title = "Wiegraf! Coward!", description = "At Windflat Mill on Fovoham Windflats kill all enemies then defeat Wiegraf. Without any player HP falling to 0 and all levels <= 10", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b420) == 0x67 && word(0x144b50c) == 0x0C
              && prior(byte(0x12e5e9D)) == 0x1 && byte(0x12e5e9D) == 0xFF && word(0x12e60b4) == 0 && word(0x12e629c) == 0
              && word(0x12e6484) == 0 && word(0x12e666c) == 0 && word(0x12e6854) == 0
              && dword(0x144b404) > prev(dword(0x144b404))
              && once(unless(word(0x12e7b64) == 0)) && once(unless(word(0x12e5ce4) == 0))
              && byte(0x12e5cdd) <= 0x0A && byte(0x12e7b5d) <= 0x0A && byte(0x12e7d45) <= 0x0A && byte(0x12e7f2d) <= 0x0A && byte(0x12e8115) <= 0x0A && byte(0x12e82fd) <= 0x0A
              && (
                 (byte(0x12e7b34) == 0x01 && byte(0x12e7d1c) == 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && never(byte(0x144b420) != 0x67))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) != 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)) && once(unless(word(0x12e7f34) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) != 0 && byte(0x12e80ec) != 0 && once(unless(word(0x12e7d4c) == 0)) && once(unless(word(0x12e7f34) == 0)) && once(unless(word(0x12e811c) == 0)))
              )
)

achievement(
    title = "You Whoreson Dog!", description = "At Fort Zeakden kill all enemies then defeat Aragath.", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b420) == 0x31 && word(0x144b50c) == 0x0D
              && word(0x12e5ecc) == 0 && word(0x12e60b4) == 0 && word(0x12e629c) == 0
              && word(0x12e6484) == 0 && word(0x12e666c) == 0 && word(0x12e6854) == 0
              && dword(0x144b404) > prev(dword(0x144b404))
)

achievement(
    title = "The Meager", description = "Complete Chapter 1", points = 5, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0) == 0
)

achievement(
    title = "The Meager Treasure Hunter[m]", description = "Using Treasure Hunter skill find all treasures in Chapter 1 one time battles ", points = 10, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0) == 0
)

achievement(
    title = "At the Hands of Milksop Rabble", description = "Ramza, Delita, and one other char no deaths level cap 10", points = 10, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0) == 0
)

achievement(
    title = "Wiegraf's Mount", description = "At Araguay Woods choose to save Boco without any player HP falling to 0", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b420) == 0x50 && word(0x144b50c) == 0x10
              && word(0x12e5ecc) == 0 && word(0x12e60b4) == 0 && word(0x12e629c) == 0
              && word(0x12e6484) == 0 && word(0x12e666c) == 0 && word(0x12e6854) == 0
              && dword(0x144b404) > prev(dword(0x144b404))
              && once(unless(word(0x12e7b64) == 0)) && once(unless(word(0x12e5ce4) == 0))
              && (
                 (byte(0x12e7b34) == 0x01 && byte(0x12e7d1c) == 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && never(byte(0x144b420) != 0x50))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) != 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)) && once(unless(word(0x12e7f34) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) != 0 && byte(0x12e80ec) != 0 && once(unless(word(0x12e7d4c) == 0)) && once(unless(word(0x12e7f34) == 0)) && once(unless(word(0x12e811c) == 0)))
              )
)

achievement(
    title = "Dycedarg's Plot", description = "Complete battle At Zeirchele Falls no deaths, levels <= 12, DO NOT change Gafgariosn equipment(No break or steal)", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b420) == 0x53 && word(0x144b50c) == 0x11
              && byte(0x12e6ddc) == 0x17 && prior(byte(0x12e6ddd)) == 0x9 && byte(0x12e6ddd) == 0xFF
              && word(0x12e6484) == 0 && word(0x12e666c) == 0 && word(0x12e6854) == 0
              && word(0x12e6a3c) == 0 && word(0x12e6c24) == 0
              && dword(0x144b404) > prev(dword(0x144b404))
              && byte(0x12e5cdd) <= 0xc && byte(0x12e7b5d) <= 0xc && byte(0x12e7d45) <= 0xc && byte(0x12e7f2d) <= 0xc && byte(0x12e8115) <= 0xc && byte(0x12e82fd) <= 0xc
              && once(unless(word(0x12e7b64) == 0)) && once(unless(word(0x12e5ce4) == 0))
              && (
                 (byte(0x12e7b34) == 0x01 && byte(0x12e7d1c) == 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && never(byte(0x144b420) != 0x53))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) != 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)) && once(unless(word(0x12e7f34) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) != 0 && byte(0x12e80ec) != 0 && once(unless(word(0x12e7d4c) == 0)) && once(unless(word(0x12e7f34) == 0)) && once(unless(word(0x12e811c) == 0)))
              )
)

achievement(
    title = "I Have No Stone", description = "Choose to save Mustadio at Zaland no deaths, levels <= 14", points = 3,
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b420) == 0x23 && word(0x144b50c) == 0x12
              && bit0(0x144b557) == 1
              && word(0x12e5ecc) == 0 && word(0x12e60b4) == 0 && word(0x12e629c) == 0
              && word(0x12e6484) == 0 && word(0x12e666c) == 0 && word(0x12e6854) == 0
              && dword(0x144b404) > prev(dword(0x144b404))
              && byte(0x12e5cdd) <= 0xe && byte(0x12e7b5d) <= 0xe && byte(0x12e7d45) <= 0xe && byte(0x12e7f2d) <= 0xe && byte(0x12e8115) <= 0xe && byte(0x12e82fd) <= 0xe
              && once(unless(word(0x12e7b64) == 0)) && once(unless(word(0x12e5ce4) == 0)) && once(unless(word(0x12e6a3c) == 0))
              && (
                 (byte(0x12e7b34) == 0x01 && byte(0x12e7d1c) == 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && never(byte(0x144b420) != 0x23))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) != 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)) && once(unless(word(0x12e7f34) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) != 0 && byte(0x12e80ec) != 0 && once(unless(word(0x12e7d4c) == 0)) && once(unless(word(0x12e7f34) == 0)) && once(unless(word(0x12e811c) == 0)))
              )
)

achievement(
    title = "Meet the Executioner", description = "Complete battle At Golgollada Gallows no deaths, levels <= 18, No break or steal of Gafgariosn equipment", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b420) == 0x3f && word(0x144b50c) == 0x1C
              && prior(byte(0x12e5cb5)) == 0 && byte(0x12e5cb5) == 0xFF && word(0x12e5cce) == 0x96 && word(0x12e5cd0) == 0xc9 
              && word(0x12e5cd4) == 0x17 && word(0x12e5cda) == 0x84
              && word(0x12e5ecc) == 0 && word(0x12e60b4) == 0 && word(0x12e629c) == 0
              && word(0x12e6484) == 0 && word(0x12e666c) == 0 && word(0x12e6854) == 0 && word(0x12e6a3c)  == 0
              && dword(0x144b404) > prev(dword(0x144b404))
              && byte(0x12e5cdd) <= 0x12 && byte(0x12e7b5d) <= 0x12 && byte(0x12e7d45) <= 0x12 && byte(0x12e7f2d) <= 0x12 && byte(0x12e8115) <= 0x12 && byte(0x12e82fd) <= 0x12
              && once(unless(word(0x12e7b64) == 0)) && once(unless(word(0x12e5ce4) == 0))
              && (
                 (byte(0x12e7b34) == 0x01 && byte(0x12e7d1c) == 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && never(byte(0x144b420) != 0x3f))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)) 
                  && once(unless(word(0x12e7f34) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) != 0 && byte(0x12e80ec) == 0 && once(unless(word(0x12e7d4c) == 0)) 
                  && once(unless(word(0x12e7f34) == 0)) && once(unless(word(0x12e811c) == 0)))
              || (byte(0x12e7b34) != 0 && byte(0x12e7d1c) != 0 && byte(0x12e7f04) != 0 && byte(0x12e80ec) != 0 && once(unless(word(0x12e7d4c) == 0)) 
                  && once(unless(word(0x12e7f34) == 0)) && once(unless(word(0x12e811c) == 0)) && once(unless(word(0x12e8304) == 0))) 
              )
)

achievement(
    title = "The Machinist", description = "Recruit Mustadio(must open part roster menu after recruit)", points = 2, 
    id = 0, badge = "0", published = "", modified = "",
    trigger =  byte(0x144b420) == 0x5d && word(0x144b50c) == 0x19 &&
    (prev(byte(0x144f72a)) != 0x16 && byte(0x144f72a) == 0x16 ||
     prev(byte(0x144f86a)) != 0x16 && byte(0x144f86a) == 0x16 ||
     prev(byte(0x144f9aa)) != 0x16 && byte(0x144f9aa) == 0x16 ||
     prev(byte(0x144faea)) != 0x16 && byte(0x144faea) == 0x16 ||
     prev(byte(0x144fc2a)) != 0x16 && byte(0x144fc2a) == 0x16 ||
     prev(byte(0x144fd6a)) != 0x16 && byte(0x144fd6a) == 0x16 ||
     prev(byte(0x144feaa)) != 0x16 && byte(0x144feaa) == 0x16 ||
     prev(byte(0x144ffea)) != 0x16 && byte(0x144ffea) == 0x16 ||
     prev(byte(0x145012a)) != 0x16 && byte(0x145012a) == 0x16 ||
     prev(byte(0x145026a)) != 0x16 && byte(0x145026a) == 0x16 ||
     prev(byte(0x14503aa)) != 0x16 && byte(0x14503aa) == 0x16 ||
     prev(byte(0x14504ea)) != 0x16 && byte(0x14504ea) == 0x16 ||
     prev(byte(0x145062a)) != 0x16 && byte(0x145062a) == 0x16 ||
     prev(byte(0x145076a)) != 0x16 && byte(0x145076a) == 0x16 ||
     prev(byte(0x14508aa)) != 0x16 && byte(0x14508aa) == 0x16 ||
     prev(byte(0x14509ea)) != 0x16 && byte(0x14509ea) == 0x16 ||
     prev(byte(0x1450b2a)) != 0x16 && byte(0x1450b2a) == 0x16 ||
     prev(byte(0x1450c6a)) != 0x16 && byte(0x1450c6a) == 0x16 ||
     prev(byte(0x1450daa)) != 0x16 && byte(0x1450daa) == 0x16 ||
     prev(byte(0x1450eea)) != 0x16 && byte(0x1450eea) == 0x16 ||
     prev(byte(0x145102a)) != 0x16 && byte(0x145102a) == 0x16 ||
     prev(byte(0x145116a)) != 0x16 && byte(0x145116a) == 0x16 ||
     prev(byte(0x14512aa)) != 0x16 && byte(0x14512aa) == 0x16)
)

achievement(
    title = "The Holy Knight", description = "Recruit Agrais(must open part roster menu after recruit)", points = 2, 
    id = 0, badge = "0", published = "", modified = "",
    trigger =  byte(0x144b420) == 0x57 && word(0x144b50c) == 0x1c &&
    (prev(byte(0x144f72a)) == 0 && byte(0x144f72a) == 0x1e ||
     prev(byte(0x144f86a)) == 0 && byte(0x144f86a) == 0x1e ||
     prev(byte(0x144f9aa)) == 0 && byte(0x144f9aa) == 0x1e ||
     prev(byte(0x144faea)) == 0 && byte(0x144faea) == 0x1e ||
     prev(byte(0x144fc2a)) == 0 && byte(0x144fc2a) == 0x1e ||
     prev(byte(0x144fd6a)) == 0 && byte(0x144fd6a) == 0x1e ||
     prev(byte(0x144feaa)) == 0 && byte(0x144feaa) == 0x1e ||
     prev(byte(0x144ffea)) == 0 && byte(0x144ffea) == 0x1e ||
     prev(byte(0x145012a)) == 0 && byte(0x145012a) == 0x1e ||
     prev(byte(0x145026a)) == 0 && byte(0x145026a) == 0x1e ||
     prev(byte(0x14503aa)) == 0 && byte(0x14503aa) == 0x1e ||
     prev(byte(0x14504ea)) == 0 && byte(0x14504ea) == 0x1e ||
     prev(byte(0x145062a)) == 0 && byte(0x145062a) == 0x1e ||
     prev(byte(0x145076a)) == 0 && byte(0x145076a) == 0x1e ||
     prev(byte(0x14508aa)) == 0 && byte(0x14508aa) == 0x1e ||
     prev(byte(0x14509ea)) == 0 && byte(0x14509ea) == 0x1e ||
     prev(byte(0x1450b2a)) == 0 && byte(0x1450b2a) == 0x1e ||
     prev(byte(0x1450c6a)) == 0 && byte(0x1450c6a) == 0x1e ||
     prev(byte(0x1450daa)) == 0 && byte(0x1450daa) == 0x1e ||
     prev(byte(0x1450eea)) == 0 && byte(0x1450eea) == 0x1e ||
     prev(byte(0x145102a)) == 0 && byte(0x145102a) == 0x1e ||
     prev(byte(0x145116a)) == 0 && byte(0x145116a) == 0x1e ||
     prev(byte(0x14512aa)) == 0 && byte(0x14512aa) == 0x1e)
)

achievement(
    title = "Chemical Safeguard", description = "Master Chemist class with any charcter", points = 5, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) != 0 && byte(0x144b420) != 0 &&
    (prev(tbyte(0x144f5f6)) < 0xf8fcff && tbyte(0x144f5f6) == 0xf8fcff ||
     prev(tbyte(0x144f736)) < 0xf8fcff && tbyte(0x144f736) == 0xf8fcff ||
     prev(tbyte(0x144f876)) < 0xf8fcff && tbyte(0x144f876) == 0xf8fcff ||
     prev(tbyte(0x144f9b6)) < 0xf8fcff && tbyte(0x144f9b6) == 0xf8fcff ||
     prev(tbyte(0x144faf6)) < 0xf8fcff && tbyte(0x144faf6) == 0xf8fcff ||
     prev(tbyte(0x144fc36)) < 0xf8fcff && tbyte(0x144fc36) == 0xf8fcff ||
     prev(tbyte(0x144fd76)) < 0xf8fcff && tbyte(0x144fd76) == 0xf8fcff ||
     prev(tbyte(0x144feb6)) < 0xf8fcff && tbyte(0x144feb6) == 0xf8fcff ||
     prev(tbyte(0x144fff6)) < 0xf8fcff && tbyte(0x144fff6) == 0xf8fcff ||
     prev(tbyte(0x1450136)) < 0xf8fcff && tbyte(0x1450136) == 0xf8fcff ||
     prev(tbyte(0x1450276)) < 0xf8fcff && tbyte(0x1450276) == 0xf8fcff ||
     prev(tbyte(0x14503b6)) < 0xf8fcff && tbyte(0x14503b6) == 0xf8fcff ||
     prev(tbyte(0x14504f6)) < 0xf8fcff && tbyte(0x14504f6) == 0xf8fcff ||
     prev(tbyte(0x1450636)) < 0xf8fcff && tbyte(0x1450636) == 0xf8fcff ||
     prev(tbyte(0x1450776)) < 0xf8fcff && tbyte(0x1450776) == 0xf8fcff ||
     prev(tbyte(0x14508b6)) < 0xf8fcff && tbyte(0x14508b6) == 0xf8fcff ||
     prev(tbyte(0x14509f6)) < 0xf8fcff && tbyte(0x14509f6) == 0xf8fcff ||
     prev(tbyte(0x1450b36)) < 0xf8fcff && tbyte(0x1450b36) == 0xf8fcff ||
     prev(tbyte(0x1450c76)) < 0xf8fcff && tbyte(0x1450c76) == 0xf8fcff ||
     prev(tbyte(0x1450db6)) < 0xf8fcff && tbyte(0x1450db6) == 0xf8fcff ||
     prev(tbyte(0x1450ef6)) < 0xf8fcff && tbyte(0x1450ef6) == 0xf8fcff ||
     prev(tbyte(0x1451036)) < 0xf8fcff && tbyte(0x1451036) == 0xf8fcff ||
     prev(tbyte(0x1451176)) < 0xf8fcff && tbyte(0x1451176) == 0xf8fcff ||
     prev(tbyte(0x14512b6)) < 0xf8fcff && tbyte(0x14512b6) == 0xf8fcff ||
     prev(tbyte(0x12e7bda)) < 0xf8fcff && tbyte(0x12e7bda) == 0xf8fcff ||
     prev(tbyte(0x12e7dc2)) < 0xf8fcff && tbyte(0x12e7dc2) == 0xf8fcff ||
     prev(tbyte(0x12e7faa)) < 0xf8fcff && tbyte(0x12e7faa) == 0xf8fcff ||
     prev(tbyte(0x12e8192)) < 0xf8fcff && tbyte(0x12e8192) == 0xf8fcff ||
     prev(tbyte(0x12e837a)) < 0xf8fcff && tbyte(0x12e837a) == 0xf8fcff)
)

achievement(
    title = "Rend the World", description = "Master Knight class with any charcter", points = 5, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) != 0 && byte(0x144b420) != 0 &&
    (prev(tbyte(0x144f5f9)) < 0xf000ff && tbyte(0x144f5f9) == 0xf000ff ||
     prev(tbyte(0x144f739)) < 0xf000ff && tbyte(0x144f739) == 0xf000ff ||
     prev(tbyte(0x144f879)) < 0xf000ff && tbyte(0x144f879) == 0xf000ff ||
     prev(tbyte(0x144f9b9)) < 0xf000ff && tbyte(0x144f9b9) == 0xf000ff ||
     prev(tbyte(0x144faf9)) < 0xf000ff && tbyte(0x144faf9) == 0xf000ff ||
     prev(tbyte(0x144fc39)) < 0xf000ff && tbyte(0x144fc39) == 0xf000ff ||
     prev(tbyte(0x144fd79)) < 0xf000ff && tbyte(0x144fd79) == 0xf000ff ||
     prev(tbyte(0x144feb9)) < 0xf000ff && tbyte(0x144feb9) == 0xf000ff ||
     prev(tbyte(0x144fff9)) < 0xf000ff && tbyte(0x144fff9) == 0xf000ff ||
     prev(tbyte(0x1450139)) < 0xf000ff && tbyte(0x1450139) == 0xf000ff ||
     prev(tbyte(0x1450279)) < 0xf000ff && tbyte(0x1450279) == 0xf000ff ||
     prev(tbyte(0x14503b9)) < 0xf000ff && tbyte(0x14503b9) == 0xf000ff ||
     prev(tbyte(0x14504f9)) < 0xf000ff && tbyte(0x14504f9) == 0xf000ff ||
     prev(tbyte(0x1450639)) < 0xf000ff && tbyte(0x1450639) == 0xf000ff ||
     prev(tbyte(0x1450779)) < 0xf000ff && tbyte(0x1450779) == 0xf000ff ||
     prev(tbyte(0x14508b9)) < 0xf000ff && tbyte(0x14508b9) == 0xf000ff ||
     prev(tbyte(0x14509f9)) < 0xf000ff && tbyte(0x14509f9) == 0xf000ff ||
     prev(tbyte(0x1450b39)) < 0xf000ff && tbyte(0x1450b39) == 0xf000ff ||
     prev(tbyte(0x1450c79)) < 0xf000ff && tbyte(0x1450c79) == 0xf000ff ||
     prev(tbyte(0x1450db9)) < 0xf000ff && tbyte(0x1450db9) == 0xf000ff ||
     prev(tbyte(0x1450ef9)) < 0xf000ff && tbyte(0x1450ef9) == 0xf000ff ||
     prev(tbyte(0x1451039)) < 0xf000ff && tbyte(0x1451039) == 0xf000ff ||
     prev(tbyte(0x1451179)) < 0xf000ff && tbyte(0x1451179) == 0xf000ff ||
     prev(tbyte(0x14512b9)) < 0xf000ff && tbyte(0x14512b9) == 0xf000ff ||
     prev(tbyte(0x12e7bdd)) < 0xf000ff && tbyte(0x12e7bdd) == 0xf000ff ||
     prev(tbyte(0x12e7dc5)) < 0xf000ff && tbyte(0x12e7dc5) == 0xf000ff ||
     prev(tbyte(0x12e7fad)) < 0xf000ff && tbyte(0x12e7fad) == 0xf000ff ||
     prev(tbyte(0x12e8195)) < 0xf000ff && tbyte(0x12e8195) == 0xf000ff ||
     prev(tbyte(0x12e837d)) < 0xf000ff && tbyte(0x12e837d) == 0xf000ff)
)

achievement(
    title = "Concentrate Your Aim", description = "Master Archer class with any charcter", points = 5, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) != 0 && byte(0x144b420) != 0 &&
    (prev(tbyte(0x144f5fc)) < 0xf800ff && tbyte(0x144f5fc) == 0xf800ff ||
     prev(tbyte(0x144f73c)) < 0xf800ff && tbyte(0x144f73c) == 0xf800ff ||
     prev(tbyte(0x144f87c)) < 0xf800ff && tbyte(0x144f87c) == 0xf800ff ||
     prev(tbyte(0x144f9bc)) < 0xf800ff && tbyte(0x144f9bc) == 0xf800ff ||
     prev(tbyte(0x144fafc)) < 0xf800ff && tbyte(0x144fafc) == 0xf800ff ||
     prev(tbyte(0x144fc3c)) < 0xf800ff && tbyte(0x144fc3c) == 0xf800ff ||
     prev(tbyte(0x144fd7c)) < 0xf800ff && tbyte(0x144fd7c) == 0xf800ff ||
     prev(tbyte(0x144febc)) < 0xf800ff && tbyte(0x144febc) == 0xf800ff ||
     prev(tbyte(0x144fffc)) < 0xf800ff && tbyte(0x144fffc) == 0xf800ff ||
     prev(tbyte(0x145013c)) < 0xf800ff && tbyte(0x145013c) == 0xf800ff ||
     prev(tbyte(0x145027c)) < 0xf800ff && tbyte(0x145027c) == 0xf800ff ||
     prev(tbyte(0x14503bc)) < 0xf800ff && tbyte(0x14503bc) == 0xf800ff ||
     prev(tbyte(0x14504fc)) < 0xf800ff && tbyte(0x14504fc) == 0xf800ff ||
     prev(tbyte(0x145063c)) < 0xf800ff && tbyte(0x145063c) == 0xf800ff ||
     prev(tbyte(0x145077c)) < 0xf800ff && tbyte(0x145077c) == 0xf800ff ||
     prev(tbyte(0x14508bc)) < 0xf800ff && tbyte(0x14508bc) == 0xf800ff ||
     prev(tbyte(0x14509fc)) < 0xf800ff && tbyte(0x14509fc) == 0xf800ff ||
     prev(tbyte(0x1450b3c)) < 0xf800ff && tbyte(0x1450b3c) == 0xf800ff ||
     prev(tbyte(0x1450c7c)) < 0xf800ff && tbyte(0x1450c7c) == 0xf800ff ||
     prev(tbyte(0x1450dbc)) < 0xf800ff && tbyte(0x1450dbc) == 0xf800ff ||
     prev(tbyte(0x1450efc)) < 0xf800ff && tbyte(0x1450efc) == 0xf800ff ||
     prev(tbyte(0x145103c)) < 0xf800ff && tbyte(0x145103c) == 0xf800ff ||
     prev(tbyte(0x145117c)) < 0xf800ff && tbyte(0x145117c) == 0xf800ff ||
     prev(tbyte(0x14512bc)) < 0xf800ff && tbyte(0x14512bc) == 0xf800ff ||
     prev(tbyte(0x12e7be0)) < 0xf800ff && tbyte(0x12e7be0) == 0xf800ff ||
     prev(tbyte(0x12e7dc8)) < 0xf800ff && tbyte(0x12e7dc8) == 0xf800ff ||
     prev(tbyte(0x12e7fb0)) < 0xf800ff && tbyte(0x12e7fb0) == 0xf800ff ||
     prev(tbyte(0x12e8198)) < 0xf800ff && tbyte(0x12e8198) == 0xf800ff ||
     prev(tbyte(0x12e8380)) < 0xf800ff && tbyte(0x12e8380) == 0xf800ff)
)

achievement(
    title = "Barefist Bawler", description = "Master Monk class with any charcter", points = 5, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) != 0 && byte(0x144b420) != 0 &&
    (prev(tbyte(0x144f5ff)) < 0xf800ff && tbyte(0x144f5ff) == 0xf800ff ||
     prev(tbyte(0x144f73f)) < 0xf800ff && tbyte(0x144f73f) == 0xf800ff ||
     prev(tbyte(0x144f87f)) < 0xf800ff && tbyte(0x144f87f) == 0xf800ff ||
     prev(tbyte(0x144f9bf)) < 0xf800ff && tbyte(0x144f9bf) == 0xf800ff ||
     prev(tbyte(0x144faff)) < 0xf800ff && tbyte(0x144faff) == 0xf800ff ||
     prev(tbyte(0x144fc3f)) < 0xf800ff && tbyte(0x144fc3f) == 0xf800ff ||
     prev(tbyte(0x144fd7f)) < 0xf800ff && tbyte(0x144fd7f) == 0xf800ff ||
     prev(tbyte(0x144febf)) < 0xf800ff && tbyte(0x144febf) == 0xf800ff ||
     prev(tbyte(0x144ffff)) < 0xf800ff && tbyte(0x144ffff) == 0xf800ff ||
     prev(tbyte(0x145013f)) < 0xf800ff && tbyte(0x145013f) == 0xf800ff ||
     prev(tbyte(0x145027f)) < 0xf800ff && tbyte(0x145027f) == 0xf800ff ||
     prev(tbyte(0x14503bf)) < 0xf800ff && tbyte(0x14503bf) == 0xf800ff ||
     prev(tbyte(0x14504ff)) < 0xf800ff && tbyte(0x14504ff) == 0xf800ff ||
     prev(tbyte(0x145063f)) < 0xf800ff && tbyte(0x145063f) == 0xf800ff ||
     prev(tbyte(0x145077f)) < 0xf800ff && tbyte(0x145077f) == 0xf800ff ||
     prev(tbyte(0x14508bf)) < 0xf800ff && tbyte(0x14508bf) == 0xf800ff ||
     prev(tbyte(0x14509ff)) < 0xf800ff && tbyte(0x14509ff) == 0xf800ff ||
     prev(tbyte(0x1450b3f)) < 0xf800ff && tbyte(0x1450b3f) == 0xf800ff ||
     prev(tbyte(0x1450c7f)) < 0xf800ff && tbyte(0x1450c7f) == 0xf800ff ||
     prev(tbyte(0x1450dbf)) < 0xf800ff && tbyte(0x1450dbf) == 0xf800ff ||
     prev(tbyte(0x1450eff)) < 0xf800ff && tbyte(0x1450eff) == 0xf800ff ||
     prev(tbyte(0x145103f)) < 0xf800ff && tbyte(0x145103f) == 0xf800ff ||
     prev(tbyte(0x145117f)) < 0xf800ff && tbyte(0x145117f) == 0xf800ff ||
     prev(tbyte(0x14512bf)) < 0xf800ff && tbyte(0x14512bf) == 0xf800ff ||
     prev(tbyte(0x12e7be3)) < 0xf800ff && tbyte(0x12e7be3) == 0xf800ff ||
     prev(tbyte(0x12e7dcb)) < 0xf800ff && tbyte(0x12e7dcb) == 0xf800ff ||
     prev(tbyte(0x12e7fb3)) < 0xf800ff && tbyte(0x12e7fb3) == 0xf800ff ||
     prev(tbyte(0x12e819b)) < 0xf800ff && tbyte(0x12e819b) == 0xf800ff ||
     prev(tbyte(0x12e8383)) < 0xf800ff && tbyte(0x12e8383) == 0xf800ff)
)

achievement(
    title = "Holy Protector", description = "Master White Mage class with any charcter", points = 5, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) != 0 && byte(0x144b420) != 0 &&
    (prev(tbyte(0x144f602)) < 0xc0feff && tbyte(0x144f602) == 0xc0feff ||
     prev(tbyte(0x144f742)) < 0xc0feff && tbyte(0x144f742) == 0xc0feff ||
     prev(tbyte(0x144f882)) < 0xc0feff && tbyte(0x144f882) == 0xc0feff ||
     prev(tbyte(0x144f9c2)) < 0xc0feff && tbyte(0x144f9c2) == 0xc0feff ||
     prev(tbyte(0x144fb02)) < 0xc0feff && tbyte(0x144fb02) == 0xc0feff ||
     prev(tbyte(0x144fc42)) < 0xc0feff && tbyte(0x144fc42) == 0xc0feff ||
     prev(tbyte(0x144fd82)) < 0xc0feff && tbyte(0x144fd82) == 0xc0feff ||
     prev(tbyte(0x144fec2)) < 0xc0feff && tbyte(0x144fec2) == 0xc0feff ||
     prev(tbyte(0x1450002)) < 0xc0feff && tbyte(0x1450002) == 0xc0feff ||
     prev(tbyte(0x1450142)) < 0xc0feff && tbyte(0x1450142) == 0xc0feff ||
     prev(tbyte(0x1450282)) < 0xc0feff && tbyte(0x1450282) == 0xc0feff ||
     prev(tbyte(0x14503c2)) < 0xc0feff && tbyte(0x14503c2) == 0xc0feff ||
     prev(tbyte(0x1450502)) < 0xc0feff && tbyte(0x1450502) == 0xc0feff ||
     prev(tbyte(0x1450642)) < 0xc0feff && tbyte(0x1450642) == 0xc0feff ||
     prev(tbyte(0x1450782)) < 0xc0feff && tbyte(0x1450782) == 0xc0feff ||
     prev(tbyte(0x14508c2)) < 0xc0feff && tbyte(0x14508c2) == 0xc0feff ||
     prev(tbyte(0x1450a02)) < 0xc0feff && tbyte(0x1450a02) == 0xc0feff ||
     prev(tbyte(0x1450b42)) < 0xc0feff && tbyte(0x1450b42) == 0xc0feff ||
     prev(tbyte(0x1450c82)) < 0xc0feff && tbyte(0x1450c82) == 0xc0feff ||
     prev(tbyte(0x1450dc2)) < 0xc0feff && tbyte(0x1450dc2) == 0xc0feff ||
     prev(tbyte(0x1450f02)) < 0xc0feff && tbyte(0x1450f02) == 0xc0feff ||
     prev(tbyte(0x1451042)) < 0xc0feff && tbyte(0x1451042) == 0xc0feff ||
     prev(tbyte(0x1451182)) < 0xc0feff && tbyte(0x1451182) == 0xc0feff ||
     prev(tbyte(0x14512c2)) < 0xc0feff && tbyte(0x14512c2) == 0xc0feff ||
     prev(tbyte(0x12e7be6)) < 0xc0feff && tbyte(0x12e7be6) == 0xc0feff ||
     prev(tbyte(0x12e7dce)) < 0xc0feff && tbyte(0x12e7dce) == 0xc0feff ||
     prev(tbyte(0x12e7fb6)) < 0xc0feff && tbyte(0x12e7fb6) == 0xc0feff ||
     prev(tbyte(0x12e819e)) < 0xc0feff && tbyte(0x12e819e) == 0xc0feff ||
     prev(tbyte(0x12e8386)) < 0xc0feff && tbyte(0x12e8386) == 0xc0feff)
)

achievement(
    title = "Arcane Power", description = "Master Black Mage class with any charcter", points = 5, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) != 0 && byte(0x144b420) != 0 &&
    (prev(tbyte(0x144f605)) < 0xc0ffff && tbyte(0x144f605) == 0xc0ffff ||
     prev(tbyte(0x144f745)) < 0xc0ffff && tbyte(0x144f745) == 0xc0ffff ||
     prev(tbyte(0x144f885)) < 0xc0ffff && tbyte(0x144f885) == 0xc0ffff ||
     prev(tbyte(0x144f9c5)) < 0xc0ffff && tbyte(0x144f9c5) == 0xc0ffff ||
     prev(tbyte(0x144fb05)) < 0xc0ffff && tbyte(0x144fb05) == 0xc0ffff ||
     prev(tbyte(0x144fc45)) < 0xc0ffff && tbyte(0x144fc45) == 0xc0ffff ||
     prev(tbyte(0x144fd85)) < 0xc0ffff && tbyte(0x144fd85) == 0xc0ffff ||
     prev(tbyte(0x144fec5)) < 0xc0ffff && tbyte(0x144fec5) == 0xc0ffff ||
     prev(tbyte(0x1450005)) < 0xc0ffff && tbyte(0x1450005) == 0xc0ffff ||
     prev(tbyte(0x1450145)) < 0xc0ffff && tbyte(0x1450145) == 0xc0ffff ||
     prev(tbyte(0x1450285)) < 0xc0ffff && tbyte(0x1450285) == 0xc0ffff ||
     prev(tbyte(0x14503c5)) < 0xc0ffff && tbyte(0x14503c5) == 0xc0ffff ||
     prev(tbyte(0x1450505)) < 0xc0ffff && tbyte(0x1450505) == 0xc0ffff ||
     prev(tbyte(0x1450645)) < 0xc0ffff && tbyte(0x1450645) == 0xc0ffff ||
     prev(tbyte(0x1450785)) < 0xc0ffff && tbyte(0x1450785) == 0xc0ffff ||
     prev(tbyte(0x14508c5)) < 0xc0ffff && tbyte(0x14508c5) == 0xc0ffff ||
     prev(tbyte(0x1450a05)) < 0xc0ffff && tbyte(0x1450a05) == 0xc0ffff ||
     prev(tbyte(0x1450b45)) < 0xc0ffff && tbyte(0x1450b45) == 0xc0ffff ||
     prev(tbyte(0x1450c85)) < 0xc0ffff && tbyte(0x1450c85) == 0xc0ffff ||
     prev(tbyte(0x1450dc5)) < 0xc0ffff && tbyte(0x1450dc5) == 0xc0ffff ||
     prev(tbyte(0x1450f05)) < 0xc0ffff && tbyte(0x1450f05) == 0xc0ffff ||
     prev(tbyte(0x1451045)) < 0xc0ffff && tbyte(0x1451045) == 0xc0ffff ||
     prev(tbyte(0x1451185)) < 0xc0ffff && tbyte(0x1451185) == 0xc0ffff ||
     prev(tbyte(0x14512c5)) < 0xc0ffff && tbyte(0x14512c5) == 0xc0ffff ||
     prev(tbyte(0x12e7be9)) < 0xc0ffff && tbyte(0x12e7be9) == 0xc0ffff ||
     prev(tbyte(0x12e7dd1)) < 0xc0ffff && tbyte(0x12e7dd1) == 0xc0ffff ||
     prev(tbyte(0x12e7fb9)) < 0xc0ffff && tbyte(0x12e7fb9) == 0xc0ffff ||
     prev(tbyte(0x12e81a1)) < 0xc0ffff && tbyte(0x12e81a1) == 0xc0ffff ||
     prev(tbyte(0x12e8389)) < 0xc0ffff && tbyte(0x12e8389) == 0xc0ffff)
)

achievement(
    title = "Doctor Strange", description = "Master Summoner class with any charcter", points = 5, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) != 0 && byte(0x144b420) != 0 &&
    (prev(tbyte(0x144f608)) < 0xf8f0ff && tbyte(0x144f608) == 0xf8f0ff ||
     prev(tbyte(0x144f748)) < 0xf8f0ff && tbyte(0x144f748) == 0xf8f0ff ||
     prev(tbyte(0x144f888)) < 0xf8f0ff && tbyte(0x144f888) == 0xf8f0ff ||
     prev(tbyte(0x144f9c8)) < 0xf8f0ff && tbyte(0x144f9c8) == 0xf8f0ff ||
     prev(tbyte(0x144fb08)) < 0xf8f0ff && tbyte(0x144fb08) == 0xf8f0ff ||
     prev(tbyte(0x144fc48)) < 0xf8f0ff && tbyte(0x144fc48) == 0xf8f0ff ||
     prev(tbyte(0x144fd88)) < 0xf8f0ff && tbyte(0x144fd88) == 0xf8f0ff ||
     prev(tbyte(0x144fec8)) < 0xf8f0ff && tbyte(0x144fec8) == 0xf8f0ff ||
     prev(tbyte(0x1450008)) < 0xf8f0ff && tbyte(0x1450008) == 0xf8f0ff ||
     prev(tbyte(0x1450148)) < 0xf8f0ff && tbyte(0x1450148) == 0xf8f0ff ||
     prev(tbyte(0x1450288)) < 0xf8f0ff && tbyte(0x1450288) == 0xf8f0ff ||
     prev(tbyte(0x14503c8)) < 0xf8f0ff && tbyte(0x14503c8) == 0xf8f0ff ||
     prev(tbyte(0x1450508)) < 0xf8f0ff && tbyte(0x1450508) == 0xf8f0ff ||
     prev(tbyte(0x1450648)) < 0xf8f0ff && tbyte(0x1450648) == 0xf8f0ff ||
     prev(tbyte(0x1450788)) < 0xf8f0ff && tbyte(0x1450788) == 0xf8f0ff ||
     prev(tbyte(0x14508c8)) < 0xf8f0ff && tbyte(0x14508c8) == 0xf8f0ff ||
     prev(tbyte(0x1450a08)) < 0xf8f0ff && tbyte(0x1450a08) == 0xf8f0ff ||
     prev(tbyte(0x1450b48)) < 0xf8f0ff && tbyte(0x1450b48) == 0xf8f0ff ||
     prev(tbyte(0x1450c88)) < 0xf8f0ff && tbyte(0x1450c88) == 0xf8f0ff ||
     prev(tbyte(0x1450dc8)) < 0xf8f0ff && tbyte(0x1450dc8) == 0xf8f0ff ||
     prev(tbyte(0x1450f08)) < 0xf8f0ff && tbyte(0x1450f08) == 0xf8f0ff ||
     prev(tbyte(0x1451048)) < 0xf8f0ff && tbyte(0x1451048) == 0xf8f0ff ||
     prev(tbyte(0x1451188)) < 0xf8f0ff && tbyte(0x1451188) == 0xf8f0ff ||
     prev(tbyte(0x14512c8)) < 0xf8f0ff && tbyte(0x14512c8) == 0xf8f0ff ||
     prev(tbyte(0x12e7bec)) < 0xf8f0ff && tbyte(0x12e7bec) == 0xf8f0ff ||
     prev(tbyte(0x12e7dd4)) < 0xf8f0ff && tbyte(0x12e7dd4) == 0xf8f0ff ||
     prev(tbyte(0x12e7fbc)) < 0xf8f0ff && tbyte(0x12e7fbc) == 0xf8f0ff ||
     prev(tbyte(0x12e81a4)) < 0xf8f0ff && tbyte(0x12e81a4) == 0xf8f0ff ||
     prev(tbyte(0x12e838c)) < 0xf8f0ff && tbyte(0x12e838c) == 0xf8f0ff)
)

achievement(
    title = "Call Of Zodiark", description = "Master Summoner class with any charcter", points = 5, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) != 0 && byte(0x144b420) != 0 &&
    (prev(tbyte(0x144f60b)) < 0xc0ffff && tbyte(0x144f60b) == 0xc0ffff ||
     prev(tbyte(0x144f74b)) < 0xc0ffff && tbyte(0x144f74b) == 0xc0ffff ||
     prev(tbyte(0x144f88b)) < 0xc0ffff && tbyte(0x144f88b) == 0xc0ffff ||
     prev(tbyte(0x144f9cb)) < 0xc0ffff && tbyte(0x144f9cb) == 0xc0ffff ||
     prev(tbyte(0x144fb0b)) < 0xc0ffff && tbyte(0x144fb0b) == 0xc0ffff ||
     prev(tbyte(0x144fc4b)) < 0xc0ffff && tbyte(0x144fc4b) == 0xc0ffff ||
     prev(tbyte(0x144fd8b)) < 0xc0ffff && tbyte(0x144fd8b) == 0xc0ffff ||
     prev(tbyte(0x144fecb)) < 0xc0ffff && tbyte(0x144fecb) == 0xc0ffff ||
     prev(tbyte(0x145000b)) < 0xc0ffff && tbyte(0x145000b) == 0xc0ffff ||
     prev(tbyte(0x145014b)) < 0xc0ffff && tbyte(0x145014b) == 0xc0ffff ||
     prev(tbyte(0x145028b)) < 0xc0ffff && tbyte(0x145028b) == 0xc0ffff ||
     prev(tbyte(0x14503cb)) < 0xc0ffff && tbyte(0x14503cb) == 0xc0ffff ||
     prev(tbyte(0x145050b)) < 0xc0ffff && tbyte(0x145050b) == 0xc0ffff ||
     prev(tbyte(0x145064b)) < 0xc0ffff && tbyte(0x145064b) == 0xc0ffff ||
     prev(tbyte(0x145078b)) < 0xc0ffff && tbyte(0x145078b) == 0xc0ffff ||
     prev(tbyte(0x14508cb)) < 0xc0ffff && tbyte(0x14508cb) == 0xc0ffff ||
     prev(tbyte(0x1450a0b)) < 0xc0ffff && tbyte(0x1450a0b) == 0xc0ffff ||
     prev(tbyte(0x1450b4b)) < 0xc0ffff && tbyte(0x1450b4b) == 0xc0ffff ||
     prev(tbyte(0x1450c8b)) < 0xc0ffff && tbyte(0x1450c8b) == 0xc0ffff ||
     prev(tbyte(0x1450dcb)) < 0xc0ffff && tbyte(0x1450dcb) == 0xc0ffff ||
     prev(tbyte(0x1450f0b)) < 0xc0ffff && tbyte(0x1450f0b) == 0xc0ffff ||
     prev(tbyte(0x145104b)) < 0xc0ffff && tbyte(0x145104b) == 0xc0ffff ||
     prev(tbyte(0x145118b)) < 0xc0ffff && tbyte(0x145118b) == 0xc0ffff ||
     prev(tbyte(0x14512cb)) < 0xc0ffff && tbyte(0x14512cb) == 0xc0ffff ||
     prev(tbyte(0x12e7bef)) < 0xc0ffff && tbyte(0x12e7bef) == 0xc0ffff ||
     prev(tbyte(0x12e7dd7)) < 0xc0ffff && tbyte(0x12e7dd7) == 0xc0ffff ||
     prev(tbyte(0x12e7fbf)) < 0xc0ffff && tbyte(0x12e7fbf) == 0xc0ffff ||
     prev(tbyte(0x12e81a7)) < 0xc0ffff && tbyte(0x12e81a7) == 0xc0ffff ||
     prev(tbyte(0x12e838f)) < 0xc0ffff && tbyte(0x12e838f) == 0xc0ffff)
)

achievement(
    title = "Ivalice's Most Wanted", description = "Master Thief class with any charcter", points = 5, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) != 0 && byte(0x144b420) != 0 &&
    (prev(tbyte(0x144f60e)) < 0xfc00ff && tbyte(0x144f60e) == 0xfc00ff ||
     prev(tbyte(0x144f74e)) < 0xfc00ff && tbyte(0x144f74e) == 0xfc00ff ||
     prev(tbyte(0x144f88e)) < 0xfc00ff && tbyte(0x144f88e) == 0xfc00ff ||
     prev(tbyte(0x144f9ce)) < 0xfc00ff && tbyte(0x144f9ce) == 0xfc00ff ||
     prev(tbyte(0x144fb0e)) < 0xfc00ff && tbyte(0x144fb0e) == 0xfc00ff ||
     prev(tbyte(0x144fc4e)) < 0xfc00ff && tbyte(0x144fc4e) == 0xfc00ff ||
     prev(tbyte(0x144fd8e)) < 0xfc00ff && tbyte(0x144fd8e) == 0xfc00ff ||
     prev(tbyte(0x144fece)) < 0xfc00ff && tbyte(0x144fece) == 0xfc00ff ||
     prev(tbyte(0x145000e)) < 0xfc00ff && tbyte(0x145000e) == 0xfc00ff ||
     prev(tbyte(0x145014e)) < 0xfc00ff && tbyte(0x145014e) == 0xfc00ff ||
     prev(tbyte(0x145028e)) < 0xfc00ff && tbyte(0x145028e) == 0xfc00ff ||
     prev(tbyte(0x14503ce)) < 0xfc00ff && tbyte(0x14503ce) == 0xfc00ff ||
     prev(tbyte(0x145050e)) < 0xfc00ff && tbyte(0x145050e) == 0xfc00ff ||
     prev(tbyte(0x145064e)) < 0xfc00ff && tbyte(0x145064e) == 0xfc00ff ||
     prev(tbyte(0x145078e)) < 0xfc00ff && tbyte(0x145078e) == 0xfc00ff ||
     prev(tbyte(0x14508ce)) < 0xfc00ff && tbyte(0x14508ce) == 0xfc00ff ||
     prev(tbyte(0x1450a0e)) < 0xfc00ff && tbyte(0x1450a0e) == 0xfc00ff ||
     prev(tbyte(0x1450b4e)) < 0xfc00ff && tbyte(0x1450b4e) == 0xfc00ff ||
     prev(tbyte(0x1450c8e)) < 0xfc00ff && tbyte(0x1450c8e) == 0xfc00ff ||
     prev(tbyte(0x1450dce)) < 0xfc00ff && tbyte(0x1450dce) == 0xfc00ff ||
     prev(tbyte(0x1450f0e)) < 0xfc00ff && tbyte(0x1450f0e) == 0xfc00ff ||
     prev(tbyte(0x145104e)) < 0xfc00ff && tbyte(0x145104e) == 0xfc00ff ||
     prev(tbyte(0x145118e)) < 0xfc00ff && tbyte(0x145118e) == 0xfc00ff ||
     prev(tbyte(0x14512ce)) < 0xfc00ff && tbyte(0x14512ce) == 0xfc00ff ||
     prev(tbyte(0x12e7bf2)) < 0xfc00ff && tbyte(0x12e7bf2) == 0xfc00ff ||
     prev(tbyte(0x12e7dda)) < 0xfc00ff && tbyte(0x12e7dda) == 0xfc00ff ||
     prev(tbyte(0x12e7fc2)) < 0xfc00ff && tbyte(0x12e7fc2) == 0xfc00ff ||
     prev(tbyte(0x12e81aa)) < 0xfc00ff && tbyte(0x12e81aa) == 0xfc00ff ||
     prev(tbyte(0x12e8392)) < 0xfc00ff && tbyte(0x12e8392) == 0xfc00ff)
)

achievement(
    title = "Enlightened Linguist", description = "Master Orator class with any charcter", points = 5, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) != 0 && byte(0x144b420) != 0 &&
    (prev(tbyte(0x144f611)) < 0xf0c0ff && tbyte(0x144f611) == 0xf0c0ff ||
     prev(tbyte(0x144f751)) < 0xf0c0ff && tbyte(0x144f751) == 0xf0c0ff ||
     prev(tbyte(0x144f891)) < 0xf0c0ff && tbyte(0x144f891) == 0xf0c0ff ||
     prev(tbyte(0x144f9d1)) < 0xf0c0ff && tbyte(0x144f9d1) == 0xf0c0ff ||
     prev(tbyte(0x144fb11)) < 0xf0c0ff && tbyte(0x144fb11) == 0xf0c0ff ||
     prev(tbyte(0x144fc51)) < 0xf0c0ff && tbyte(0x144fc51) == 0xf0c0ff ||
     prev(tbyte(0x144fd91)) < 0xf0c0ff && tbyte(0x144fd91) == 0xf0c0ff ||
     prev(tbyte(0x144fed1)) < 0xf0c0ff && tbyte(0x144fed1) == 0xf0c0ff ||
     prev(tbyte(0x1450011)) < 0xf0c0ff && tbyte(0x1450011) == 0xf0c0ff ||
     prev(tbyte(0x1450151)) < 0xf0c0ff && tbyte(0x1450151) == 0xf0c0ff ||
     prev(tbyte(0x1450291)) < 0xf0c0ff && tbyte(0x1450291) == 0xf0c0ff ||
     prev(tbyte(0x14503d1)) < 0xf0c0ff && tbyte(0x14503d1) == 0xf0c0ff ||
     prev(tbyte(0x1450511)) < 0xf0c0ff && tbyte(0x1450511) == 0xf0c0ff ||
     prev(tbyte(0x1450651)) < 0xf0c0ff && tbyte(0x1450651) == 0xf0c0ff ||
     prev(tbyte(0x1450791)) < 0xf0c0ff && tbyte(0x1450791) == 0xf0c0ff ||
     prev(tbyte(0x14508d1)) < 0xf0c0ff && tbyte(0x14508d1) == 0xf0c0ff ||
     prev(tbyte(0x1450a11)) < 0xf0c0ff && tbyte(0x1450a11) == 0xf0c0ff ||
     prev(tbyte(0x1450b51)) < 0xf0c0ff && tbyte(0x1450b51) == 0xf0c0ff ||
     prev(tbyte(0x1450c91)) < 0xf0c0ff && tbyte(0x1450c91) == 0xf0c0ff ||
     prev(tbyte(0x1450dd1)) < 0xf0c0ff && tbyte(0x1450dd1) == 0xf0c0ff ||
     prev(tbyte(0x1450f11)) < 0xf0c0ff && tbyte(0x1450f11) == 0xf0c0ff ||
     prev(tbyte(0x1451051)) < 0xf0c0ff && tbyte(0x1451051) == 0xf0c0ff ||
     prev(tbyte(0x1451191)) < 0xf0c0ff && tbyte(0x1451191) == 0xf0c0ff ||
     prev(tbyte(0x14512d1)) < 0xf0c0ff && tbyte(0x14512d1) == 0xf0c0ff ||
     prev(tbyte(0x12e7bf5)) < 0xf0c0ff && tbyte(0x12e7bf5) == 0xf0c0ff ||
     prev(tbyte(0x12e7ddd)) < 0xf0c0ff && tbyte(0x12e7ddd) == 0xf0c0ff ||
     prev(tbyte(0x12e7fc5)) < 0xf0c0ff && tbyte(0x12e7fc5) == 0xf0c0ff ||
     prev(tbyte(0x12e81ad)) < 0xf0c0ff && tbyte(0x12e81ad) == 0xf0c0ff ||
     prev(tbyte(0x12e8395)) < 0xf0c0ff && tbyte(0x12e8395) == 0xf0c0ff)
)

achievement(
    title = "Mystical Enchantment", description = "Master Mystic class with any charcter", points = 5, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) != 0 && byte(0x144b420) != 0 &&
    (prev(tbyte(0x144f614)) < 0xf0fcff && tbyte(0x144f614) == 0xf0fcff ||
     prev(tbyte(0x144f754)) < 0xf0fcff && tbyte(0x144f754) == 0xf0fcff ||
     prev(tbyte(0x144f894)) < 0xf0fcff && tbyte(0x144f894) == 0xf0fcff ||
     prev(tbyte(0x144f9d4)) < 0xf0fcff && tbyte(0x144f9d4) == 0xf0fcff ||
     prev(tbyte(0x144fb14)) < 0xf0fcff && tbyte(0x144fb14) == 0xf0fcff ||
     prev(tbyte(0x144fc54)) < 0xf0fcff && tbyte(0x144fc54) == 0xf0fcff ||
     prev(tbyte(0x144fd94)) < 0xf0fcff && tbyte(0x144fd94) == 0xf0fcff ||
     prev(tbyte(0x144fed4)) < 0xf0fcff && tbyte(0x144fed4) == 0xf0fcff ||
     prev(tbyte(0x1450014)) < 0xf0fcff && tbyte(0x1450014) == 0xf0fcff ||
     prev(tbyte(0x1450154)) < 0xf0fcff && tbyte(0x1450154) == 0xf0fcff ||
     prev(tbyte(0x1450294)) < 0xf0fcff && tbyte(0x1450294) == 0xf0fcff ||
     prev(tbyte(0x14503d4)) < 0xf0fcff && tbyte(0x14503d4) == 0xf0fcff ||
     prev(tbyte(0x1450514)) < 0xf0fcff && tbyte(0x1450514) == 0xf0fcff ||
     prev(tbyte(0x1450654)) < 0xf0fcff && tbyte(0x1450654) == 0xf0fcff ||
     prev(tbyte(0x1450794)) < 0xf0fcff && tbyte(0x1450794) == 0xf0fcff ||
     prev(tbyte(0x14508d4)) < 0xf0fcff && tbyte(0x14508d4) == 0xf0fcff ||
     prev(tbyte(0x1450a14)) < 0xf0fcff && tbyte(0x1450a14) == 0xf0fcff ||
     prev(tbyte(0x1450b54)) < 0xf0fcff && tbyte(0x1450b54) == 0xf0fcff ||
     prev(tbyte(0x1450c94)) < 0xf0fcff && tbyte(0x1450c94) == 0xf0fcff ||
     prev(tbyte(0x1450dd4)) < 0xf0fcff && tbyte(0x1450dd4) == 0xf0fcff ||
     prev(tbyte(0x1450f14)) < 0xf0fcff && tbyte(0x1450f14) == 0xf0fcff ||
     prev(tbyte(0x1451054)) < 0xf0fcff && tbyte(0x1451054) == 0xf0fcff ||
     prev(tbyte(0x1451194)) < 0xf0fcff && tbyte(0x1451194) == 0xf0fcff ||
     prev(tbyte(0x14512d4)) < 0xf0fcff && tbyte(0x14512d4) == 0xf0fcff ||
     prev(tbyte(0x12e7bf8)) < 0xf0fcff && tbyte(0x12e7bf8) == 0xf0fcff ||
     prev(tbyte(0x12e7de0)) < 0xf0fcff && tbyte(0x12e7de0) == 0xf0fcff ||
     prev(tbyte(0x12e7fc8)) < 0xf0fcff && tbyte(0x12e7fc8) == 0xf0fcff ||
     prev(tbyte(0x12e81b0)) < 0xf0fcff && tbyte(0x12e81b0) == 0xf0fcff ||
     prev(tbyte(0x12e8398)) < 0xf0fcff && tbyte(0x12e8398) == 0xf0fcff)
)

achievement(
    title = "Nature's Wrath", description = "Master Geomancer class with any charcter", points = 5, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) != 0 && byte(0x144b420) != 0 &&
    (prev(tbyte(0x144f617)) < 0xf0f0ff && tbyte(0x144f617) == 0xf0f0ff ||
     prev(tbyte(0x144f757)) < 0xf0f0ff && tbyte(0x144f757) == 0xf0f0ff ||
     prev(tbyte(0x144f897)) < 0xf0f0ff && tbyte(0x144f897) == 0xf0f0ff ||
     prev(tbyte(0x144f9d7)) < 0xf0f0ff && tbyte(0x144f9d7) == 0xf0f0ff ||
     prev(tbyte(0x144fb17)) < 0xf0f0ff && tbyte(0x144fb17) == 0xf0f0ff ||
     prev(tbyte(0x144fc57)) < 0xf0f0ff && tbyte(0x144fc57) == 0xf0f0ff ||
     prev(tbyte(0x144fd97)) < 0xf0f0ff && tbyte(0x144fd97) == 0xf0f0ff ||
     prev(tbyte(0x144fed7)) < 0xf0f0ff && tbyte(0x144fed7) == 0xf0f0ff ||
     prev(tbyte(0x1450017)) < 0xf0f0ff && tbyte(0x1450017) == 0xf0f0ff ||
     prev(tbyte(0x1450157)) < 0xf0f0ff && tbyte(0x1450157) == 0xf0f0ff ||
     prev(tbyte(0x1450297)) < 0xf0f0ff && tbyte(0x1450297) == 0xf0f0ff ||
     prev(tbyte(0x14503d7)) < 0xf0f0ff && tbyte(0x14503d7) == 0xf0f0ff ||
     prev(tbyte(0x1450517)) < 0xf0f0ff && tbyte(0x1450517) == 0xf0f0ff ||
     prev(tbyte(0x1450657)) < 0xf0f0ff && tbyte(0x1450657) == 0xf0f0ff ||
     prev(tbyte(0x1450797)) < 0xf0f0ff && tbyte(0x1450797) == 0xf0f0ff ||
     prev(tbyte(0x14508d7)) < 0xf0f0ff && tbyte(0x14508d7) == 0xf0f0ff ||
     prev(tbyte(0x1450a17)) < 0xf0f0ff && tbyte(0x1450a17) == 0xf0f0ff ||
     prev(tbyte(0x1450b57)) < 0xf0f0ff && tbyte(0x1450b57) == 0xf0f0ff ||
     prev(tbyte(0x1450c97)) < 0xf0f0ff && tbyte(0x1450c97) == 0xf0f0ff ||
     prev(tbyte(0x1450dd7)) < 0xf0f0ff && tbyte(0x1450dd7) == 0xf0f0ff ||
     prev(tbyte(0x1450f17)) < 0xf0f0ff && tbyte(0x1450f17) == 0xf0f0ff ||
     prev(tbyte(0x1451057)) < 0xf0f0ff && tbyte(0x1451057) == 0xf0f0ff ||
     prev(tbyte(0x1451197)) < 0xf0f0ff && tbyte(0x1451197) == 0xf0f0ff ||
     prev(tbyte(0x14512d7)) < 0xf0f0ff && tbyte(0x14512d7) == 0xf0f0ff ||
     prev(tbyte(0x12e7bfb)) < 0xf0f0ff && tbyte(0x12e7bfb) == 0xf0f0ff ||
     prev(tbyte(0x12e7de3)) < 0xf0f0ff && tbyte(0x12e7de3) == 0xf0f0ff ||
     prev(tbyte(0x12e7fcb)) < 0xf0f0ff && tbyte(0x12e7fcb) == 0xf0f0ff ||
     prev(tbyte(0x12e81b3)) < 0xf0f0ff && tbyte(0x12e81b3) == 0xf0f0ff ||
     prev(tbyte(0x12e839b)) < 0xf0f0ff && tbyte(0x12e839b) == 0xf0f0ff)
)

achievement(
    title = "Heart of the Dragon", description = "Master Dragoon class with any charcter", points = 5, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) != 0 && byte(0x144b420) != 0 &&
    (prev(tbyte(0x144f61a)) < 0xe0f0ff && tbyte(0x144f61a) == 0xe0f0ff ||
     prev(tbyte(0x144f75a)) < 0xe0f0ff && tbyte(0x144f75a) == 0xe0f0ff ||
     prev(tbyte(0x144f89a)) < 0xe0f0ff && tbyte(0x144f89a) == 0xe0f0ff ||
     prev(tbyte(0x144f9da)) < 0xe0f0ff && tbyte(0x144f9da) == 0xe0f0ff ||
     prev(tbyte(0x144fb1a)) < 0xe0f0ff && tbyte(0x144fb1a) == 0xe0f0ff ||
     prev(tbyte(0x144fc5a)) < 0xe0f0ff && tbyte(0x144fc5a) == 0xe0f0ff ||
     prev(tbyte(0x144fd9a)) < 0xe0f0ff && tbyte(0x144fd9a) == 0xe0f0ff ||
     prev(tbyte(0x144feda)) < 0xe0f0ff && tbyte(0x144feda) == 0xe0f0ff ||
     prev(tbyte(0x145001a)) < 0xe0f0ff && tbyte(0x145001a) == 0xe0f0ff ||
     prev(tbyte(0x145015a)) < 0xe0f0ff && tbyte(0x145015a) == 0xe0f0ff ||
     prev(tbyte(0x145029a)) < 0xe0f0ff && tbyte(0x145029a) == 0xe0f0ff ||
     prev(tbyte(0x14503da)) < 0xe0f0ff && tbyte(0x14503da) == 0xe0f0ff ||
     prev(tbyte(0x145051a)) < 0xe0f0ff && tbyte(0x145051a) == 0xe0f0ff ||
     prev(tbyte(0x145065a)) < 0xe0f0ff && tbyte(0x145065a) == 0xe0f0ff ||
     prev(tbyte(0x145079a)) < 0xe0f0ff && tbyte(0x145079a) == 0xe0f0ff ||
     prev(tbyte(0x14508da)) < 0xe0f0ff && tbyte(0x14508da) == 0xe0f0ff ||
     prev(tbyte(0x1450a1a)) < 0xe0f0ff && tbyte(0x1450a1a) == 0xe0f0ff ||
     prev(tbyte(0x1450b5a)) < 0xe0f0ff && tbyte(0x1450b5a) == 0xe0f0ff ||
     prev(tbyte(0x1450c9a)) < 0xe0f0ff && tbyte(0x1450c9a) == 0xe0f0ff ||
     prev(tbyte(0x1450dda)) < 0xe0f0ff && tbyte(0x1450dda) == 0xe0f0ff ||
     prev(tbyte(0x1450f1a)) < 0xe0f0ff && tbyte(0x1450f1a) == 0xe0f0ff ||
     prev(tbyte(0x145105a)) < 0xe0f0ff && tbyte(0x145105a) == 0xe0f0ff ||
     prev(tbyte(0x145119a)) < 0xe0f0ff && tbyte(0x145119a) == 0xe0f0ff ||
     prev(tbyte(0x14512da)) < 0xe0f0ff && tbyte(0x14512da) == 0xe0f0ff ||
     prev(tbyte(0x12e7bfe)) < 0xe0f0ff && tbyte(0x12e7bfe) == 0xe0f0ff ||
     prev(tbyte(0x12e7de6)) < 0xe0f0ff && tbyte(0x12e7de6) == 0xe0f0ff ||
     prev(tbyte(0x12e7fce)) < 0xe0f0ff && tbyte(0x12e7fce) == 0xe0f0ff ||
     prev(tbyte(0x12e81b6)) < 0xe0f0ff && tbyte(0x12e81b6) == 0xe0f0ff ||
     prev(tbyte(0x12e839e)) < 0xe0f0ff && tbyte(0x12e839e) == 0xe0f0ff)
)

achievement(
    title = "Genji Warrior", description = "Master Samurai class with any charcter", points = 5, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) != 0 && byte(0x144b420) != 0 &&
    (prev(tbyte(0x144f61d)) < 0xf8c0ff && tbyte(0x144f61d) == 0xf8c0ff ||
     prev(tbyte(0x144f75d)) < 0xf8c0ff && tbyte(0x144f75d) == 0xf8c0ff ||
     prev(tbyte(0x144f89d)) < 0xf8c0ff && tbyte(0x144f89d) == 0xf8c0ff ||
     prev(tbyte(0x144f9dd)) < 0xf8c0ff && tbyte(0x144f9dd) == 0xf8c0ff ||
     prev(tbyte(0x144fb1d)) < 0xf8c0ff && tbyte(0x144fb1d) == 0xf8c0ff ||
     prev(tbyte(0x144fc5d)) < 0xf8c0ff && tbyte(0x144fc5d) == 0xf8c0ff ||
     prev(tbyte(0x144fd9d)) < 0xf8c0ff && tbyte(0x144fd9d) == 0xf8c0ff ||
     prev(tbyte(0x144fedd)) < 0xf8c0ff && tbyte(0x144fedd) == 0xf8c0ff ||
     prev(tbyte(0x145001d)) < 0xf8c0ff && tbyte(0x145001d) == 0xf8c0ff ||
     prev(tbyte(0x145015d)) < 0xf8c0ff && tbyte(0x145015d) == 0xf8c0ff ||
     prev(tbyte(0x145029d)) < 0xf8c0ff && tbyte(0x145029d) == 0xf8c0ff ||
     prev(tbyte(0x14503dd)) < 0xf8c0ff && tbyte(0x14503dd) == 0xf8c0ff ||
     prev(tbyte(0x145051d)) < 0xf8c0ff && tbyte(0x145051d) == 0xf8c0ff ||
     prev(tbyte(0x145065d)) < 0xf8c0ff && tbyte(0x145065d) == 0xf8c0ff ||
     prev(tbyte(0x145079d)) < 0xf8c0ff && tbyte(0x145079d) == 0xf8c0ff ||
     prev(tbyte(0x14508dd)) < 0xf8c0ff && tbyte(0x14508dd) == 0xf8c0ff ||
     prev(tbyte(0x1450a1d)) < 0xf8c0ff && tbyte(0x1450a1d) == 0xf8c0ff ||
     prev(tbyte(0x1450b5d)) < 0xf8c0ff && tbyte(0x1450b5d) == 0xf8c0ff ||
     prev(tbyte(0x1450c9d)) < 0xf8c0ff && tbyte(0x1450c9d) == 0xf8c0ff ||
     prev(tbyte(0x1450ddd)) < 0xf8c0ff && tbyte(0x1450ddd) == 0xf8c0ff ||
     prev(tbyte(0x1450f1d)) < 0xf8c0ff && tbyte(0x1450f1d) == 0xf8c0ff ||
     prev(tbyte(0x145105d)) < 0xf8c0ff && tbyte(0x145105d) == 0xf8c0ff ||
     prev(tbyte(0x145119d)) < 0xf8c0ff && tbyte(0x145119d) == 0xf8c0ff ||
     prev(tbyte(0x14512dd)) < 0xf8c0ff && tbyte(0x14512dd) == 0xf8c0ff ||
     prev(tbyte(0x12e7c01)) < 0xf8c0ff && tbyte(0x12e7c01) == 0xf8c0ff ||
     prev(tbyte(0x12e7de9)) < 0xf8c0ff && tbyte(0x12e7de9) == 0xf8c0ff ||
     prev(tbyte(0x12e7fd1)) < 0xf8c0ff && tbyte(0x12e7fd1) == 0xf8c0ff ||
     prev(tbyte(0x12e81b9)) < 0xf8c0ff && tbyte(0x12e81b9) == 0xf8c0ff ||
     prev(tbyte(0x12e83a1)) < 0xf8c0ff && tbyte(0x12e83a1) == 0xf8c0ff)
)

achievement(
    title = "Vanish In the Shadows", description = "Master Ninja class with any charcter", points = 5, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) != 0 && byte(0x144b420) != 0 &&
    (prev(tbyte(0x144f620)) < 0xf0f0ff && tbyte(0x144f620) == 0xf0f0ff ||
     prev(tbyte(0x144f760)) < 0xf0f0ff && tbyte(0x144f760) == 0xf0f0ff ||
     prev(tbyte(0x144f8a0)) < 0xf0f0ff && tbyte(0x144f8a0) == 0xf0f0ff ||
     prev(tbyte(0x144f9e0)) < 0xf0f0ff && tbyte(0x144f9e0) == 0xf0f0ff ||
     prev(tbyte(0x144fb20)) < 0xf0f0ff && tbyte(0x144fb20) == 0xf0f0ff ||
     prev(tbyte(0x144fc60)) < 0xf0f0ff && tbyte(0x144fc60) == 0xf0f0ff ||
     prev(tbyte(0x144fda0)) < 0xf0f0ff && tbyte(0x144fda0) == 0xf0f0ff ||
     prev(tbyte(0x144fee0)) < 0xf0f0ff && tbyte(0x144fee0) == 0xf0f0ff ||
     prev(tbyte(0x1450020)) < 0xf0f0ff && tbyte(0x1450020) == 0xf0f0ff ||
     prev(tbyte(0x1450160)) < 0xf0f0ff && tbyte(0x1450160) == 0xf0f0ff ||
     prev(tbyte(0x14502a0)) < 0xf0f0ff && tbyte(0x14502a0) == 0xf0f0ff ||
     prev(tbyte(0x14503e0)) < 0xf0f0ff && tbyte(0x14503e0) == 0xf0f0ff ||
     prev(tbyte(0x1450520)) < 0xf0f0ff && tbyte(0x1450520) == 0xf0f0ff ||
     prev(tbyte(0x1450660)) < 0xf0f0ff && tbyte(0x1450660) == 0xf0f0ff ||
     prev(tbyte(0x14507a0)) < 0xf0f0ff && tbyte(0x14507a0) == 0xf0f0ff ||
     prev(tbyte(0x14508e0)) < 0xf0f0ff && tbyte(0x14508e0) == 0xf0f0ff ||
     prev(tbyte(0x1450a20)) < 0xf0f0ff && tbyte(0x1450a20) == 0xf0f0ff ||
     prev(tbyte(0x1450b60)) < 0xf0f0ff && tbyte(0x1450b60) == 0xf0f0ff ||
     prev(tbyte(0x1450ca0)) < 0xf0f0ff && tbyte(0x1450ca0) == 0xf0f0ff ||
     prev(tbyte(0x1450de0)) < 0xf0f0ff && tbyte(0x1450de0) == 0xf0f0ff ||
     prev(tbyte(0x1450f20)) < 0xf0f0ff && tbyte(0x1450f20) == 0xf0f0ff ||
     prev(tbyte(0x1451060)) < 0xf0f0ff && tbyte(0x1451060) == 0xf0f0ff ||
     prev(tbyte(0x14511a0)) < 0xf0f0ff && tbyte(0x14511a0) == 0xf0f0ff ||
     prev(tbyte(0x14512e0)) < 0xf0f0ff && tbyte(0x14512e0) == 0xf0f0ff ||
     prev(tbyte(0x12e7c04)) < 0xf0f0ff && tbyte(0x12e7c04) == 0xf0f0ff ||
     prev(tbyte(0x12e7dec)) < 0xf0f0ff && tbyte(0x12e7dec) == 0xf0f0ff ||
     prev(tbyte(0x12e7fd4)) < 0xf0f0ff && tbyte(0x12e7fd4) == 0xf0f0ff ||
     prev(tbyte(0x12e81bc)) < 0xf0f0ff && tbyte(0x12e81bc) == 0xf0f0ff ||
     prev(tbyte(0x12e83a4)) < 0xf0f0ff && tbyte(0x12e83a4) == 0xf0f0ff)
)

achievement(
    title = "Accrue Interest", description = "Master Arithmetician class with any charcter", points = 5, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) != 0 && byte(0x144b420) != 0 &&
    (prev(tbyte(0x144f623)) < 0xf800ff && tbyte(0x144f623) == 0xf800ff ||
     prev(tbyte(0x144f763)) < 0xf800ff && tbyte(0x144f763) == 0xf800ff ||
     prev(tbyte(0x144f8a3)) < 0xf800ff && tbyte(0x144f8a3) == 0xf800ff ||
     prev(tbyte(0x144f9e3)) < 0xf800ff && tbyte(0x144f9e3) == 0xf800ff ||
     prev(tbyte(0x144fb23)) < 0xf800ff && tbyte(0x144fb23) == 0xf800ff ||
     prev(tbyte(0x144fc63)) < 0xf800ff && tbyte(0x144fc63) == 0xf800ff ||
     prev(tbyte(0x144fda3)) < 0xf800ff && tbyte(0x144fda3) == 0xf800ff ||
     prev(tbyte(0x144fee3)) < 0xf800ff && tbyte(0x144fee3) == 0xf800ff ||
     prev(tbyte(0x1450023)) < 0xf800ff && tbyte(0x1450023) == 0xf800ff ||
     prev(tbyte(0x1450163)) < 0xf800ff && tbyte(0x1450163) == 0xf800ff ||
     prev(tbyte(0x14502a3)) < 0xf800ff && tbyte(0x14502a3) == 0xf800ff ||
     prev(tbyte(0x14503e3)) < 0xf800ff && tbyte(0x14503e3) == 0xf800ff ||
     prev(tbyte(0x1450523)) < 0xf800ff && tbyte(0x1450523) == 0xf800ff ||
     prev(tbyte(0x1450663)) < 0xf800ff && tbyte(0x1450663) == 0xf800ff ||
     prev(tbyte(0x14507a3)) < 0xf800ff && tbyte(0x14507a3) == 0xf800ff ||
     prev(tbyte(0x14508e3)) < 0xf800ff && tbyte(0x14508e3) == 0xf800ff ||
     prev(tbyte(0x1450a23)) < 0xf800ff && tbyte(0x1450a23) == 0xf800ff ||
     prev(tbyte(0x1450b63)) < 0xf800ff && tbyte(0x1450b63) == 0xf800ff ||
     prev(tbyte(0x1450ca3)) < 0xf800ff && tbyte(0x1450ca3) == 0xf800ff ||
     prev(tbyte(0x1450de3)) < 0xf800ff && tbyte(0x1450de3) == 0xf800ff ||
     prev(tbyte(0x1450f23)) < 0xf800ff && tbyte(0x1450f23) == 0xf800ff ||
     prev(tbyte(0x1451063)) < 0xf800ff && tbyte(0x1451063) == 0xf800ff ||
     prev(tbyte(0x14511a3)) < 0xf800ff && tbyte(0x14511a3) == 0xf800ff ||
     prev(tbyte(0x14512e3)) < 0xf800ff && tbyte(0x14512e3) == 0xf800ff ||
     prev(tbyte(0x12e7c07)) < 0xf800ff && tbyte(0x12e7c07) == 0xf800ff ||
     prev(tbyte(0x12e7def)) < 0xf800ff && tbyte(0x12e7def) == 0xf800ff ||
     prev(tbyte(0x12e7fd7)) < 0xf800ff && tbyte(0x12e7fd7) == 0xf800ff ||
     prev(tbyte(0x12e81bf)) < 0xf800ff && tbyte(0x12e81bf) == 0xf800ff ||
     prev(tbyte(0x12e83a7)) < 0xf800ff && tbyte(0x12e83a7) == 0xf800ff)
)

achievement(
    title = "Booster Songs", description = "Master Bard class with any charcter", points = 5, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) != 0 && byte(0x144b420) != 0 &&
    (prev(tbyte(0x144f626)) < 0xf000fe && tbyte(0x144f626) == 0xf000fe ||
     prev(tbyte(0x144f766)) < 0xf000fe && tbyte(0x144f766) == 0xf000fe ||
     prev(tbyte(0x144f8a6)) < 0xf000fe && tbyte(0x144f8a6) == 0xf000fe ||
     prev(tbyte(0x144f9e6)) < 0xf000fe && tbyte(0x144f9e6) == 0xf000fe ||
     prev(tbyte(0x144fb26)) < 0xf000fe && tbyte(0x144fb26) == 0xf000fe ||
     prev(tbyte(0x144fc66)) < 0xf000fe && tbyte(0x144fc66) == 0xf000fe ||
     prev(tbyte(0x144fda6)) < 0xf000fe && tbyte(0x144fda6) == 0xf000fe ||
     prev(tbyte(0x144fee6)) < 0xf000fe && tbyte(0x144fee6) == 0xf000fe ||
     prev(tbyte(0x1450026)) < 0xf000fe && tbyte(0x1450026) == 0xf000fe ||
     prev(tbyte(0x1450166)) < 0xf000fe && tbyte(0x1450166) == 0xf000fe ||
     prev(tbyte(0x14502a6)) < 0xf000fe && tbyte(0x14502a6) == 0xf000fe ||
     prev(tbyte(0x14503e6)) < 0xf000fe && tbyte(0x14503e6) == 0xf000fe ||
     prev(tbyte(0x1450526)) < 0xf000fe && tbyte(0x1450526) == 0xf000fe ||
     prev(tbyte(0x1450666)) < 0xf000fe && tbyte(0x1450666) == 0xf000fe ||
     prev(tbyte(0x14507a6)) < 0xf000fe && tbyte(0x14507a6) == 0xf000fe ||
     prev(tbyte(0x14508e6)) < 0xf000fe && tbyte(0x14508e6) == 0xf000fe ||
     prev(tbyte(0x1450a26)) < 0xf000fe && tbyte(0x1450a26) == 0xf000fe ||
     prev(tbyte(0x1450b66)) < 0xf000fe && tbyte(0x1450b66) == 0xf000fe ||
     prev(tbyte(0x1450ca6)) < 0xf000fe && tbyte(0x1450ca6) == 0xf000fe ||
     prev(tbyte(0x1450de6)) < 0xf000fe && tbyte(0x1450de6) == 0xf000fe ||
     prev(tbyte(0x1450f26)) < 0xf000fe && tbyte(0x1450f26) == 0xf000fe ||
     prev(tbyte(0x1451066)) < 0xf000fe && tbyte(0x1451066) == 0xf000fe ||
     prev(tbyte(0x14511a6)) < 0xf000fe && tbyte(0x14511a6) == 0xf000fe ||
     prev(tbyte(0x14512e6)) < 0xf000fe && tbyte(0x14512e6) == 0xf000fe ||
     prev(tbyte(0x12e7c0a)) < 0xf000fe && tbyte(0x12e7c0a) == 0xf000fe ||
     prev(tbyte(0x12e7df2)) < 0xf000fe && tbyte(0x12e7df2) == 0xf000fe ||
     prev(tbyte(0x12e7fda)) < 0xf000fe && tbyte(0x12e7fda) == 0xf000fe ||
     prev(tbyte(0x12e81c2)) < 0xf000fe && tbyte(0x12e81c2) == 0xf000fe ||
     prev(tbyte(0x12e83aa)) < 0xf000fe && tbyte(0x12e83aa) == 0xf000fe)
)

achievement(
    title = "Private Dancer", description = "Master Dancer class with any charcter", points = 5, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) != 0 && byte(0x144b420) != 0 &&
    (prev(tbyte(0x144f769)) < 0xf000fe && tbyte(0x144f769) == 0xf000fe ||
     prev(tbyte(0x144f8a9)) < 0xf000fe && tbyte(0x144f8a9) == 0xf000fe ||
     prev(tbyte(0x144f9e9)) < 0xf000fe && tbyte(0x144f9e9) == 0xf000fe ||
     prev(tbyte(0x144fb29)) < 0xf000fe && tbyte(0x144fb29) == 0xf000fe ||
     prev(tbyte(0x144fc69)) < 0xf000fe && tbyte(0x144fc69) == 0xf000fe ||
     prev(tbyte(0x144fda9)) < 0xf000fe && tbyte(0x144fda9) == 0xf000fe ||
     prev(tbyte(0x144fee9)) < 0xf000fe && tbyte(0x144fee9) == 0xf000fe ||
     prev(tbyte(0x1450029)) < 0xf000fe && tbyte(0x1450029) == 0xf000fe ||
     prev(tbyte(0x1450169)) < 0xf000fe && tbyte(0x1450169) == 0xf000fe ||
     prev(tbyte(0x14502a9)) < 0xf000fe && tbyte(0x14502a9) == 0xf000fe ||
     prev(tbyte(0x14503e9)) < 0xf000fe && tbyte(0x14503e9) == 0xf000fe ||
     prev(tbyte(0x1450529)) < 0xf000fe && tbyte(0x1450529) == 0xf000fe ||
     prev(tbyte(0x1450669)) < 0xf000fe && tbyte(0x1450669) == 0xf000fe ||
     prev(tbyte(0x14507a9)) < 0xf000fe && tbyte(0x14507a9) == 0xf000fe ||
     prev(tbyte(0x14508e9)) < 0xf000fe && tbyte(0x14508e9) == 0xf000fe ||
     prev(tbyte(0x1450a29)) < 0xf000fe && tbyte(0x1450a29) == 0xf000fe ||
     prev(tbyte(0x1450b69)) < 0xf000fe && tbyte(0x1450b69) == 0xf000fe ||
     prev(tbyte(0x1450ca9)) < 0xf000fe && tbyte(0x1450ca9) == 0xf000fe ||
     prev(tbyte(0x1450de9)) < 0xf000fe && tbyte(0x1450de9) == 0xf000fe ||
     prev(tbyte(0x1450f29)) < 0xf000fe && tbyte(0x1450f29) == 0xf000fe ||
     prev(tbyte(0x1451069)) < 0xf000fe && tbyte(0x1451069) == 0xf000fe ||
     prev(tbyte(0x14511a9)) < 0xf000fe && tbyte(0x14511a9) == 0xf000fe ||
     prev(tbyte(0x14512e9)) < 0xf000fe && tbyte(0x14512e9) == 0xf000fe ||
     prev(tbyte(0x12e7c0d)) < 0xf000fe && tbyte(0x12e7c0d) == 0xf000fe ||
     prev(tbyte(0x12e7df5)) < 0xf000fe && tbyte(0x12e7df5) == 0xf000fe ||
     prev(tbyte(0x12e7fdd)) < 0xf000fe && tbyte(0x12e7fdd) == 0xf000fe ||
     prev(tbyte(0x12e81c5)) < 0xf000fe && tbyte(0x12e81c5) == 0xf000fe ||
     prev(tbyte(0x12e83ad)) < 0xf000fe && tbyte(0x12e83ad) == 0xf000fe)
)

achievement(
    title = "Aimed At Evil", description = "Master Mustadio's machinist class", points = 5, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) >= 0x19 && byte(0x144b420) != 0 &&
    (prev(tbyte(0x144f733)) < 0xfc00e0 && tbyte(0x144f733) == 0xfc00e0 && byte(0x144f72a) == 0x16 ||
     prev(tbyte(0x144f873)) < 0xfc00e0 && tbyte(0x144f873) == 0xfc00e0 && byte(0x144f86a) == 0x16 ||
     prev(tbyte(0x144f9b3)) < 0xfc00e0 && tbyte(0x144f9b3) == 0xfc00e0 && byte(0x144f9aa) == 0x16 ||
     prev(tbyte(0x144faf3)) < 0xfc00e0 && tbyte(0x144faf3) == 0xfc00e0 && byte(0x144faea) == 0x16 ||
     prev(tbyte(0x144fc33)) < 0xfc00e0 && tbyte(0x144fc33) == 0xfc00e0 && byte(0x144fc2a) == 0x16 ||
     prev(tbyte(0x144fd73)) < 0xfc00e0 && tbyte(0x144fd73) == 0xfc00e0 && byte(0x144fd6a) == 0x16 ||
     prev(tbyte(0x144feb3)) < 0xfc00e0 && tbyte(0x144feb3) == 0xfc00e0 && byte(0x144feaa) == 0x16 ||
     prev(tbyte(0x144fff3)) < 0xfc00e0 && tbyte(0x144fff3) == 0xfc00e0 && byte(0x144ffea) == 0x16 ||
     prev(tbyte(0x1450133)) < 0xfc00e0 && tbyte(0x1450133) == 0xfc00e0 && byte(0x145012a) == 0x16 ||
     prev(tbyte(0x1450273)) < 0xfc00e0 && tbyte(0x1450273) == 0xfc00e0 && byte(0x145026a) == 0x16 ||
     prev(tbyte(0x14503b3)) < 0xfc00e0 && tbyte(0x14503b3) == 0xfc00e0 && byte(0x14503aa) == 0x16 ||
     prev(tbyte(0x14504f3)) < 0xfc00e0 && tbyte(0x14504f3) == 0xfc00e0 && byte(0x14504ea) == 0x16 ||
     prev(tbyte(0x1450633)) < 0xfc00e0 && tbyte(0x1450633) == 0xfc00e0 && byte(0x145062a) == 0x16 ||
     prev(tbyte(0x1450773)) < 0xfc00e0 && tbyte(0x1450773) == 0xfc00e0 && byte(0x145076a) == 0x16 ||
     prev(tbyte(0x14508b3)) < 0xfc00e0 && tbyte(0x14508b3) == 0xfc00e0 && byte(0x14508aa) == 0x16 ||
     prev(tbyte(0x14509f3)) < 0xfc00e0 && tbyte(0x14509f3) == 0xfc00e0 && byte(0x14509ea) == 0x16 ||
     prev(tbyte(0x1450b33)) < 0xfc00e0 && tbyte(0x1450b33) == 0xfc00e0 && byte(0x1450b2a) == 0x16 ||
     prev(tbyte(0x1450c73)) < 0xfc00e0 && tbyte(0x1450c73) == 0xfc00e0 && byte(0x1450c6a) == 0x16 ||
     prev(tbyte(0x1450db3)) < 0xfc00e0 && tbyte(0x1450db3) == 0xfc00e0 && byte(0x1450daa) == 0x16 ||
     prev(tbyte(0x1450ef3)) < 0xfc00e0 && tbyte(0x1450ef3) == 0xfc00e0 && byte(0x1450eea) == 0x16 ||
     prev(tbyte(0x1451033)) < 0xfc00e0 && tbyte(0x1451033) == 0xfc00e0 && byte(0x145102a) == 0x16 ||
     prev(tbyte(0x1451173)) < 0xfc00e0 && tbyte(0x1451173) == 0xfc00e0 && byte(0x145116a) == 0x16 ||
     prev(tbyte(0x14512b3)) < 0xfc00e0 && tbyte(0x14512b3) == 0xfc00e0 && byte(0x14512aa) == 0x16)
)

achievement(
    title = "Holy Diva", description = "Master Mustadio's machinist class", points = 5, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) >= 0x1b && byte(0x144b420) != 0 &&
    (prev(tbyte(0x144f733)) < 0xfc00f8 && tbyte(0x144f733) == 0xfc00f8 && byte(0x144f72a) == 0x1e ||
     prev(tbyte(0x144f873)) < 0xfc00f8 && tbyte(0x144f873) == 0xfc00f8 && byte(0x144f86a) == 0x1e ||
     prev(tbyte(0x144f9b3)) < 0xfc00f8 && tbyte(0x144f9b3) == 0xfc00f8 && byte(0x144f9aa) == 0x1e ||
     prev(tbyte(0x144faf3)) < 0xfc00f8 && tbyte(0x144faf3) == 0xfc00f8 && byte(0x144faea) == 0x1e ||
     prev(tbyte(0x144fc33)) < 0xfc00f8 && tbyte(0x144fc33) == 0xfc00f8 && byte(0x144fc2a) == 0x1e ||
     prev(tbyte(0x144fd73)) < 0xfc00f8 && tbyte(0x144fd73) == 0xfc00f8 && byte(0x144fd6a) == 0x1e ||
     prev(tbyte(0x144feb3)) < 0xfc00f8 && tbyte(0x144feb3) == 0xfc00f8 && byte(0x144feaa) == 0x1e ||
     prev(tbyte(0x144fff3)) < 0xfc00f8 && tbyte(0x144fff3) == 0xfc00f8 && byte(0x144ffea) == 0x1e ||
     prev(tbyte(0x1450133)) < 0xfc00f8 && tbyte(0x1450133) == 0xfc00f8 && byte(0x145012a) == 0x1e ||
     prev(tbyte(0x1450273)) < 0xfc00f8 && tbyte(0x1450273) == 0xfc00f8 && byte(0x145026a) == 0x1e ||
     prev(tbyte(0x14503b3)) < 0xfc00f8 && tbyte(0x14503b3) == 0xfc00f8 && byte(0x14503aa) == 0x1e ||
     prev(tbyte(0x14504f3)) < 0xfc00f8 && tbyte(0x14504f3) == 0xfc00f8 && byte(0x14504ea) == 0x1e ||
     prev(tbyte(0x1450633)) < 0xfc00f8 && tbyte(0x1450633) == 0xfc00f8 && byte(0x145062a) == 0x1e ||
     prev(tbyte(0x1450773)) < 0xfc00f8 && tbyte(0x1450773) == 0xfc00f8 && byte(0x145076a) == 0x1e ||
     prev(tbyte(0x14508b3)) < 0xfc00f8 && tbyte(0x14508b3) == 0xfc00f8 && byte(0x14508aa) == 0x1e ||
     prev(tbyte(0x14509f3)) < 0xfc00f8 && tbyte(0x14509f3) == 0xfc00f8 && byte(0x14509ea) == 0x1e ||
     prev(tbyte(0x1450b33)) < 0xfc00f8 && tbyte(0x1450b33) == 0xfc00f8 && byte(0x1450b2a) == 0x1e ||
     prev(tbyte(0x1450c73)) < 0xfc00f8 && tbyte(0x1450c73) == 0xfc00f8 && byte(0x1450c6a) == 0x1e ||
     prev(tbyte(0x1450db3)) < 0xfc00f8 && tbyte(0x1450db3) == 0xfc00f8 && byte(0x1450daa) == 0x1e ||
     prev(tbyte(0x1450ef3)) < 0xfc00f8 && tbyte(0x1450ef3) == 0xfc00f8 && byte(0x1450eea) == 0x1e ||
     prev(tbyte(0x1451033)) < 0xfc00f8 && tbyte(0x1451033) == 0xfc00f8 && byte(0x145102a) == 0x1e ||
     prev(tbyte(0x1451173)) < 0xfc00f8 && tbyte(0x1451173) == 0xfc00f8 && byte(0x145116a) == 0x1e ||
     prev(tbyte(0x14512b3)) < 0xfc00f8 && tbyte(0x14512b3) == 0xfc00f8 && byte(0x14512aa) == 0x1e)
)

achievement(
    title = "Artefact Hunter", description = "Find your first Artefact by running an errand", points = 1, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) >= 0x10 && 
              prev(bit0(0x144b5a8)) + prev(bit1(0x144b5a8)) + prev(bit2(0x144b5a8)) + prev(bit3(0x144b5a8)) +
              prev(bit4(0x144b5a8)) + prev(bit5(0x144b5a8)) + prev(bit6(0x144b5a8)) + prev(bit7(0x144b5a8)) +
              prev(bit0(0x144b5a9)) + prev(bit1(0x144b5a9)) + prev(bit2(0x144b5a9)) + prev(bit3(0x144b5a9)) +
              prev(bit4(0x144b5a9)) + prev(bit5(0x144b5a9)) + prev(bit6(0x144b5a9)) + prev(bit7(0x144b5a9)) +
              prev(bit0(0x144b5aa)) + prev(bit1(0x144b5aa)) + prev(bit2(0x144b5aa)) + prev(bit3(0x144b5aa)) +
              prev(bit4(0x144b5aa)) + prev(bit5(0x144b5aa)) + prev(bit6(0x144b5aa)) + prev(bit7(0x144b5aa)) +
              prev(bit0(0x144b5ab)) + prev(bit1(0x144b5ab)) + prev(bit2(0x144b5ab)) + prev(bit3(0x144b5ab)) +
              prev(bit4(0x144b5ab)) + prev(bit5(0x144b5ab)) + prev(bit6(0x144b5ab)) + prev(bit7(0x144b5ab))
              == 0 && 
              bit0(0x144b5a8) + bit1(0x144b5a8) + bit2(0x144b5a8) + bit3(0x144b5a8) +
              bit4(0x144b5a8) + bit5(0x144b5a8) + bit6(0x144b5a8) + bit7(0x144b5a8) +
              bit0(0x144b5a9) + bit1(0x144b5a9) + bit2(0x144b5a9) + bit3(0x144b5a9) +
              bit4(0x144b5a9) + bit5(0x144b5a9) + bit6(0x144b5a9) + bit7(0x144b5a9) +
              bit0(0x144b5aa) + bit1(0x144b5aa) + bit2(0x144b5aa) + bit3(0x144b5aa) +
              bit4(0x144b5aa) + bit5(0x144b5aa) + bit6(0x144b5aa) + bit7(0x144b5aa) +
              bit0(0x144b5ab) + bit1(0x144b5ab) + bit2(0x144b5ab) + bit3(0x144b5ab) +
              bit4(0x144b5ab) + bit5(0x144b5ab) + bit6(0x144b5ab) + bit7(0x144b5ab)
              == 1
)

achievement(
    title = "Museum Curator[m]", description = "Find all Artefacts by running an errands", points = 10, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) >= 0x10 && 
              prev(bit0(0x144b5a8)) + prev(bit1(0x144b5a8)) + prev(bit2(0x144b5a8)) + prev(bit3(0x144b5a8)) +
              prev(bit4(0x144b5a8)) + prev(bit5(0x144b5a8)) + prev(bit6(0x144b5a8)) + prev(bit7(0x144b5a8)) +
              prev(bit0(0x144b5a9)) + prev(bit1(0x144b5a9)) + prev(bit2(0x144b5a9)) + prev(bit3(0x144b5a9)) +
              prev(bit4(0x144b5a9)) + prev(bit5(0x144b5a9)) + prev(bit6(0x144b5a9)) + prev(bit7(0x144b5a9)) +
              prev(bit0(0x144b5aa)) + prev(bit1(0x144b5aa)) + prev(bit2(0x144b5aa)) + prev(bit3(0x144b5aa)) +
              prev(bit4(0x144b5aa)) + prev(bit5(0x144b5aa)) + prev(bit6(0x144b5aa)) + prev(bit7(0x144b5aa)) +
              prev(bit0(0x144b5ab)) + prev(bit1(0x144b5ab)) + prev(bit2(0x144b5ab)) + prev(bit3(0x144b5ab)) +
              prev(bit4(0x144b5ab)) + prev(bit5(0x144b5ab)) + prev(bit6(0x144b5ab)) + prev(bit7(0x144b5ab))
              == 31 && 
              bit0(0x144b5a8) + bit1(0x144b5a8) + bit2(0x144b5a8) + bit3(0x144b5a8) +
              bit4(0x144b5a8) + bit5(0x144b5a8) + bit6(0x144b5a8) + bit7(0x144b5a8) +
              bit0(0x144b5a9) + bit1(0x144b5a9) + bit2(0x144b5a9) + bit3(0x144b5a9) +
              bit4(0x144b5a9) + bit5(0x144b5a9) + bit6(0x144b5a9) + bit7(0x144b5a9) +
              bit0(0x144b5aa) + bit1(0x144b5aa) + bit2(0x144b5aa) + bit3(0x144b5aa) +
              bit4(0x144b5aa) + bit5(0x144b5aa) + bit6(0x144b5aa) + bit7(0x144b5aa) +
              bit0(0x144b5ab) + bit1(0x144b5ab) + bit2(0x144b5ab) + bit3(0x144b5ab) +
              bit4(0x144b5ab) + bit5(0x144b5ab) + bit6(0x144b5ab) + bit7(0x144b5ab)
              == 32
)

achievement(
    title = "Wonderful Find", description = "Find your first Wonder by running an errand", points = 1, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) >= 0x10 && 
              prev(bit0(0x144b5ae)) + prev(bit1(0x144b5ae)) + prev(bit2(0x144b5ae)) + prev(bit3(0x144b5ae)) +
              prev(bit4(0x144b5ae)) + prev(bit5(0x144b5ae)) + prev(bit6(0x144b5ae)) + prev(bit7(0x144b5ae)) +
              prev(bit0(0x144b5af)) + prev(bit1(0x144b5af)) + prev(bit2(0x144b5af)) + prev(bit3(0x144b5af)) +
              prev(bit4(0x144b5af)) + prev(bit5(0x144b5af)) + prev(bit6(0x144b5af)) + prev(bit7(0x144b5af))
              == 0 && 
              bit0(0x144b5ae) + bit1(0x144b5ae) + bit2(0x144b5ae) + bit3(0x144b5ae) +
              bit4(0x144b5ae) + bit5(0x144b5ae) + bit6(0x144b5ae) + bit7(0x144b5ae) +
              bit0(0x144b5af) + bit1(0x144b5af) + bit2(0x144b5af) + bit3(0x144b5af) +
              bit4(0x144b5af) + bit5(0x144b5af) + bit6(0x144b5af) + bit7(0x144b5af)
              == 1
)

achievement(
    title = "World Of Wonder[m]", description = "Find all Wonders by running an errands", points = 10, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) >= 0x10 && 
              prev(bit0(0x144b5ae)) + prev(bit1(0x144b5ae)) + prev(bit2(0x144b5ae)) + prev(bit3(0x144b5ae)) +
              prev(bit4(0x144b5ae)) + prev(bit5(0x144b5ae)) + prev(bit6(0x144b5ae)) + prev(bit7(0x144b5ae)) +
              prev(bit0(0x144b5af)) + prev(bit1(0x144b5af)) + prev(bit2(0x144b5af)) + prev(bit3(0x144b5af)) +
              prev(bit4(0x144b5af)) + prev(bit5(0x144b5af)) + prev(bit6(0x144b5af)) + prev(bit7(0x144b5af))
              == 15 && 
              bit0(0x144b5ae) + bit1(0x144b5ae) + bit2(0x144b5ae) + bit3(0x144b5ae) +
              bit4(0x144b5ae) + bit5(0x144b5ae) + bit6(0x144b5ae) + bit7(0x144b5ae) +
              bit0(0x144b5af) + bit1(0x144b5af) + bit2(0x144b5af) + bit3(0x144b5af) +
              bit4(0x144b5af) + bit5(0x144b5af) + bit6(0x144b5af) + bit7(0x144b5af)
              == 16
)

achievement(
    title = "Here To Help", description = "Finish your first errand", points = 1, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) >= 0x10 &&
              prev(low4(0x144b5b0)) + prev(high4(0x144b5b0)) + prev(low4(0x144b5b1)) + prev(high4(0x144b5b1)) + 
              prev(low4(0x144b5b2)) + prev(high4(0x144b5b2)) + prev(low4(0x144b5b3)) + prev(high4(0x144b5b3)) +
              prev(low4(0x144b5b4)) + prev(high4(0x144b5b4)) + prev(low4(0x144b5b5)) + prev(high4(0x144b5b5)) +
              prev(low4(0x144b5b6)) + prev(high4(0x144b5b6)) + prev(low4(0x144b5b7)) + prev(high4(0x144b5b7)) +
              prev(low4(0x144b5b8)) + prev(high4(0x144b5b8)) + prev(low4(0x144b5b9)) + prev(high4(0x144b5b9)) +
              prev(low4(0x144b5ba)) + prev(high4(0x144b5ba)) + prev(low4(0x144b5bb)) + prev(high4(0x144b5bb)) +
              prev(low4(0x144b5bc)) + prev(high4(0x144b5bc)) + prev(low4(0x144b5bd)) + prev(high4(0x144b5bd)) +
              prev(low4(0x144b5be)) + prev(high4(0x144b5be)) + prev(low4(0x144b5bf)) + prev(high4(0x144b5bf)) +
              prev(low4(0x144b5c0)) + prev(high4(0x144b5c0)) + prev(low4(0x144b5c1)) + prev(high4(0x144b5c1)) + 
              prev(low4(0x144b5c2)) + prev(high4(0x144b5c2)) + prev(low4(0x144b5c3)) + prev(high4(0x144b5c3)) +
              prev(low4(0x144b5c4)) + prev(high4(0x144b5c4)) + prev(low4(0x144b5c5)) + prev(high4(0x144b5c5)) +
              prev(low4(0x144b5c6)) + prev(high4(0x144b5c6)) + prev(low4(0x144b5c7)) + prev(high4(0x144b5c7)) +
              prev(low4(0x144b5c8)) + prev(high4(0x144b5c8)) + prev(low4(0x144b5c9)) + prev(high4(0x144b5c9)) +
              prev(low4(0x144b5ca)) + prev(high4(0x144b5ca)) + prev(low4(0x144b5cb)) + prev(high4(0x144b5cb)) +
              prev(low4(0x144b5cc)) + prev(high4(0x144b5cc)) + prev(low4(0x144b5cd)) + prev(high4(0x144b5cd)) +
              prev(low4(0x144b5ce)) + prev(high4(0x144b5ce)) + prev(low4(0x144b5cf)) + prev(high4(0x144b5cf)) +
              prev(low4(0x144b5d0)) + prev(high4(0x144b5d0)) + prev(low4(0x144b5d1)) + prev(high4(0x144b5d1)) + 
              prev(low4(0x144b5d2)) + prev(high4(0x144b5d2)) + prev(low4(0x144b5d3)) + prev(high4(0x144b5d3)) +
              prev(low4(0x144b5d4)) + prev(high4(0x144b5d4)) + prev(low4(0x144b5d5)) + prev(high4(0x144b5d5)) +
              prev(low4(0x144b5d6)) + prev(high4(0x144b5d6)) + prev(low4(0x144b5d7)) + prev(high4(0x144b5d7)) +
              prev(low4(0x144b5d8)) + prev(high4(0x144b5d8)) + prev(low4(0x144b5d9)) + prev(high4(0x144b5d9)) +
              prev(low4(0x144b5da)) + prev(high4(0x144b5da)) + prev(low4(0x144b5db)) + prev(high4(0x144b5db)) +
              prev(low4(0x144b5dc)) + prev(high4(0x144b5dc)) + prev(low4(0x144b5dd)) + prev(high4(0x144b5dd)) +
              prev(low4(0x144b5de)) + prev(high4(0x144b5de)) + prev(low4(0x144b5df)) + prev(high4(0x144b5df)) 
              == 0x0a &&
              low4(0x144b5b0) + high4(0x144b5b0) + low4(0x144b5b1) + high4(0x144b5b1) + 
              low4(0x144b5b2) + high4(0x144b5b2) + low4(0x144b5b3) + high4(0x144b5b3) +
              low4(0x144b5b4) + high4(0x144b5b4) + low4(0x144b5b5) + high4(0x144b5b5) +
              low4(0x144b5b6) + high4(0x144b5b6) + low4(0x144b5b7) + high4(0x144b5b7) +
              low4(0x144b5b8) + high4(0x144b5b8) + low4(0x144b5b9) + high4(0x144b5b9) +
              low4(0x144b5ba) + high4(0x144b5ba) + low4(0x144b5bb) + high4(0x144b5bb) +
              low4(0x144b5bc) + high4(0x144b5bc) + low4(0x144b5bd) + high4(0x144b5bd) +
              low4(0x144b5be) + high4(0x144b5be) + low4(0x144b5bf) + high4(0x144b5bf) +
              low4(0x144b5c0) + high4(0x144b5c0) + low4(0x144b5c1) + high4(0x144b5c1) + 
              low4(0x144b5c2) + high4(0x144b5c2) + low4(0x144b5c3) + high4(0x144b5c3) +
              low4(0x144b5c4) + high4(0x144b5c4) + low4(0x144b5c5) + high4(0x144b5c5) +
              low4(0x144b5c6) + high4(0x144b5c6) + low4(0x144b5c7) + high4(0x144b5c7) +
              low4(0x144b5c8) + high4(0x144b5c8) + low4(0x144b5c9) + high4(0x144b5c9) +
              low4(0x144b5ca) + high4(0x144b5ca) + low4(0x144b5cb) + high4(0x144b5cb) +
              low4(0x144b5cc) + high4(0x144b5cc) + low4(0x144b5cd) + high4(0x144b5cd) +
              low4(0x144b5ce) + high4(0x144b5ce) + low4(0x144b5cf) + high4(0x144b5cf) +
              low4(0x144b5d0) + high4(0x144b5d0) + low4(0x144b5d1) + high4(0x144b5d1) + 
              low4(0x144b5d2) + high4(0x144b5d2) + low4(0x144b5d3) + high4(0x144b5d3) +
              low4(0x144b5d4) + high4(0x144b5d4) + low4(0x144b5d5) + high4(0x144b5d5) +
              low4(0x144b5d6) + high4(0x144b5d6) + low4(0x144b5d7) + high4(0x144b5d7) +
              low4(0x144b5d8) + high4(0x144b5d8) + low4(0x144b5d9) + high4(0x144b5d9) +
              low4(0x144b5da) + high4(0x144b5da) + low4(0x144b5db) + high4(0x144b5db) +
              low4(0x144b5dc) + high4(0x144b5dc) + low4(0x144b5dd) + high4(0x144b5dd) +
              low4(0x144b5de) + high4(0x144b5de) + low4(0x144b5df) + high4(0x144b5df)
              == 0x0c
)

achievement(
    title = "Errand Boy", description = "Finish All Errands", points = 25, 
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b50c) >= 0x10 && 
              dword(0x144b5b0) == 0xcccccccc && dword(0x144b5b4) == 0xcccccccc
              && dword(0x144b5b8) == 0xcccccccc && dword(0x144b5bc) == 0xcccccccc
              && dword(0x144b5c0) == 0xcccccccc && dword(0x144b5c4) == 0xcccccccc
              && dword(0x144b5c8) == 0xcccccccc && dword(0x144b5cc) == 0xcccccccc
              && dword(0x144b5d0) == 0xcccccccc && dword(0x144b5d4) == 0xcccccccc
              && dword(0x144b5c8) == 0xcccccccc && dword(0x144b5cc) == 0xcccccccc &&
              (prev(dword(0x144b5b0)) != 0xcccccccc && dword(0x144b5b0) == 0xcccccccc ||
               prev(dword(0x144b5b4)) != 0xcccccccc && dword(0x144b5b4) == 0xcccccccc ||
               prev(dword(0x144b5b8)) != 0xcccccccc && dword(0x144b5b8) == 0xcccccccc ||
               prev(dword(0x144b5bc)) != 0xcccccccc && dword(0x144b5bc) == 0xcccccccc ||
               prev(dword(0x144b5c0)) != 0xcccccccc && dword(0x144b5c0) == 0xcccccccc ||
               prev(dword(0x144b5c4)) != 0xcccccccc && dword(0x144b5c4) == 0xcccccccc ||
               prev(dword(0x144b5c8)) != 0xcccccccc && dword(0x144b5c8) == 0xcccccccc ||
               prev(dword(0x144b5cc)) != 0xcccccccc && dword(0x144b5cc) == 0xcccccccc ||
               prev(dword(0x144b5d0)) != 0xcccccccc && dword(0x144b5d0) == 0xcccccccc ||           
               prev(dword(0x144b5d4)) != 0xcccccccc && dword(0x144b5d4) == 0xcccccccc ||
               prev(dword(0x144b5d8)) != 0xcccccccc && dword(0x144b5d8) == 0xcccccccc ||
               prev(dword(0x144b5dc)) != 0xcccccccc && dword(0x144b5dc) == 0xcccccccc ||
               prev(dword(0x144b5e0)) != 0xcccccccc && dword(0x144b5e0) == 0xcccccccc ||
               prev(dword(0x144b5e4)) != 0xcccccccc && dword(0x144b5e4) == 0xcccccccc ||
               prev(dword(0x144b5e8)) != 0xcccccccc && dword(0x144b5e8) == 0xcccccccc ||
               prev(dword(0x144b5ec)) != 0xcccccccc && dword(0x144b5ec) == 0xcccccccc
              )
)

achievement(
    title = "Rent the Executioner", description = "At Golgollada Gallows rend all enemies equipment then defeat all enemies all levels <= 18, Steal cannot be epuipped ability", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b420) == 0x3f && word(0x144b50c) == 0x1C
              && prior(byte(0x12e5cb5)) == 0 && byte(0x12e5cb5) == 0xFF && word(0x12e5cce) == 0xFF && word(0x12e5cd0) == 0xFF && word(0x12e5cd4) == 0xFF && word(0x12e5cda) == 0xFF
              && word(0x12e5ecc) == 0 && word(0x12e5eb6) == 0xFF && word(0x12e5eb8) == 0xFF && word(0x12e5ebc) == 0xFF && word(0x12e5ec2) == 0xFF
              && word(0x12e60b4) == 0 && word(0x12e609e) == 0xFF && word(0x12e60a0) == 0xFF && word(0x12e60a4) == 0xFF && word(0x12e60aa) == 0xFF
              && word(0x12e629c) == 0 && word(0x12e6286) == 0xFF && word(0x12e6288) == 0xFF && word(0x12e628c) == 0xFF && word(0x12e6292) == 0xFF
              && word(0x12e6484) == 0 && word(0x12e646e) == 0xFF && word(0x12e6470) == 0xFF && word(0x12e6474) == 0xFF && word(0x12e647a) == 0xFF
              && word(0x12e666c) == 0 && word(0x12e6656) == 0xFF && word(0x12e6658) == 0xFF && word(0x12e665c) == 0xFF && word(0x12e6662) == 0xFF
              && word(0x12e6854) == 0 && word(0x12e683e) == 0xFF && word(0x12e6840) == 0xFF && word(0x12e6844) == 0xFF && word(0x12e684a) == 0xFF
              && word(0x12e6a3c) == 0 && word(0x12e6a26) == 0xFF && word(0x12e6a28) == 0xFF && word(0x12e6a2c) == 0xFF && word(0x12e6a32) == 0xFF 
              && byte(0x12e7b46) != 0x0e && byte(0x12e7b47) != 0x0e
              && byte(0x12e7d2e) != 0x0e && byte(0x12e7d2f) != 0x0e
              && byte(0x12e7f16) != 0x0e && byte(0x12e7f17) != 0x0e
              && byte(0x12e80fe) != 0x0e && byte(0x12e80ff) != 0x0e
              && byte(0x12e82e6) != 0x0e && byte(0x12e82e7) != 0x0e
              && dword(0x144b404) > prev(dword(0x144b404))
              && byte(0x12e5cdd) <= 0x12 && byte(0x12e7b5d) <= 0x12 && byte(0x12e7d45) <= 0x12 && byte(0x12e7f2d) <= 0x12 && byte(0x12e8115) <= 0x12 && byte(0x12e82fd) <= 0x12
)

achievement(
    title = "Goodnight Gaffy", description = "At Lionel Gate Complete batte with only Ramza and one other character levels <= 20", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = byte(0x144b420) == 0x0C && word(0x144b50c) == 0x1D
              && word(0x12e5ce4) == 0 && word(0x12e5ecc) == 0 && word(0x12e60b4) == 0 && word(0x12e629c) == 0 && word(0x12e6484) == 0 
              && word(0x12e666c) == 0 && word(0x12e6854) == 0 
              && byte(0x12e7f04) == 0 && byte(0x12e80ec) == 0 && byte(0x12e82d4) == 0
              && dword(0x144b404) > prev(dword(0x144b404))
              && byte(0x12e5cdd) <= 0x14 && byte(0x12e7b5d) <= 0x14 && byte(0x12e7d45) <= 0x14 && byte(0x12e7f2d) <= 0x14 && byte(0x12e8115) <= 0x14 && byte(0x12e82fd) <= 0x14
)