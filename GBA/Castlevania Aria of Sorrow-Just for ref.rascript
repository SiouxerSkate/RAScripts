// Castlevania: Aria of Sorrow
// #ID = 510

achievement(
    title = "Old Bones", points = 3,
    description = "Defeat the Creaking Skull in the Castle Corridor.",
    id = 3074, badge = "116233", published = "10/1/2013 5:37:09 AM", modified = "3/17/2021 3:47:20 AM",
    trigger = byte(0x008010) == 4 && prev(bit1(0x01B3A4)) < bit1(0x01B3A4)
)

achievement(
    title = "Beastmaster", points = 5,
    description = "Defeat the Manticore in the Chapel.",
    id = 3075, badge = "116234", published = "10/1/2013 5:37:15 AM", modified = "3/17/2021 3:47:56 AM",
    trigger = byte(0x008010) == 4 && prev(bit6(0x01B3A6)) < bit6(0x01B3A6)
)

achievement(
    title = "Iron Giant", points = 10,
    description = "Defeat the Great Armor in the Study.",
    id = 3076, badge = "116235", published = "10/1/2013 5:37:20 AM", modified = "3/20/2021 2:55:41 AM",
    trigger = byte(0x008010) == 4 && prev(bit4(0x01B3A7)) < bit4(0x01B3A7)
)

achievement(
    title = "Landslide", points = 10,
    description = "Defeat the Big Golem in the Dance Hall.",
    id = 3077, badge = "116236", published = "10/1/2013 5:37:25 AM", modified = "2/5/2023 3:18:31 PM",
    trigger = byte(0x008010) == 4 && prev(bit5(0x01B3A8)) < bit5(0x01B3A8) && byte(0x00809E) == 3 && byte(0x00809F) ==
               19
)

achievement(
    title = "Hunter Hunted", points = 10,
    description = "Defeat the Headhunter in the Inner Quarters.",
    id = 3078, badge = "116237", published = "10/1/2013 5:37:29 AM", modified = "3/17/2021 3:52:05 AM",
    trigger = byte(0x008010) == 4 && prev(bit2(0x01B3AD)) < bit2(0x01B3AD)
)

achievement(
    title = "Defying Death", points = 10,
    description = "Defeat Death in the Clock Tower.",
    id = 3079, badge = "116238", published = "10/1/2013 5:37:34 AM", modified = "3/17/2021 3:53:24 AM",
    trigger = byte(0x008010) == 4 && prev(bit3(0x01B3AD)) < bit3(0x01B3AD)
)

achievement(
    title = "Amalgamator", points = 10,
    description = "Defeat Legion in the Underground Cemetery.",
    id = 3080, badge = "116239", published = "10/1/2013 5:37:38 AM", modified = "3/17/2021 3:55:34 AM",
    trigger = byte(0x008010) == 4 && prev(bit4(0x01B3AD)) < bit4(0x01B3AD)
)

achievement(
    title = "Evil Eye", points = 10,
    description = "Defeat Balore in the Arena.",
    id = 3081, badge = "116240", published = "10/1/2013 5:37:43 AM", modified = "3/20/2021 2:55:54 AM",
    trigger = byte(0x008010) == 4 && prev(bit5(0x01B3AD)) < bit5(0x01B3AD)
)

achievement(
    title = "False Prophet", points = 10,
    description = "Defeat Graham on the Top Floor.",
    id = 3082, badge = "116241", published = "10/1/2013 5:37:48 AM", modified = "3/17/2021 3:56:57 AM",
    trigger = byte(0x008010) == 4 && prev(bit7(0x01B3AD)) < bit7(0x01B3AD)
)

achievement(
    title = "Raison d'etre", points = 3,
    description = "Watch the normal ending scene.",
    id = 147781, badge = "165215", published = "3/31/2021 7:14:31 PM", modified = "3/31/2021 7:14:31 PM",
    trigger = once(byte(0x01B266) == 0 && prior(dword(0x008088)) == 139591024 && dword(0x008088) == 139603028) && 
              never(prev(dword(0x008088)) != 139603028) && byte(0x008010) == 6
)

achievement(
    title = "J Who?", points = 10,
    description = "Defend yourself against a legendary vampire hunter in the Floating Garden.",
    id = 3083, badge = "116242", published = "10/1/2013 5:37:54 AM", modified = "3/17/2021 4:00:36 AM",
    trigger = byte(0x008010) == 4 && prev(bit6(0x01B3AD)) < bit6(0x01B3AD)
)

achievement(
    title = "Chaotic Disposition", points = 25,
    description = "Defeat the real master of the castle and obtain the game's true ending.",
    id = 3085, badge = "116243", published = "10/1/2013 5:38:03 AM", modified = "3/20/2021 2:56:08 AM",
    trigger = once(byte(0x01B266) == 0 && low4(0x0080A1) == 0 && prior(dword(0x008088)) == 139605548 && dword(0x008088)
               == 139603028) && never(prev(dword(0x008088)) != 139603028) && byte(0x008010) == 6
)

achievement(
    title = "Entropy Distilled", points = 25,
    description = "[No NG+] Earn the game's true ending on Hard difficulty.",
    id = 146962, badge = "163840", published = "3/25/2021 4:41:22 AM", modified = "3/25/2021 4:41:22 AM",
    trigger = once(byte(0x0080A1) == 16 && byte(0x01B266) == 0 && prior(dword(0x008088)) == 139605548 && dword(0x008088)
               == 139603028) && never(prev(dword(0x008088)) != 139603028) && byte(0x008010) == 6
)

achievement(
    title = "Evasive Maneuvers", points = 3,
    description = "Obtain the Grave Keeper soul.",
    id = 3069, badge = "116227", published = "10/1/2013 5:36:42 AM", modified = "3/17/2021 3:24:16 AM",
    trigger = byte(0x008010) == 4 && prev(bit1(0x008360)) < bit1(0x008360)
)

achievement(
    title = "Double Jump", points = 3,
    description = "Obtain the Malphas soul.",
    id = 3071, badge = "116229", published = "10/1/2013 5:36:52 AM", modified = "3/17/2021 3:19:22 AM",
    trigger = byte(0x008010) == 4 && prev(bit3(0x008360)) < bit3(0x008360)
)

achievement(
    title = "Duck and Cover", points = 3,
    description = "Obtain the Skeleton Blaze soul.",
    id = 3068, badge = "116228", published = "10/1/2013 5:36:36 AM", modified = "3/17/2021 3:23:34 AM",
    trigger = byte(0x008010) == 4 && prev(bit4(0x008360)) < bit4(0x008360)
)

achievement(
    title = "Toki wo Tomare!", points = 3,
    description = "Obtain the Galamoth soul.",
    id = 3072, badge = "116231", published = "10/1/2013 5:36:57 AM", modified = "3/17/2021 3:17:08 AM",
    trigger = byte(0x008010) == 4 && prev(bit1(0x008361)) < bit1(0x008361)
)

achievement(
    title = "Concussion", points = 3,
    description = "Obtain the Kicker Skeleton soul.",
    id = 3070, badge = "116230", published = "10/1/2013 5:36:47 AM", modified = "3/5/2023 1:57:39 PM",
    trigger = byte(0x008010) == 4 && high4(0x01B393) > prev(high4(0x01B393)) && byte(0x00809E) == 5 && byte(0x00809F) ==
               5
)

achievement(
    title = "To the Heavens", points = 5,
    description = "Obtain the Hippogryph soul.",
    id = 3073, badge = "116232", published = "10/1/2013 5:37:02 AM", modified = "3/17/2021 3:14:49 AM",
    trigger = byte(0x008010) == 4 && prev(bit5(0x008360)) < bit5(0x008360)
)

achievement(
    title = "Soul Seeker", points = 3,
    description = "Reach level 10.",
    id = 3139, badge = "116244", published = "10/3/2013 4:41:26 AM", modified = "3/17/2021 4:35:34 AM",
    trigger = byte(0x008010) == 4 && (prev(byte(0x01B279)) == 7 || prev(byte(0x01B279)) == 8 || prev(byte(0x01B279)) ==
               9) && byte(0x01B279) >= 10
)

achievement(
    title = "Demon Hunter", points = 5,
    description = "Reach level 20.",
    id = 3138, badge = "116245", published = "10/3/2013 4:41:20 AM", modified = "3/17/2021 4:39:38 AM",
    trigger = byte(0x008010) == 4 && (prev(byte(0x01B279)) == 17 || prev(byte(0x01B279)) == 18 || prev(byte(0x01B279))
               == 19) && byte(0x01B279) >= 20
)

achievement(
    title = "Adept Monster Slayer", points = 10,
    description = "Reach level 30.",
    id = 3137, badge = "116246", published = "10/3/2013 4:41:16 AM", modified = "3/20/2021 2:56:46 AM",
    trigger = byte(0x008010) == 4 && (prev(byte(0x01B279)) == 27 || prev(byte(0x01B279)) == 28 || prev(byte(0x01B279))
               == 29) && byte(0x01B279) >= 30
)

achievement(
    title = "Heir to the Throne", points = 10,
    description = "Reach level 40.",
    id = 3136, badge = "116247", published = "10/3/2013 4:41:12 AM", modified = "3/17/2021 4:43:33 AM",
    trigger = byte(0x008010) == 4 && (prev(byte(0x01B279)) == 37 || prev(byte(0x01B279)) == 38 || prev(byte(0x01B279))
               == 39) && byte(0x01B279) >= 40
)

achievement(
    title = "Master of the Castle", points = 10,
    description = "Reach level 50.",
    id = 3135, badge = "116248", published = "10/3/2013 4:41:08 AM", modified = "3/17/2021 4:45:00 AM",
    trigger = byte(0x008010) == 4 && (prev(byte(0x01B279)) == 47 || prev(byte(0x01B279)) == 48 || prev(byte(0x01B279))
               == 49) && byte(0x01B279) >= 50
)

achievement(
    title = "Life Leech", points = 1,
    description = "Obtain your very first soul.",
    id = 3086, badge = "116252", published = "10/1/2013 6:16:30 AM", modified = "3/20/2021 2:56:23 AM",
    trigger = byte(0x008010) == 4 && prev(low4(0x01B31C)) == 0 && low4(0x01B31C) == 1
)

achievement(
    title = "Bullet Hell", points = 25,
    description = "Absorb every type of Bullet Soul.",
    id = 3144, badge = "116255", published = "10/3/2013 6:36:31 AM", modified = "3/17/2021 6:35:59 AM",
    trigger = never(byte(0x008010) != 4) && measured(tally(55, 
                  once((high4(0x01B31C) + high4(0x01B338)) >= 1), 
                  once((low4(0x01B31C) + low4(0x01B338)) >= 1), 
                  once((high4(0x01B31D) + high4(0x01B339)) >= 1), 
                  once((low4(0x01B31D) + low4(0x01B339)) >= 1), 
                  once((high4(0x01B31E) + high4(0x01B33A)) >= 1), 
                  once((low4(0x01B31E) + low4(0x01B33A)) >= 1), 
                  once((high4(0x01B31F) + high4(0x01B33B)) >= 1), 
                  once((low4(0x01B31F) + low4(0x01B33B)) >= 1), 
                  once((high4(0x01B320) + high4(0x01B33C)) >= 1), 
                  once((low4(0x01B320) + low4(0x01B33C)) >= 1), 
                  once((high4(0x01B321) + high4(0x01B33D)) >= 1), 
                  once((low4(0x01B321) + low4(0x01B33D)) >= 1), 
                  once((high4(0x01B322) + high4(0x01B33E)) >= 1), 
                  once((low4(0x01B322) + low4(0x01B33E)) >= 1), 
                  once((high4(0x01B323) + high4(0x01B33F)) >= 1), 
                  once((low4(0x01B323) + low4(0x01B33F)) >= 1), 
                  once((high4(0x01B324) + high4(0x01B340)) >= 1), 
                  once((low4(0x01B324) + low4(0x01B340)) >= 1), 
                  once((high4(0x01B325) + high4(0x01B341)) >= 1), 
                  once((low4(0x01B325) + low4(0x01B341)) >= 1), 
                  once((high4(0x01B326) + high4(0x01B342)) >= 1), 
                  once((low4(0x01B326) + low4(0x01B342)) >= 1), 
                  once((high4(0x01B327) + high4(0x01B343)) >= 1), 
                  once((low4(0x01B327) + low4(0x01B343)) >= 1), 
                  once((high4(0x01B328) + high4(0x01B344)) >= 1), 
                  once((low4(0x01B328) + low4(0x01B344)) >= 1), 
                  once((high4(0x01B329) + high4(0x01B345)) >= 1), 
                  once((low4(0x01B329) + low4(0x01B345)) >= 1), 
                  once((high4(0x01B32A) + high4(0x01B346)) >= 1), 
                  once((low4(0x01B32A) + low4(0x01B346)) >= 1), 
                  once((high4(0x01B32B) + high4(0x01B347)) >= 1), 
                  once((low4(0x01B32B) + low4(0x01B347)) >= 1), 
                  once((high4(0x01B32C) + high4(0x01B348)) >= 1), 
                  once((low4(0x01B32C) + low4(0x01B348)) >= 1), 
                  once((high4(0x01B32D) + high4(0x01B349)) >= 1), 
                  once((low4(0x01B32D) + low4(0x01B349)) >= 1), 
                  once((high4(0x01B32E) + high4(0x01B34A)) >= 1), 
                  once((low4(0x01B32E) + low4(0x01B34A)) >= 1), 
                  once((high4(0x01B32F) + high4(0x01B34B)) >= 1), 
                  once((low4(0x01B32F) + low4(0x01B34B)) >= 1), 
                  once((high4(0x01B330) + high4(0x01B34C)) >= 1), 
                  once((low4(0x01B330) + low4(0x01B34C)) >= 1), 
                  once((high4(0x01B331) + high4(0x01B34D)) >= 1), 
                  once((low4(0x01B331) + low4(0x01B34D)) >= 1), 
                  once((high4(0x01B332) + high4(0x01B34E)) >= 1), 
                  once((low4(0x01B332) + low4(0x01B34E)) >= 1), 
                  once((high4(0x01B333) + high4(0x01B34F)) >= 1), 
                  once((low4(0x01B333) + low4(0x01B34F)) >= 1), 
                  once((high4(0x01B334) + high4(0x01B350)) >= 1), 
                  once((low4(0x01B334) + low4(0x01B350)) >= 1), 
                  once((high4(0x01B335) + high4(0x01B351)) >= 1), 
                  once((low4(0x01B335) + low4(0x01B351)) >= 1), 
                  once((high4(0x01B336) + high4(0x01B352)) >= 1), 
                  once((low4(0x01B336) + low4(0x01B352)) >= 1), 
                  once((low4(0x01B337) + low4(0x01B353)) >= 1)
              ), when=((prev(high4(0x01B31C)) +
               prev(high4(0x01B338))) == 0) || ((prev(low4(0x01B31C)) + prev(low4(0x01B338))) == 0) ||
               ((prev(high4(0x01B31D)) + prev(high4(0x01B339))) == 0) || ((prev(low4(0x01B31D)) + prev(low4(0x01B339)))
               == 0) || ((prev(high4(0x01B31E)) + prev(high4(0x01B33A))) == 0) || ((prev(low4(0x01B31E)) +
               prev(low4(0x01B33A))) == 0) || ((prev(high4(0x01B31F)) + prev(high4(0x01B33B))) == 0) ||
               ((prev(low4(0x01B31F)) + prev(low4(0x01B33B))) == 0) || ((prev(high4(0x01B320)) + prev(high4(0x01B33C)))
               == 0) || ((prev(low4(0x01B320)) + prev(low4(0x01B33C))) == 0) || ((prev(high4(0x01B321)) +
               prev(high4(0x01B33D))) == 0) || ((prev(low4(0x01B321)) + prev(low4(0x01B33D))) == 0) ||
               ((prev(high4(0x01B322)) + prev(high4(0x01B33E))) == 0) || ((prev(low4(0x01B322)) + prev(low4(0x01B33E)))
               == 0) || ((prev(high4(0x01B323)) + prev(high4(0x01B33F))) == 0) || ((prev(low4(0x01B323)) +
               prev(low4(0x01B33F))) == 0) || ((prev(high4(0x01B324)) + prev(high4(0x01B340))) == 0) ||
               ((prev(low4(0x01B324)) + prev(low4(0x01B340))) == 0) || ((prev(high4(0x01B325)) + prev(high4(0x01B341)))
               == 0) || ((prev(low4(0x01B325)) + prev(low4(0x01B341))) == 0) || ((prev(high4(0x01B326)) +
               prev(high4(0x01B342))) == 0) || ((prev(low4(0x01B326)) + prev(low4(0x01B342))) == 0) ||
               ((prev(high4(0x01B327)) + prev(high4(0x01B343))) == 0) || ((prev(low4(0x01B327)) + prev(low4(0x01B343)))
               == 0) || ((prev(high4(0x01B328)) + prev(high4(0x01B344))) == 0) || ((prev(low4(0x01B328)) +
               prev(low4(0x01B344))) == 0) || ((prev(high4(0x01B329)) + prev(high4(0x01B345))) == 0) ||
               ((prev(low4(0x01B329)) + prev(low4(0x01B345))) == 0) || ((prev(high4(0x01B32A)) + prev(high4(0x01B346)))
               == 0) || ((prev(low4(0x01B32A)) + prev(low4(0x01B346))) == 0) || ((prev(high4(0x01B32B)) +
               prev(high4(0x01B347))) == 0) || ((prev(low4(0x01B32B)) + prev(low4(0x01B347))) == 0) ||
               ((prev(high4(0x01B32C)) + prev(high4(0x01B348))) == 0) || ((prev(low4(0x01B32C)) + prev(low4(0x01B348)))
               == 0) || ((prev(high4(0x01B32D)) + prev(high4(0x01B349))) == 0) || ((prev(low4(0x01B32D)) +
               prev(low4(0x01B349))) == 0) || ((prev(high4(0x01B32E)) + prev(high4(0x01B34A))) == 0) ||
               ((prev(low4(0x01B32E)) + prev(low4(0x01B34A))) == 0) || ((prev(high4(0x01B32F)) + prev(high4(0x01B34B)))
               == 0) || ((prev(low4(0x01B32F)) + prev(low4(0x01B34B))) == 0) || ((prev(high4(0x01B330)) +
               prev(high4(0x01B34C))) == 0) || ((prev(low4(0x01B330)) + prev(low4(0x01B34C))) == 0) ||
               ((prev(high4(0x01B331)) + prev(high4(0x01B34D))) == 0) || ((prev(low4(0x01B331)) + prev(low4(0x01B34D)))
               == 0) || ((prev(high4(0x01B332)) + prev(high4(0x01B34E))) == 0) || ((prev(low4(0x01B332)) +
               prev(low4(0x01B34E))) == 0) || ((prev(high4(0x01B333)) + prev(high4(0x01B34F))) == 0) ||
               ((prev(low4(0x01B333)) + prev(low4(0x01B34F))) == 0) || ((prev(high4(0x01B334)) + prev(high4(0x01B350)))
               == 0) || ((prev(low4(0x01B334)) + prev(low4(0x01B350))) == 0) || ((prev(high4(0x01B335)) +
               prev(high4(0x01B351))) == 0) || ((prev(low4(0x01B335)) + prev(low4(0x01B351))) == 0) ||
               ((prev(high4(0x01B336)) + prev(high4(0x01B352))) == 0) || ((prev(low4(0x01B336)) + prev(low4(0x01B352)))
               == 0) || (prev(low4(0x01B337)) + prev(low4(0x01B353))) == 0)
)

achievement(
    title = "Guardian Angels", points = 25,
    description = "Absorb every type of Guardian Soul.",
    id = 3157, badge = "116254", published = "10/4/2013 5:30:33 AM", modified = "3/17/2021 6:09:38 AM",
    trigger = never(byte(0x008010) != 4) && measured(tally(24, 
                  once((high4(0x01B354) + high4(0x01B361)) >= 1), 
                  once((low4(0x01B354) + low4(0x01B361)) >= 1), 
                  once((high4(0x01B355) + high4(0x01B362)) >= 1), 
                  once((low4(0x01B355) + low4(0x01B362)) >= 1), 
                  once((high4(0x01B356) + high4(0x01B363)) >= 1), 
                  once((low4(0x01B356) + low4(0x01B363)) >= 1), 
                  once((high4(0x01B357) + high4(0x01B364)) >= 1), 
                  once((low4(0x01B357) + low4(0x01B364)) >= 1), 
                  once((high4(0x01B358) + high4(0x01B365)) >= 1), 
                  once((low4(0x01B358) + low4(0x01B365)) >= 1), 
                  once((high4(0x01B359) + high4(0x01B366)) >= 1), 
                  once((low4(0x01B359) + low4(0x01B366)) >= 1), 
                  once((high4(0x01B35A) + high4(0x01B367)) >= 1), 
                  once((low4(0x01B35A) + low4(0x01B367)) >= 1), 
                  once((high4(0x01B35B) + high4(0x01B368)) >= 1), 
                  once((low4(0x01B35B) + low4(0x01B368)) >= 1), 
                  once((high4(0x01B35C) + high4(0x01B369)) >= 1), 
                  once((low4(0x01B35C) + low4(0x01B369)) >= 1), 
                  once((high4(0x01B35D) + high4(0x01B36A)) >= 1), 
                  once((low4(0x01B35D) + low4(0x01B36A)) >= 1), 
                  once((high4(0x01B35E) + high4(0x01B36B)) >= 1), 
                  once((low4(0x01B35E) + low4(0x01B36B)) >= 1), 
                  once((high4(0x01B35F) + high4(0x01B36C)) >= 1), 
                  once((low4(0x01B35F) + low4(0x01B36C)) >= 1)
              ), when=((prev(high4(0x01B354)) +
               prev(high4(0x01B361))) == 0) || ((prev(low4(0x01B354)) + prev(low4(0x01B361))) == 0) ||
               ((prev(high4(0x01B355)) + prev(high4(0x01B362))) == 0) || ((prev(low4(0x01B355)) + prev(low4(0x01B362)))
               == 0) || ((prev(high4(0x01B356)) + prev(high4(0x01B363))) == 0) || ((prev(low4(0x01B356)) +
               prev(low4(0x01B363))) == 0) || ((prev(high4(0x01B357)) + prev(high4(0x01B364))) == 0) ||
               ((prev(low4(0x01B357)) + prev(low4(0x01B364))) == 0) || ((prev(high4(0x01B358)) + prev(high4(0x01B365)))
               == 0) || ((prev(low4(0x01B358)) + prev(low4(0x01B365))) == 0) || ((prev(high4(0x01B359)) +
               prev(high4(0x01B366))) == 0) || ((prev(low4(0x01B359)) + prev(low4(0x01B366))) == 0) ||
               ((prev(high4(0x01B35A)) + prev(high4(0x01B367))) == 0) || ((prev(low4(0x01B35A)) + prev(low4(0x01B367)))
               == 0) || ((prev(high4(0x01B35B)) + prev(high4(0x01B368))) == 0) || ((prev(low4(0x01B35B)) +
               prev(low4(0x01B368))) == 0) || ((prev(high4(0x01B35C)) + prev(high4(0x01B369))) == 0) ||
               ((prev(low4(0x01B35C)) + prev(low4(0x01B369))) == 0) || ((prev(high4(0x01B35D)) + prev(high4(0x01B36A)))
               == 0) || ((prev(low4(0x01B35D)) + prev(low4(0x01B36A))) == 0) || ((prev(high4(0x01B35E)) +
               prev(high4(0x01B36B))) == 0) || ((prev(low4(0x01B35E)) + prev(low4(0x01B36B))) == 0) ||
               ((prev(high4(0x01B35F)) + prev(high4(0x01B36C))) == 0) || (prev(low4(0x01B35F)) + prev(low4(0x01B36C)))
               == 0)
)

achievement(
    title = "Enchanter", points = 25,
    description = "Absorb every type of Enchanted Soul.",
    id = 3156, badge = "116253", published = "10/4/2013 5:11:19 AM", modified = "3/17/2021 5:33:11 AM",
    trigger = never(byte(0x008010) != 4) && measured(tally(35, 
                  once((high4(0x01B36E) + high4(0x01B380)) >= 1), 
                  once((low4(0x01B36E) + low4(0x01B380)) >= 1), 
                  once((high4(0x01B36F) + high4(0x01B381)) >= 1), 
                  once((low4(0x01B36F) + low4(0x01B381)) >= 1), 
                  once((high4(0x01B370) + high4(0x01B382)) >= 1), 
                  once((low4(0x01B370) + low4(0x01B382)) >= 1), 
                  once((high4(0x01B371) + high4(0x01B383)) >= 1), 
                  once((low4(0x01B371) + low4(0x01B383)) >= 1), 
                  once((high4(0x01B372) + high4(0x01B384)) >= 1), 
                  once((low4(0x01B372) + low4(0x01B384)) >= 1), 
                  once((high4(0x01B373) + high4(0x01B385)) >= 1), 
                  once((low4(0x01B373) + low4(0x01B385)) >= 1), 
                  once((high4(0x01B374) + high4(0x01B386)) >= 1), 
                  once((low4(0x01B374) + low4(0x01B386)) >= 1), 
                  once((high4(0x01B375) + high4(0x01B387)) >= 1), 
                  once((low4(0x01B375) + low4(0x01B387)) >= 1), 
                  once((high4(0x01B376) + high4(0x01B388)) >= 1), 
                  once((low4(0x01B376) + low4(0x01B388)) >= 1), 
                  once((high4(0x01B377) + high4(0x01B389)) >= 1), 
                  once((low4(0x01B377) + low4(0x01B389)) >= 1), 
                  once((high4(0x01B378) + high4(0x01B38A)) >= 1), 
                  once((low4(0x01B378) + low4(0x01B38A)) >= 1), 
                  once((high4(0x01B379) + high4(0x01B38B)) >= 1), 
                  once((low4(0x01B379) + low4(0x01B38B)) >= 1), 
                  once((high4(0x01B37A) + high4(0x01B38C)) >= 1), 
                  once((low4(0x01B37A) + low4(0x01B38C)) >= 1), 
                  once((high4(0x01B37B) + high4(0x01B38D)) >= 1), 
                  once((low4(0x01B37B) + low4(0x01B38D)) >= 1), 
                  once((high4(0x01B37C) + high4(0x01B38E)) >= 1), 
                  once((low4(0x01B37C) + low4(0x01B38E)) >= 1), 
                  once((high4(0x01B37D) + high4(0x01B38F)) >= 1), 
                  once((low4(0x01B37D) + low4(0x01B38F)) >= 1), 
                  once((high4(0x01B37E) + high4(0x01B390)) >= 1), 
                  once((low4(0x01B37E) + low4(0x01B390)) >= 1), 
                  once((low4(0x01B37F) + low4(0x01B391)) >= 1)
              ), when=((prev(high4(0x01B36E)) +
               prev(high4(0x01B380))) == 0) || ((prev(low4(0x01B36E)) + prev(low4(0x01B380))) == 0) ||
               ((prev(high4(0x01B36F)) + prev(high4(0x01B381))) == 0) || ((prev(low4(0x01B36F)) + prev(low4(0x01B381)))
               == 0) || ((prev(high4(0x01B370)) + prev(high4(0x01B382))) == 0) || ((prev(low4(0x01B370)) +
               prev(low4(0x01B382))) == 0) || ((prev(high4(0x01B371)) + prev(high4(0x01B383))) == 0) ||
               ((prev(low4(0x01B371)) + prev(low4(0x01B383))) == 0) || ((prev(high4(0x01B372)) + prev(high4(0x01B384)))
               == 0) || ((prev(low4(0x01B372)) + prev(low4(0x01B384))) == 0) || ((prev(high4(0x01B373)) +
               prev(high4(0x01B385))) == 0) || ((prev(low4(0x01B373)) + prev(low4(0x01B385))) == 0) ||
               ((prev(high4(0x01B374)) + prev(high4(0x01B386))) == 0) || ((prev(low4(0x01B374)) + prev(low4(0x01B386)))
               == 0) || ((prev(high4(0x01B375)) + prev(high4(0x01B387))) == 0) || ((prev(low4(0x01B375)) +
               prev(low4(0x01B387))) == 0) || ((prev(high4(0x01B376)) + prev(high4(0x01B388))) == 0) ||
               ((prev(low4(0x01B376)) + prev(low4(0x01B388))) == 0) || ((prev(high4(0x01B377)) + prev(high4(0x01B389)))
               == 0) || ((prev(low4(0x01B377)) + prev(low4(0x01B389))) == 0) || ((prev(high4(0x01B378)) +
               prev(high4(0x01B38A))) == 0) || ((prev(low4(0x01B378)) + prev(low4(0x01B38A))) == 0) ||
               ((prev(high4(0x01B379)) + prev(high4(0x01B38B))) == 0) || ((prev(low4(0x01B379)) + prev(low4(0x01B38B)))
               == 0) || ((prev(high4(0x01B37A)) + prev(high4(0x01B38C))) == 0) || ((prev(low4(0x01B37A)) +
               prev(low4(0x01B38C))) == 0) || ((prev(high4(0x01B37B)) + prev(high4(0x01B38D))) == 0) ||
               ((prev(low4(0x01B37B)) + prev(low4(0x01B38D))) == 0) || ((prev(high4(0x01B37C)) + prev(high4(0x01B38E)))
               == 0) || ((prev(low4(0x01B37C)) + prev(low4(0x01B38E))) == 0) || ((prev(high4(0x01B37D)) +
               prev(high4(0x01B38F))) == 0) || ((prev(low4(0x01B37D)) + prev(low4(0x01B38F))) == 0) ||
               ((prev(high4(0x01B37E)) + prev(high4(0x01B390))) == 0) || ((prev(low4(0x01B37E)) + prev(low4(0x01B390)))
               == 0) || (prev(low4(0x01B37F)) + prev(low4(0x01B391))) == 0)
)

achievement(
    title = "Open House", points = 10,
    description = "Explore Dracula's Castle in its entirety.",
    id = 145662, badge = "162609", published = "3/16/2021 8:52:49 PM", modified = "3/16/2021 8:52:49 PM",
    trigger = (prev(bit5(0x0080BA)) + prev(bit4(0x0080BA)) + prev(bit3(0x0080BA)) + prev(bit5(0x0080C2)) +
               prev(bit4(0x0080C2)) + prev(bit3(0x0080C2)) + prev(bit2(0x0080C3)) + prev(bit6(0x0080C9)) +
               prev(bit5(0x0080C9)) + prev(bit4(0x0080C9)) + prev(bit5(0x0080CA)) + prev(bit4(0x0080CA)) +
               prev(bit3(0x0080CA)) + prev(bit6(0x0080D1)) + prev(bit5(0x0080D1)) + prev(bit4(0x0080D1)) +
               prev(bit3(0x0080D3)) + prev(bit2(0x0080D3)) + prev(bit1(0x0080D3)) + prev(bit0(0x0080D3)) +
               prev(bit7(0x0080D8)) + prev(bit6(0x0080D8)) + prev(bit5(0x0080D8)) + prev(bit6(0x0080D9)) +
               prev(bit5(0x0080D9)) + prev(bit4(0x0080D9)) + prev(bit0(0x0080D9)) + prev(bitcount(0x0080DB)) +
               prev(bit7(0x0080E0)) + prev(bit6(0x0080E0)) + prev(bit5(0x0080E0)) + prev(bit0(0x0080E1)) +
               prev(bit4(0x0080E2)) + prev(bit3(0x0080E2)) + prev(bit2(0x0080E2)) + prev(bitcount(0x0080E3)) +
               prev(bit7(0x0080E8)) + prev(bit6(0x0080E8)) + prev(bit5(0x0080E8)) + prev(bit0(0x0080E9)) +
               prev(bit4(0x0080EA)) + prev(bit3(0x0080EA)) + prev(bit2(0x0080EA)) + prev(bitcount(0x0080EB)) +
               prev(bit7(0x0080F0)) + prev(bit6(0x0080F0)) + prev(bit5(0x0080F0)) + prev(bit0(0x0080F1)) +
               prev(bit4(0x0080F2)) + prev(bit3(0x0080F2)) + prev(bit2(0x0080F2)) + prev(bitcount(0x0080F3)) +
               prev(bit4(0x0080FA)) + prev(bit3(0x0080FA)) + prev(bit2(0x0080FA)) + prev(bitcount(0x0080FB)) +
               prev(bit5(0x008101)) + prev(bit4(0x008101)) + prev(bit4(0x008102)) + prev(bit3(0x008102)) +
               prev(bit2(0x008102)) + prev(bitcount(0x008103)) + prev(bit7(0x008108)) + prev(bit6(0x008108)) +
               prev(bit7(0x008109)) + prev(bit5(0x008109)) + prev(bit4(0x008109)) + prev(bitcount(0x00810A)) +
               prev(bitcount(0x00810B)) + prev(bit7(0x008110)) + prev(bit6(0x008110)) + prev(bit5(0x008110)) +
               prev(bitcount(0x008111)) + prev(bitcount(0x008112)) + prev(bitcount(0x008113)) + prev(bit7(0x008118)) +
               prev(bit6(0x008118)) + prev(bit5(0x008118)) + prev(bit5(0x008119)) + prev(bit4(0x008119)) +
               prev(bit0(0x008119)) + prev(bitcount(0x00811A)) + prev(bitcount(0x00811B)) + prev(bit7(0x008120)) +
               prev(bit6(0x008120)) + prev(bit5(0x008120)) + prev(bit4(0x008120)) + prev(bitcount(0x008121)) +
               prev(bitcount(0x008122)) + prev(bitcount(0x008123)) + prev(bitcount(0x008128)) + prev(bitcount(0x008129))
               + prev(bitcount(0x00812A)) + prev(bitcount(0x00812B)) + prev(bitcount(0x008130)) +
               prev(bitcount(0x008131)) + prev(bitcount(0x008132)) + prev(bitcount(0x008133)) + prev(bit7(0x008138)) +
               prev(bit6(0x008138)) + prev(bitcount(0x008139)) + prev(bitcount(0x00813A)) + prev(bitcount(0x00813B)) +
               prev(bit7(0x008140)) + prev(bit6(0x008140)) + prev(bit4(0x008140)) + prev(bit3(0x008140)) +
               prev(bitcount(0x008141)) + prev(bit7(0x008142)) + prev(bit0(0x008142)) + prev(bitcount(0x008143)) +
               prev(bit7(0x008148)) + prev(bit6(0x008148)) + prev(bit4(0x008148)) + prev(bit3(0x008148)) +
               prev(bit5(0x008149)) + prev(bit4(0x008149)) + prev(bit1(0x008149)) + prev(bit0(0x008149)) +
               prev(bit7(0x00814A)) + prev(bit0(0x00814A)) + prev(bitcount(0x00814B)) + prev(bitcount(0x008150)) +
               prev(bitcount(0x008151)) + prev(bit7(0x008152)) + prev(bit0(0x008152)) + prev(bitcount(0x008153)) +
               prev(bitcount(0x008158)) + prev(bit5(0x008159)) + prev(bit4(0x008159)) + prev(bitcount(0x00815A)) +
               prev(bitcount(0x00815B)) + prev(bitcount(0x008160)) + prev(bitcount(0x008161)) + prev(bit4(0x008162)) +
               prev(bit1(0x008162)) + prev(bit0(0x008162)) + prev(bit7(0x008163)) + prev(bit6(0x008163)) +
               prev(bit7(0x008168)) + prev(bit6(0x008168)) + prev(bit5(0x008168)) + prev(bitcount(0x008169)) +
               prev(bitcount(0x00816A)) + prev(bitcount(0x00816B)) + prev(bit7(0x008170)) + prev(bit6(0x008170)) +
               prev(bit5(0x008170)) + prev(bitcount(0x008171)) + prev(bit7(0x008172)) + prev(bitcount(0x008173)) +
               prev(bit7(0x008179)) + prev(bitcount(0x00817A)) + prev(bitcount(0x00817B)) + prev(bitcount(0x008180)) +
               prev(bitcount(0x008181)) + prev(bitcount(0x008182)) + prev(bitcount(0x008183)) + prev(bitcount(0x008188))
               + prev(bit1(0x008189)) + prev(bit0(0x008189)) + prev(bit1(0x00818A)) + prev(bit7(0x00818B)) +
               prev(bit6(0x00818B)) + prev(bit3(0x00818B)) + prev(bit2(0x00818B)) + prev(bit5(0x008190)) +
               prev(bit4(0x008190)) + prev(bit3(0x008190)) + prev(bit1(0x008191)) + prev(bit2(0x008192)) +
               prev(bit1(0x008192)) + prev(bit7(0x008193)) + prev(bit6(0x008193)) + prev(bit2(0x008193)) +
               prev(bitcount(0x008198)) + prev(bit3(0x008199)) + prev(bit2(0x008199)) + prev(bit1(0x008199)) +
               prev(bit0(0x008199)) + prev(bit7(0x00819A)) + prev(bit6(0x00819A)) + prev(bit1(0x00819A)) +
               prev(bit0(0x00819A)) + prev(bitcount(0x00819B)) + prev(bitcount(0x0081A0)) + prev(bit3(0x0081A1)) +
               prev(bit2(0x0081A1)) + prev(bit1(0x0081A1)) + prev(bit0(0x0081A1)) + prev(bit7(0x0081A2)) +
               prev(bit6(0x0081A2)) + prev(bit1(0x0081A2)) + prev(bitcount(0x0081A3)) + prev(bit7(0x0081A8)) +
               prev(bit6(0x0081A8)) + prev(bit5(0x0081A8)) + prev(bit4(0x0081A8)) + prev(bit3(0x0081A9)) +
               prev(bit2(0x0081A9)) + prev(bit1(0x0081A9)) + prev(bit0(0x0081A9)) + prev(bitcount(0x0081AA)) +
               prev(bit2(0x0081AB)) + prev(bit1(0x0081AB)) + prev(bit0(0x0081AB)) + prev(bitcount(0x0081B0)) +
               prev(bitcount(0x0081B1)) + prev(bitcount(0x0081B2)) + prev(bitcount(0x0081B3)) + prev(bit7(0x0081B9)) +
               prev(bit6(0x0081B9)) + prev(bit0(0x0081BA)) + prev(bitcount(0x0081C2)) + prev(bitcount(0x0081C3)) +
               prev(bit7(0x0081C9)) + prev(bitcount(0x0081CA)) + prev(bitcount(0x0081CB)) + prev(bit3(0x008200)) +
               prev(bit2(0x008200)) + prev(bit1(0x008200)) + prev(bit3(0x008208)) + prev(bit2(0x008208)) +
               prev(bit1(0x008208)) + prev(bit3(0x008210)) + prev(bit2(0x008210)) + prev(bit1(0x008210)) +
               prev(bitcount(0x008220)) + prev(bit5(0x008228)) + prev(bit4(0x008228)) + prev(bit3(0x008228)) +
               prev(bit3(0x008229)) + prev(bit2(0x008229)) + prev(bit1(0x008229)) + prev(bitcount(0x008230)) +
               prev(bit3(0x008231)) + prev(bit2(0x008231)) + prev(bit1(0x008231)) + prev(bit0(0x008231)) +
               prev(bit5(0x008238)) + prev(bit4(0x008238)) + prev(bit3(0x008238)) + prev(bit3(0x008239)) +
               prev(bit2(0x008239)) + prev(bit1(0x008239)) + prev(bit5(0x008240)) + prev(bit4(0x008240)) +
               prev(bit3(0x008240)) + prev(bit7(0x008241)) + prev(bit6(0x008241)) + prev(bit0(0x008242)) +
               prev(bitcount(0x008248)) + prev(bit7(0x008249)) + prev(bit6(0x008249)) + prev(bit0(0x00824A)) +
               prev(bitcount(0x008250)) + prev(bit7(0x008251)) + prev(bit6(0x008251)) + prev(bit0(0x008252)) +
               prev(bitcount(0x008258)) + prev(bitcount(0x008260)) + prev(bit6(0x008261)) + prev(bit5(0x008261)) +
               prev(bit4(0x008261)) + prev(bit3(0x008261)) + prev(bit7(0x008268)) + prev(bit6(0x008268)) +
               prev(bit2(0x008268)) + prev(bit1(0x008268)) + prev(bit6(0x008269)) + prev(bit5(0x008269)) +
               prev(bit4(0x008269)) + prev(bit3(0x008269)) + prev(bitcount(0x008270)) + prev(bitcount(0x008271)) +
               prev(bit1(0x008272)) + prev(bit0(0x008272)) + prev(bitcount(0x008278)) + prev(bitcount(0x008279)) +
               prev(bit1(0x00827A)) + prev(bit0(0x00827A)) + prev(bit7(0x008280)) + prev(bit6(0x008280)) +
               prev(bit5(0x008280)) + prev(bitcount(0x008281)) + prev(bit1(0x008282)) + prev(bit0(0x008282)) +
               prev(bitcount(0x008288)) + prev(bitcount(0x008289)) + prev(bit1(0x00828A)) + prev(bit0(0x00828A)) +
               prev(bitcount(0x008291)) + prev(bit1(0x008292)) + prev(bit0(0x008292)) + prev(bit2(0x008298)) +
               prev(bitcount(0x008299)) + prev(bit1(0x00829A)) + prev(bit0(0x00829A)) + prev(bit2(0x0082A0)) +
               prev(bitcount(0x0082A1)) + prev(bit1(0x0082A2)) + prev(bit0(0x0082A2)) + prev(bitcount(0x0082A8)) +
               prev(bitcount(0x0082A9)) + prev(bit3(0x0082B0)) + prev(bit2(0x0082B0)) + prev(bit1(0x0082B0)) +
               prev(bitcount(0x0082B1)) + prev(bit0(0x0082B2)) + prev(bit7(0x0082B8)) + prev(bit3(0x0082B8)) +
               prev(bit2(0x0082B8)) + prev(bit1(0x0082B8)) + prev(bitcount(0x0082B9)) + prev(bit0(0x0082BA)) +
               prev(bit3(0x0082C0)) + prev(bit1(0x0082C0)) + prev(bit0(0x0082C0)) + prev(bitcount(0x0082C1)) +
               prev(bit0(0x0082C2)) + prev(bit7(0x0082C8)) + prev(bit4(0x0082C8)) + prev(bit3(0x0082C8)) +
               prev(bitcount(0x0082C9)) + prev(bit0(0x0082CA)) + prev(bit7(0x0082D0)) + prev(bit6(0x0082D0)) +
               prev(bit0(0x0082D0)) + prev(bitcount(0x0082D1)) + prev(bit0(0x0082D2)) + prev(bit6(0x0082D8)) +
               prev(bitcount(0x0082E0)) + prev(bit3(0x0082E1)) + prev(bit2(0x0082E1)) + prev(bit1(0x0082E1)) +
               prev(bit0(0x0082E1)) + prev(bit5(0x0082E9)) + prev(bit4(0x0082E9)) + prev(bit3(0x0082E9)) +
               prev(bitcount(0x0082F1)) + prev(bit6(0x0082F8)) + prev(bit5(0x0082F8)) + prev(bit6(0x0082F9)) +
               prev(bit7(0x008300)) + prev(bit6(0x008300)) + prev(bit5(0x008300)) + prev(bit0(0x008300)) +
               prev(bitcount(0x008301)) + prev(bit1(0x008308)) + prev(bit0(0x008308)) - prev(bit7(0x0080DB)) -
               prev(bit6(0x0080DB)) - prev(bit7(0x0080E3)) - prev(bit6(0x0080E3)) - prev(bit7(0x0080EB)) -
               prev(bit6(0x0080EB)) - prev(bit7(0x0080FB)) - prev(bit6(0x0080FB)) - prev(bit7(0x008103)) -
               prev(bit6(0x008103)) - prev(bit7(0x00810A)) - prev(bit3(0x008111)) - prev(bit2(0x008111)) -
               prev(bit1(0x008111)) - prev(bit7(0x008112)) - prev(bit7(0x00811A)) - prev(bit1(0x00811B)) -
               prev(bit0(0x00811B)) - prev(bit6(0x008121)) - prev(bit3(0x008121)) - prev(bit2(0x008121)) -
               prev(bit7(0x008123)) - prev(bit6(0x008123)) - prev(bit2(0x008128)) - prev(bit1(0x008128)) -
               prev(bit0(0x008128)) - prev(bit7(0x00812A)) - prev(bit7(0x00812B)) - prev(bit6(0x00812B)) -
               prev(bit2(0x008130)) - prev(bit1(0x008130)) - prev(bit0(0x008130)) - prev(bit7(0x008131)) -
               prev(bit6(0x008131)) - prev(bit1(0x008132)) - prev(bit0(0x008132)) - prev(bit7(0x008133)) -
               prev(bit6(0x008133)) - prev(bit7(0x008139)) - prev(bit6(0x008139)) - prev(bit7(0x008141)) -
               prev(bit6(0x008141)) - prev(bit7(0x008143)) - prev(bit6(0x008143)) - prev(bit5(0x008143)) -
               prev(bit7(0x00814B)) - prev(bit6(0x00814B)) - prev(bit5(0x00814B)) - prev(bit5(0x008150)) -
               prev(bit2(0x008150)) - prev(bit7(0x008151)) - prev(bit6(0x008151)) - prev(bit3(0x008151)) -
               prev(bit7(0x008153)) - prev(bit6(0x008153)) - prev(bit5(0x008153)) - prev(bit7(0x008158)) -
               prev(bit6(0x008158)) - prev(bit5(0x008158)) - prev(bit3(0x00815A)) - prev(bit2(0x00815A)) -
               prev(bit1(0x00815A)) - prev(bit7(0x00815B)) - prev(bit6(0x00815B)) - prev(bit6(0x008169)) -
               prev(bit3(0x008169)) - prev(bit2(0x008169)) - prev(bit5(0x008173)) - prev(bit4(0x008173)) -
               prev(bit5(0x00817B)) - prev(bit4(0x00817B)) - prev(bit2(0x008180)) - prev(bit1(0x008180)) -
               prev(bit0(0x008180)) - prev(bit5(0x008181)) - prev(bit4(0x008181)) - prev(bit3(0x008181)) -
               prev(bit4(0x008183)) - prev(bit3(0x008183)) - prev(bit2(0x008188)) - prev(bit1(0x008188)) -
               prev(bit0(0x008188)) - prev(bit2(0x008198)) - prev(bit1(0x008198)) - prev(bit0(0x008198)) -
               prev(bit5(0x00819B)) - prev(bit4(0x00819B)) - prev(bit1(0x0081A0)) - prev(bit0(0x0081A0)) -
               prev(bit0(0x0081AA)) - prev(bit0(0x0081B0)) - prev(bit7(0x0081B3)) - prev(bit6(0x0081B3)) -
               prev(bit2(0x0081C2)) - prev(bit1(0x0081C2)) - prev(bit7(0x008220)) - prev(bit1(0x008220)) -
               prev(bit0(0x008220)) - prev(bit7(0x008248)) - prev(bit1(0x008248)) - prev(bit0(0x008248)) -
               prev(bit0(0x008250)) - prev(bit0(0x008258)) - prev(bit0(0x008260)) - prev(bit0(0x008270)) -
               prev(bit2(0x008271)) - prev(bit1(0x008271)) - prev(bit0(0x008271)) - prev(bit2(0x008279)) -
               prev(bit1(0x008279)) - prev(bit0(0x008288)) - prev(bit1(0x008289)) - prev(bit0(0x008289)) -
               prev(bit1(0x008291)) - prev(bit0(0x008291)) - prev(bit7(0x0082A8)) - prev(bit6(0x0082A8)) -
               prev(bit0(0x0082A9)) - prev(bit2(0x0082B1)) - prev(bit1(0x0082B1)) - prev(bit0(0x0082B1)) -
               prev(bit7(0x0082F1)) - prev(bit1(0x0082F1)) - prev(bit0(0x0082F1)) - prev(bit7(0x008301))) >= 844 && 
              measured((bit5(0x0080BA) + bit4(0x0080BA) + bit3(0x0080BA) + bit5(0x0080C2) + bit4(0x0080C2) +
               bit3(0x0080C2) + bit2(0x0080C3) + bit6(0x0080C9) + bit5(0x0080C9) + bit4(0x0080C9) + bit5(0x0080CA) +
               bit4(0x0080CA) + bit3(0x0080CA) + bit6(0x0080D1) + bit5(0x0080D1) + bit4(0x0080D1) + bit3(0x0080D3) +
               bit2(0x0080D3) + bit1(0x0080D3) + bit0(0x0080D3) + bit7(0x0080D8) + bit6(0x0080D8) + bit5(0x0080D8) +
               bit6(0x0080D9) + bit5(0x0080D9) + bit4(0x0080D9) + bit0(0x0080D9) + bitcount(0x0080DB) + bit7(0x0080E0) +
               bit6(0x0080E0) + bit5(0x0080E0) + bit0(0x0080E1) + bit4(0x0080E2) + bit3(0x0080E2) + bit2(0x0080E2) +
               bitcount(0x0080E3) + bit7(0x0080E8) + bit6(0x0080E8) + bit5(0x0080E8) + bit0(0x0080E9) + bit4(0x0080EA) +
               bit3(0x0080EA) + bit2(0x0080EA) + bitcount(0x0080EB) + bit7(0x0080F0) + bit6(0x0080F0) + bit5(0x0080F0) +
               bit0(0x0080F1) + bit4(0x0080F2) + bit3(0x0080F2) + bit2(0x0080F2) + bitcount(0x0080F3) + bit4(0x0080FA) +
               bit3(0x0080FA) + bit2(0x0080FA) + bitcount(0x0080FB) + bit5(0x008101) + bit4(0x008101) + bit4(0x008102) +
               bit3(0x008102) + bit2(0x008102) + bitcount(0x008103) + bit7(0x008108) + bit6(0x008108) + bit7(0x008109) +
               bit5(0x008109) + bit4(0x008109) + bitcount(0x00810A) + bitcount(0x00810B) + bit7(0x008110) +
               bit6(0x008110) + bit5(0x008110) + bitcount(0x008111) + bitcount(0x008112) + bitcount(0x008113) +
               bit7(0x008118) + bit6(0x008118) + bit5(0x008118) + bit5(0x008119) + bit4(0x008119) + bit0(0x008119) +
               bitcount(0x00811A) + bitcount(0x00811B) + bit7(0x008120) + bit6(0x008120) + bit5(0x008120) +
               bit4(0x008120) + bitcount(0x008121) + bitcount(0x008122) + bitcount(0x008123) + bitcount(0x008128) +
               bitcount(0x008129) + bitcount(0x00812A) + bitcount(0x00812B) + bitcount(0x008130) + bitcount(0x008131) +
               bitcount(0x008132) + bitcount(0x008133) + bit7(0x008138) + bit6(0x008138) + bitcount(0x008139) +
               bitcount(0x00813A) + bitcount(0x00813B) + bit7(0x008140) + bit6(0x008140) + bit4(0x008140) +
               bit3(0x008140) + bitcount(0x008141) + bit7(0x008142) + bit0(0x008142) + bitcount(0x008143) +
               bit7(0x008148) + bit6(0x008148) + bit4(0x008148) + bit3(0x008148) + bit5(0x008149) + bit4(0x008149) +
               bit1(0x008149) + bit0(0x008149) + bit7(0x00814A) + bit0(0x00814A) + bitcount(0x00814B) +
               bitcount(0x008150) + bitcount(0x008151) + bit7(0x008152) + bit0(0x008152) + bitcount(0x008153) +
               bitcount(0x008158) + bit5(0x008159) + bit4(0x008159) + bitcount(0x00815A) + bitcount(0x00815B) +
               bitcount(0x008160) + bitcount(0x008161) + bit4(0x008162) + bit1(0x008162) + bit0(0x008162) +
               bit7(0x008163) + bit6(0x008163) + bit7(0x008168) + bit6(0x008168) + bit5(0x008168) + bitcount(0x008169) +
               bitcount(0x00816A) + bitcount(0x00816B) + bit7(0x008170) + bit6(0x008170) + bit5(0x008170) +
               bitcount(0x008171) + bit7(0x008172) + bitcount(0x008173) + bit7(0x008179) + bitcount(0x00817A) +
               bitcount(0x00817B) + bitcount(0x008180) + bitcount(0x008181) + bitcount(0x008182) + bitcount(0x008183) +
               bitcount(0x008188) + bit1(0x008189) + bit0(0x008189) + bit1(0x00818A) + bit7(0x00818B) + bit6(0x00818B) +
               bit3(0x00818B) + bit2(0x00818B) + bit5(0x008190) + bit4(0x008190) + bit3(0x008190) + bit1(0x008191) +
               bit2(0x008192) + bit1(0x008192) + bit7(0x008193) + bit6(0x008193) + bit2(0x008193) + bitcount(0x008198) +
               bit3(0x008199) + bit2(0x008199) + bit1(0x008199) + bit0(0x008199) + bit7(0x00819A) + bit6(0x00819A) +
               bit1(0x00819A) + bit0(0x00819A) + bitcount(0x00819B) + bitcount(0x0081A0) + bit3(0x0081A1) +
               bit2(0x0081A1) + bit1(0x0081A1) + bit0(0x0081A1) + bit7(0x0081A2) + bit6(0x0081A2) + bit1(0x0081A2) +
               bitcount(0x0081A3) + bit7(0x0081A8) + bit6(0x0081A8) + bit5(0x0081A8) + bit4(0x0081A8) + bit3(0x0081A9) +
               bit2(0x0081A9) + bit1(0x0081A9) + bit0(0x0081A9) + bitcount(0x0081AA) + bit2(0x0081AB) + bit1(0x0081AB) +
               bit0(0x0081AB) + bitcount(0x0081B0) + bitcount(0x0081B1) + bitcount(0x0081B2) + bitcount(0x0081B3) +
               bit7(0x0081B9) + bit6(0x0081B9) + bit0(0x0081BA) + bitcount(0x0081C2) + bitcount(0x0081C3) +
               bit7(0x0081C9) + bitcount(0x0081CA) + bitcount(0x0081CB) + bit3(0x008200) + bit2(0x008200) +
               bit1(0x008200) + bit3(0x008208) + bit2(0x008208) + bit1(0x008208) + bit3(0x008210) + bit2(0x008210) +
               bit1(0x008210) + bitcount(0x008220) + bit5(0x008228) + bit4(0x008228) + bit3(0x008228) + bit3(0x008229) +
               bit2(0x008229) + bit1(0x008229) + bitcount(0x008230) + bit3(0x008231) + bit2(0x008231) + bit1(0x008231) +
               bit0(0x008231) + bit5(0x008238) + bit4(0x008238) + bit3(0x008238) + bit3(0x008239) + bit2(0x008239) +
               bit1(0x008239) + bit5(0x008240) + bit4(0x008240) + bit3(0x008240) + bit7(0x008241) + bit6(0x008241) +
               bit0(0x008242) + bitcount(0x008248) + bit7(0x008249) + bit6(0x008249) + bit0(0x00824A) +
               bitcount(0x008250) + bit7(0x008251) + bit6(0x008251) + bit0(0x008252) + bitcount(0x008258) +
               bitcount(0x008260) + bit6(0x008261) + bit5(0x008261) + bit4(0x008261) + bit3(0x008261) + bit7(0x008268) +
               bit6(0x008268) + bit2(0x008268) + bit1(0x008268) + bit6(0x008269) + bit5(0x008269) + bit4(0x008269) +
               bit3(0x008269) + bitcount(0x008270) + bitcount(0x008271) + bit1(0x008272) + bit0(0x008272) +
               bitcount(0x008278) + bitcount(0x008279) + bit1(0x00827A) + bit0(0x00827A) + bit7(0x008280) +
               bit6(0x008280) + bit5(0x008280) + bitcount(0x008281) + bit1(0x008282) + bit0(0x008282) +
               bitcount(0x008288) + bitcount(0x008289) + bit1(0x00828A) + bit0(0x00828A) + bitcount(0x008291) +
               bit1(0x008292) + bit0(0x008292) + bit2(0x008298) + bitcount(0x008299) + bit1(0x00829A) + bit0(0x00829A) +
               bit2(0x0082A0) + bitcount(0x0082A1) + bit1(0x0082A2) + bit0(0x0082A2) + bitcount(0x0082A8) +
               bitcount(0x0082A9) + bit3(0x0082B0) + bit2(0x0082B0) + bit1(0x0082B0) + bitcount(0x0082B1) +
               bit0(0x0082B2) + bit7(0x0082B8) + bit3(0x0082B8) + bit2(0x0082B8) + bit1(0x0082B8) + bitcount(0x0082B9) +
               bit0(0x0082BA) + bit3(0x0082C0) + bit1(0x0082C0) + bit0(0x0082C0) + bitcount(0x0082C1) + bit0(0x0082C2) +
               bit7(0x0082C8) + bit4(0x0082C8) + bit3(0x0082C8) + bitcount(0x0082C9) + bit0(0x0082CA) + bit7(0x0082D0) +
               bit6(0x0082D0) + bit0(0x0082D0) + bitcount(0x0082D1) + bit0(0x0082D2) + bit6(0x0082D8) +
               bitcount(0x0082E0) + bit3(0x0082E1) + bit2(0x0082E1) + bit1(0x0082E1) + bit0(0x0082E1) + bit5(0x0082E9) +
               bit4(0x0082E9) + bit3(0x0082E9) + bitcount(0x0082F1) + bit6(0x0082F8) + bit5(0x0082F8) + bit6(0x0082F9) +
               bit7(0x008300) + bit6(0x008300) + bit5(0x008300) + bit0(0x008300) + bitcount(0x008301) + bit1(0x008308) +
               bit0(0x008308) - bit7(0x0080DB) - bit6(0x0080DB) - bit7(0x0080E3) - bit6(0x0080E3) - bit7(0x0080EB) -
               bit6(0x0080EB) - bit7(0x0080FB) - bit6(0x0080FB) - bit7(0x008103) - bit6(0x008103) - bit7(0x00810A) -
               bit3(0x008111) - bit2(0x008111) - bit1(0x008111) - bit7(0x008112) - bit7(0x00811A) - bit1(0x00811B) -
               bit0(0x00811B) - bit6(0x008121) - bit3(0x008121) - bit2(0x008121) - bit7(0x008123) - bit6(0x008123) -
               bit2(0x008128) - bit1(0x008128) - bit0(0x008128) - bit7(0x00812A) - bit7(0x00812B) - bit6(0x00812B) -
               bit2(0x008130) - bit1(0x008130) - bit0(0x008130) - bit7(0x008131) - bit6(0x008131) - bit1(0x008132) -
               bit0(0x008132) - bit7(0x008133) - bit6(0x008133) - bit7(0x008139) - bit6(0x008139) - bit7(0x008141) -
               bit6(0x008141) - bit7(0x008143) - bit6(0x008143) - bit5(0x008143) - bit7(0x00814B) - bit6(0x00814B) -
               bit5(0x00814B) - bit5(0x008150) - bit2(0x008150) - bit7(0x008151) - bit6(0x008151) - bit3(0x008151) -
               bit7(0x008153) - bit6(0x008153) - bit5(0x008153) - bit7(0x008158) - bit6(0x008158) - bit5(0x008158) -
               bit3(0x00815A) - bit2(0x00815A) - bit1(0x00815A) - bit7(0x00815B) - bit6(0x00815B) - bit6(0x008169) -
               bit3(0x008169) - bit2(0x008169) - bit5(0x008173) - bit4(0x008173) - bit5(0x00817B) - bit4(0x00817B) -
               bit2(0x008180) - bit1(0x008180) - bit0(0x008180) - bit5(0x008181) - bit4(0x008181) - bit3(0x008181) -
               bit4(0x008183) - bit3(0x008183) - bit2(0x008188) - bit1(0x008188) - bit0(0x008188) - bit2(0x008198) -
               bit1(0x008198) - bit0(0x008198) - bit5(0x00819B) - bit4(0x00819B) - bit1(0x0081A0) - bit0(0x0081A0) -
               bit0(0x0081AA) - bit0(0x0081B0) - bit7(0x0081B3) - bit6(0x0081B3) - bit2(0x0081C2) - bit1(0x0081C2) -
               bit7(0x008220) - bit1(0x008220) - bit0(0x008220) - bit7(0x008248) - bit1(0x008248) - bit0(0x008248) -
               bit0(0x008250) - bit0(0x008258) - bit0(0x008260) - bit0(0x008270) - bit2(0x008271) - bit1(0x008271) -
               bit0(0x008271) - bit2(0x008279) - bit1(0x008279) - bit0(0x008288) - bit1(0x008289) - bit0(0x008289) -
               bit1(0x008291) - bit0(0x008291) - bit7(0x0082A8) - bit6(0x0082A8) - bit0(0x0082A9) - bit2(0x0082B1) -
               bit1(0x0082B1) - bit0(0x0082B1) - bit7(0x0082F1) - bit1(0x0082F1) - bit0(0x0082F1) - bit7(0x008301)) ==
               848, when=byte(0x008010) == 4 && byte(0x0084CC) != 17 && (prev(bit5(0x0080BA)) + prev(bit4(0x0080BA)) +
               prev(bit3(0x0080BA)) + prev(bit5(0x0080C2)) + prev(bit4(0x0080C2)) + prev(bit3(0x0080C2)) +
               prev(bit2(0x0080C3)) + prev(bit6(0x0080C9)) + prev(bit5(0x0080C9)) + prev(bit4(0x0080C9)) +
               prev(bit5(0x0080CA)) + prev(bit4(0x0080CA)) + prev(bit3(0x0080CA)) + prev(bit6(0x0080D1)) +
               prev(bit5(0x0080D1)) + prev(bit4(0x0080D1)) + prev(bit3(0x0080D3)) + prev(bit2(0x0080D3)) +
               prev(bit1(0x0080D3)) + prev(bit0(0x0080D3)) + prev(bit7(0x0080D8)) + prev(bit6(0x0080D8)) +
               prev(bit5(0x0080D8)) + prev(bit6(0x0080D9)) + prev(bit5(0x0080D9)) + prev(bit4(0x0080D9)) +
               prev(bit0(0x0080D9)) + prev(bitcount(0x0080DB)) + prev(bit7(0x0080E0)) + prev(bit6(0x0080E0)) +
               prev(bit5(0x0080E0)) + prev(bit0(0x0080E1)) + prev(bit4(0x0080E2)) + prev(bit3(0x0080E2)) +
               prev(bit2(0x0080E2)) + prev(bitcount(0x0080E3)) + prev(bit7(0x0080E8)) + prev(bit6(0x0080E8)) +
               prev(bit5(0x0080E8)) + prev(bit0(0x0080E9)) + prev(bit4(0x0080EA)) + prev(bit3(0x0080EA)) +
               prev(bit2(0x0080EA)) + prev(bitcount(0x0080EB)) + prev(bit7(0x0080F0)) + prev(bit6(0x0080F0)) +
               prev(bit5(0x0080F0)) + prev(bit0(0x0080F1)) + prev(bit4(0x0080F2)) + prev(bit3(0x0080F2)) +
               prev(bit2(0x0080F2)) + prev(bitcount(0x0080F3)) + prev(bit4(0x0080FA)) + prev(bit3(0x0080FA)) +
               prev(bit2(0x0080FA)) + prev(bitcount(0x0080FB)) + prev(bit5(0x008101)) + prev(bit4(0x008101)) +
               prev(bit4(0x008102)) + prev(bit3(0x008102)) + prev(bit2(0x008102)) + prev(bitcount(0x008103)) +
               prev(bit7(0x008108)) + prev(bit6(0x008108)) + prev(bit7(0x008109)) + prev(bit5(0x008109)) +
               prev(bit4(0x008109)) + prev(bitcount(0x00810A)) + prev(bitcount(0x00810B)) + prev(bit7(0x008110)) +
               prev(bit6(0x008110)) + prev(bit5(0x008110)) + prev(bitcount(0x008111)) + prev(bitcount(0x008112)) +
               prev(bitcount(0x008113)) + prev(bit7(0x008118)) + prev(bit6(0x008118)) + prev(bit5(0x008118)) +
               prev(bit5(0x008119)) + prev(bit4(0x008119)) + prev(bit0(0x008119)) + prev(bitcount(0x00811A)) +
               prev(bitcount(0x00811B)) + prev(bit7(0x008120)) + prev(bit6(0x008120)) + prev(bit5(0x008120)) +
               prev(bit4(0x008120)) + prev(bitcount(0x008121)) + prev(bitcount(0x008122)) + prev(bitcount(0x008123)) +
               prev(bitcount(0x008128)) + prev(bitcount(0x008129)) + prev(bitcount(0x00812A)) + prev(bitcount(0x00812B))
               + prev(bitcount(0x008130)) + prev(bitcount(0x008131)) + prev(bitcount(0x008132)) +
               prev(bitcount(0x008133)) + prev(bit7(0x008138)) + prev(bit6(0x008138)) + prev(bitcount(0x008139)) +
               prev(bitcount(0x00813A)) + prev(bitcount(0x00813B)) + prev(bit7(0x008140)) + prev(bit6(0x008140)) +
               prev(bit4(0x008140)) + prev(bit3(0x008140)) + prev(bitcount(0x008141)) + prev(bit7(0x008142)) +
               prev(bit0(0x008142)) + prev(bitcount(0x008143)) + prev(bit7(0x008148)) + prev(bit6(0x008148)) +
               prev(bit4(0x008148)) + prev(bit3(0x008148)) + prev(bit5(0x008149)) + prev(bit4(0x008149)) +
               prev(bit1(0x008149)) + prev(bit0(0x008149)) + prev(bit7(0x00814A)) + prev(bit0(0x00814A)) +
               prev(bitcount(0x00814B)) + prev(bitcount(0x008150)) + prev(bitcount(0x008151)) + prev(bit7(0x008152)) +
               prev(bit0(0x008152)) + prev(bitcount(0x008153)) + prev(bitcount(0x008158)) + prev(bit5(0x008159)) +
               prev(bit4(0x008159)) + prev(bitcount(0x00815A)) + prev(bitcount(0x00815B)) + prev(bitcount(0x008160)) +
               prev(bitcount(0x008161)) + prev(bit4(0x008162)) + prev(bit1(0x008162)) + prev(bit0(0x008162)) +
               prev(bit7(0x008163)) + prev(bit6(0x008163)) + prev(bit7(0x008168)) + prev(bit6(0x008168)) +
               prev(bit5(0x008168)) + prev(bitcount(0x008169)) + prev(bitcount(0x00816A)) + prev(bitcount(0x00816B)) +
               prev(bit7(0x008170)) + prev(bit6(0x008170)) + prev(bit5(0x008170)) + prev(bitcount(0x008171)) +
               prev(bit7(0x008172)) + prev(bitcount(0x008173)) + prev(bit7(0x008179)) + prev(bitcount(0x00817A)) +
               prev(bitcount(0x00817B)) + prev(bitcount(0x008180)) + prev(bitcount(0x008181)) + prev(bitcount(0x008182))
               + prev(bitcount(0x008183)) + prev(bitcount(0x008188)) + prev(bit1(0x008189)) + prev(bit0(0x008189)) +
               prev(bit1(0x00818A)) + prev(bit7(0x00818B)) + prev(bit6(0x00818B)) + prev(bit3(0x00818B)) +
               prev(bit2(0x00818B)) + prev(bit5(0x008190)) + prev(bit4(0x008190)) + prev(bit3(0x008190)) +
               prev(bit1(0x008191)) + prev(bit2(0x008192)) + prev(bit1(0x008192)) + prev(bit7(0x008193)) +
               prev(bit6(0x008193)) + prev(bit2(0x008193)) + prev(bitcount(0x008198)) + prev(bit3(0x008199)) +
               prev(bit2(0x008199)) + prev(bit1(0x008199)) + prev(bit0(0x008199)) + prev(bit7(0x00819A)) +
               prev(bit6(0x00819A)) + prev(bit1(0x00819A)) + prev(bit0(0x00819A)) + prev(bitcount(0x00819B)) +
               prev(bitcount(0x0081A0)) + prev(bit3(0x0081A1)) + prev(bit2(0x0081A1)) + prev(bit1(0x0081A1)) +
               prev(bit0(0x0081A1)) + prev(bit7(0x0081A2)) + prev(bit6(0x0081A2)) + prev(bit1(0x0081A2)) +
               prev(bitcount(0x0081A3)) + prev(bit7(0x0081A8)) + prev(bit6(0x0081A8)) + prev(bit5(0x0081A8)) +
               prev(bit4(0x0081A8)) + prev(bit3(0x0081A9)) + prev(bit2(0x0081A9)) + prev(bit1(0x0081A9)) +
               prev(bit0(0x0081A9)) + prev(bitcount(0x0081AA)) + prev(bit2(0x0081AB)) + prev(bit1(0x0081AB)) +
               prev(bit0(0x0081AB)) + prev(bitcount(0x0081B0)) + prev(bitcount(0x0081B1)) + prev(bitcount(0x0081B2)) +
               prev(bitcount(0x0081B3)) + prev(bit7(0x0081B9)) + prev(bit6(0x0081B9)) + prev(bit0(0x0081BA)) +
               prev(bitcount(0x0081C2)) + prev(bitcount(0x0081C3)) + prev(bit7(0x0081C9)) + prev(bitcount(0x0081CA)) +
               prev(bitcount(0x0081CB)) + prev(bit3(0x008200)) + prev(bit2(0x008200)) + prev(bit1(0x008200)) +
               prev(bit3(0x008208)) + prev(bit2(0x008208)) + prev(bit1(0x008208)) + prev(bit3(0x008210)) +
               prev(bit2(0x008210)) + prev(bit1(0x008210)) + prev(bitcount(0x008220)) + prev(bit5(0x008228)) +
               prev(bit4(0x008228)) + prev(bit3(0x008228)) + prev(bit3(0x008229)) + prev(bit2(0x008229)) +
               prev(bit1(0x008229)) + prev(bitcount(0x008230)) + prev(bit3(0x008231)) + prev(bit2(0x008231)) +
               prev(bit1(0x008231)) + prev(bit0(0x008231)) + prev(bit5(0x008238)) + prev(bit4(0x008238)) +
               prev(bit3(0x008238)) + prev(bit3(0x008239)) + prev(bit2(0x008239)) + prev(bit1(0x008239)) +
               prev(bit5(0x008240)) + prev(bit4(0x008240)) + prev(bit3(0x008240)) + prev(bit7(0x008241)) +
               prev(bit6(0x008241)) + prev(bit0(0x008242)) + prev(bitcount(0x008248)) + prev(bit7(0x008249)) +
               prev(bit6(0x008249)) + prev(bit0(0x00824A)) + prev(bitcount(0x008250)) + prev(bit7(0x008251)) +
               prev(bit6(0x008251)) + prev(bit0(0x008252)) + prev(bitcount(0x008258)) + prev(bitcount(0x008260)) +
               prev(bit6(0x008261)) + prev(bit5(0x008261)) + prev(bit4(0x008261)) + prev(bit3(0x008261)) +
               prev(bit7(0x008268)) + prev(bit6(0x008268)) + prev(bit2(0x008268)) + prev(bit1(0x008268)) +
               prev(bit6(0x008269)) + prev(bit5(0x008269)) + prev(bit4(0x008269)) + prev(bit3(0x008269)) +
               prev(bitcount(0x008270)) + prev(bitcount(0x008271)) + prev(bit1(0x008272)) + prev(bit0(0x008272)) +
               prev(bitcount(0x008278)) + prev(bitcount(0x008279)) + prev(bit1(0x00827A)) + prev(bit0(0x00827A)) +
               prev(bit7(0x008280)) + prev(bit6(0x008280)) + prev(bit5(0x008280)) + prev(bitcount(0x008281)) +
               prev(bit1(0x008282)) + prev(bit0(0x008282)) + prev(bitcount(0x008288)) + prev(bitcount(0x008289)) +
               prev(bit1(0x00828A)) + prev(bit0(0x00828A)) + prev(bitcount(0x008291)) + prev(bit1(0x008292)) +
               prev(bit0(0x008292)) + prev(bit2(0x008298)) + prev(bitcount(0x008299)) + prev(bit1(0x00829A)) +
               prev(bit0(0x00829A)) + prev(bit2(0x0082A0)) + prev(bitcount(0x0082A1)) + prev(bit1(0x0082A2)) +
               prev(bit0(0x0082A2)) + prev(bitcount(0x0082A8)) + prev(bitcount(0x0082A9)) + prev(bit3(0x0082B0)) +
               prev(bit2(0x0082B0)) + prev(bit1(0x0082B0)) + prev(bitcount(0x0082B1)) + prev(bit0(0x0082B2)) +
               prev(bit7(0x0082B8)) + prev(bit3(0x0082B8)) + prev(bit2(0x0082B8)) + prev(bit1(0x0082B8)) +
               prev(bitcount(0x0082B9)) + prev(bit0(0x0082BA)) + prev(bit3(0x0082C0)) + prev(bit1(0x0082C0)) +
               prev(bit0(0x0082C0)) + prev(bitcount(0x0082C1)) + prev(bit0(0x0082C2)) + prev(bit7(0x0082C8)) +
               prev(bit4(0x0082C8)) + prev(bit3(0x0082C8)) + prev(bitcount(0x0082C9)) + prev(bit0(0x0082CA)) +
               prev(bit7(0x0082D0)) + prev(bit6(0x0082D0)) + prev(bit0(0x0082D0)) + prev(bitcount(0x0082D1)) +
               prev(bit0(0x0082D2)) + prev(bit6(0x0082D8)) + prev(bitcount(0x0082E0)) + prev(bit3(0x0082E1)) +
               prev(bit2(0x0082E1)) + prev(bit1(0x0082E1)) + prev(bit0(0x0082E1)) + prev(bit5(0x0082E9)) +
               prev(bit4(0x0082E9)) + prev(bit3(0x0082E9)) + prev(bitcount(0x0082F1)) + prev(bit6(0x0082F8)) +
               prev(bit5(0x0082F8)) + prev(bit6(0x0082F9)) + prev(bit7(0x008300)) + prev(bit6(0x008300)) +
               prev(bit5(0x008300)) + prev(bit0(0x008300)) + prev(bitcount(0x008301)) + prev(bit1(0x008308)) +
               prev(bit0(0x008308)) - prev(bit7(0x0080DB)) - prev(bit6(0x0080DB)) - prev(bit7(0x0080E3)) -
               prev(bit6(0x0080E3)) - prev(bit7(0x0080EB)) - prev(bit6(0x0080EB)) - prev(bit7(0x0080FB)) -
               prev(bit6(0x0080FB)) - prev(bit7(0x008103)) - prev(bit6(0x008103)) - prev(bit7(0x00810A)) -
               prev(bit3(0x008111)) - prev(bit2(0x008111)) - prev(bit1(0x008111)) - prev(bit7(0x008112)) -
               prev(bit7(0x00811A)) - prev(bit1(0x00811B)) - prev(bit0(0x00811B)) - prev(bit6(0x008121)) -
               prev(bit3(0x008121)) - prev(bit2(0x008121)) - prev(bit7(0x008123)) - prev(bit6(0x008123)) -
               prev(bit2(0x008128)) - prev(bit1(0x008128)) - prev(bit0(0x008128)) - prev(bit7(0x00812A)) -
               prev(bit7(0x00812B)) - prev(bit6(0x00812B)) - prev(bit2(0x008130)) - prev(bit1(0x008130)) -
               prev(bit0(0x008130)) - prev(bit7(0x008131)) - prev(bit6(0x008131)) - prev(bit1(0x008132)) -
               prev(bit0(0x008132)) - prev(bit7(0x008133)) - prev(bit6(0x008133)) - prev(bit7(0x008139)) -
               prev(bit6(0x008139)) - prev(bit7(0x008141)) - prev(bit6(0x008141)) - prev(bit7(0x008143)) -
               prev(bit6(0x008143)) - prev(bit5(0x008143)) - prev(bit7(0x00814B)) - prev(bit6(0x00814B)) -
               prev(bit5(0x00814B)) - prev(bit5(0x008150)) - prev(bit2(0x008150)) - prev(bit7(0x008151)) -
               prev(bit6(0x008151)) - prev(bit3(0x008151)) - prev(bit7(0x008153)) - prev(bit6(0x008153)) -
               prev(bit5(0x008153)) - prev(bit7(0x008158)) - prev(bit6(0x008158)) - prev(bit5(0x008158)) -
               prev(bit3(0x00815A)) - prev(bit2(0x00815A)) - prev(bit1(0x00815A)) - prev(bit7(0x00815B)) -
               prev(bit6(0x00815B)) - prev(bit6(0x008169)) - prev(bit3(0x008169)) - prev(bit2(0x008169)) -
               prev(bit5(0x008173)) - prev(bit4(0x008173)) - prev(bit5(0x00817B)) - prev(bit4(0x00817B)) -
               prev(bit2(0x008180)) - prev(bit1(0x008180)) - prev(bit0(0x008180)) - prev(bit5(0x008181)) -
               prev(bit4(0x008181)) - prev(bit3(0x008181)) - prev(bit4(0x008183)) - prev(bit3(0x008183)) -
               prev(bit2(0x008188)) - prev(bit1(0x008188)) - prev(bit0(0x008188)) - prev(bit2(0x008198)) -
               prev(bit1(0x008198)) - prev(bit0(0x008198)) - prev(bit5(0x00819B)) - prev(bit4(0x00819B)) -
               prev(bit1(0x0081A0)) - prev(bit0(0x0081A0)) - prev(bit0(0x0081AA)) - prev(bit0(0x0081B0)) -
               prev(bit7(0x0081B3)) - prev(bit6(0x0081B3)) - prev(bit2(0x0081C2)) - prev(bit1(0x0081C2)) -
               prev(bit7(0x008220)) - prev(bit1(0x008220)) - prev(bit0(0x008220)) - prev(bit7(0x008248)) -
               prev(bit1(0x008248)) - prev(bit0(0x008248)) - prev(bit0(0x008250)) - prev(bit0(0x008258)) -
               prev(bit0(0x008260)) - prev(bit0(0x008270)) - prev(bit2(0x008271)) - prev(bit1(0x008271)) -
               prev(bit0(0x008271)) - prev(bit2(0x008279)) - prev(bit1(0x008279)) - prev(bit0(0x008288)) -
               prev(bit1(0x008289)) - prev(bit0(0x008289)) - prev(bit1(0x008291)) - prev(bit0(0x008291)) -
               prev(bit7(0x0082A8)) - prev(bit6(0x0082A8)) - prev(bit0(0x0082A9)) - prev(bit2(0x0082B1)) -
               prev(bit1(0x0082B1)) - prev(bit0(0x0082B1)) - prev(bit7(0x0082F1)) - prev(bit1(0x0082F1)) -
               prev(bit0(0x0082F1)) - prev(bit7(0x008301))) <= 847)
)

achievement(
    title = "Futile Attempt", points = 3,
    description = "Defeat the Chronomage and add its enemy data entry to your bestiary.",
    id = 3155, badge = "116256", published = "10/4/2013 3:18:30 AM", modified = "3/17/2021 6:47:01 AM",
    trigger = byte(0x008010) == 4 && prev(bit0(0x01B3A5)) < bit0(0x01B3A5)
)

achievement(
    title = "Hey, Get Back Here!", points = 3,
    description = "Defeat a Sky Fish and add its enemy data entry to your bestiary.",
    id = 3154, badge = "116257", published = "10/4/2013 3:07:24 AM", modified = "3/17/2021 6:49:44 AM",
    trigger = byte(0x008010) == 4 && prev(bit1(0x01B3AA)) < bit1(0x01B3AA)
)

achievement(
    title = "The Power to Rule", points = 25,
    description = "Fill out all of the enemy data and monster drops in your bestiary.",
    id = 145663, badge = "162625", published = "3/16/2021 9:51:28 PM", modified = "4/6/2021 7:21:10 AM",
    trigger = (prev(bitcount(0x01B3A0)) + prev(bitcount(0x01B3A1)) + prev(bitcount(0x01B3A2)) + prev(bitcount(0x01B3A3))
               + prev(bitcount(0x01B3A4)) + prev(bitcount(0x01B3A5)) + prev(bitcount(0x01B3A6)) +
               prev(bitcount(0x01B3A7)) + prev(bitcount(0x01B3A8)) + prev(bitcount(0x01B3A9)) + prev(bitcount(0x01B3AA))
               + prev(bitcount(0x01B3AB)) + prev(bitcount(0x01B3AC)) + prev(bitcount(0x01B3AD)) + prev(bit4(0x01B3B0)) +
               prev(bit1(0x01B3B0)) + prev(bit5(0x01B3B1)) + prev(bit4(0x01B3B1)) + prev(bitcount(0x01B3B2)) +
               prev(bit3(0x01B3B3)) + prev(bit1(0x01B3B3)) + prev(bit5(0x01B3B4)) + prev(bit4(0x01B3B4)) +
               prev(bit0(0x01B3B4)) + prev(bit3(0x01B3B5)) + prev(bit2(0x01B3B5)) + prev(bit1(0x01B3B5)) +
               prev(bit0(0x01B3B5)) + prev(bitcount(0x01B3B6)) + prev(bit4(0x01B3B7)) + prev(bit2(0x01B3B7)) +
               prev(bit7(0x01B3B8)) + prev(bit6(0x01B3B8)) + prev(bit3(0x01B3B8)) + prev(bit2(0x01B3B8)) +
               prev(bit3(0x01B3B9)) + prev(bit2(0x01B3B9)) + prev(bit1(0x01B3B9)) + prev(bit4(0x01B3BA)) +
               prev(bit3(0x01B3BA)) + prev(bit2(0x01B3BA)) + prev(bit0(0x01B3BA)) + prev(bit7(0x01B3BB)) +
               prev(bit3(0x01B3BB)) + prev(bit0(0x01B3BB)) + prev(bit7(0x01B3BC)) + prev(bit6(0x01B3BC)) +
               prev(bit7(0x01B3C0)) + prev(bit1(0x01B3C0)) + prev(bit4(0x01B3C1)) + prev(bit0(0x01B3C1)) +
               prev(bitcount(0x01B3C2)) + prev(bitcount(0x01B3C3)) + prev(bit4(0x01B3C4)) + prev(bit2(0x01B3C4)) +
               prev(bit0(0x01B3C4)) + prev(bitcount(0x01B3C5)) + prev(bitcount(0x01B3C6)) + prev(bit7(0x01B3C7)) +
               prev(bit6(0x01B3C7)) + prev(bit4(0x01B3C7)) + prev(bit6(0x01B3C8)) + prev(bit5(0x01B3C8)) +
               prev(bit3(0x01B3C8)) + prev(bit0(0x01B3C8)) + prev(bit5(0x01B3C9)) + prev(bit1(0x01B3C9)) +
               prev(bit0(0x01B3C9)) + prev(bit5(0x01B3CA)) + prev(bit3(0x01B3CA)) + prev(bit2(0x01B3CA)) +
               prev(bit0(0x01B3CA)) + prev(bit7(0x01B3CB)) + prev(bit4(0x01B3CB)) + prev(bit3(0x01B3CB)) +
               prev(bit0(0x01B3CB)) + prev(bitcount(0x01B3CC)) + prev(bit1(0x01B3CD)) + prev(bit0(0x01B3CD)) -
               prev(bit3(0x01B3B2)) - prev(bit0(0x01B3B2)) - prev(bit7(0x01B3B6)) - prev(bit6(0x01B3B6)) -
               prev(bit5(0x01B3B6)) - prev(bit7(0x01B3C2)) - prev(bit4(0x01B3C2)) - prev(bit3(0x01B3C2)) -
               prev(bit7(0x01B3C3)) - prev(bit3(0x01B3C3)) - prev(bit5(0x01B3C5)) - prev(bit4(0x01B3C5)) -
               prev(bit0(0x01B3C5)) - prev(bit7(0x01B3C6)) - prev(bit4(0x01B3C6)) - prev(bit1(0x01B3C6)) -
               prev(bit5(0x01B3CC)) - prev(bit0(0x01B3CC))) >= 202 && measured((bitcount(0x01B3A0) + bitcount(0x01B3A1)
               + bitcount(0x01B3A2) + bitcount(0x01B3A3) + bitcount(0x01B3A4) + bitcount(0x01B3A5) + bitcount(0x01B3A6)
               + bitcount(0x01B3A7) + bitcount(0x01B3A8) + bitcount(0x01B3A9) + bitcount(0x01B3AA) + bitcount(0x01B3AB)
               + bitcount(0x01B3AC) + bitcount(0x01B3AD) + bit4(0x01B3B0) + bit1(0x01B3B0) + bit5(0x01B3B1) +
               bit4(0x01B3B1) + bitcount(0x01B3B2) + bit3(0x01B3B3) + bit1(0x01B3B3) + bit5(0x01B3B4) + bit4(0x01B3B4) +
               bit0(0x01B3B4) + bit3(0x01B3B5) + bit2(0x01B3B5) + bit1(0x01B3B5) + bit0(0x01B3B5) + bitcount(0x01B3B6) +
               bit4(0x01B3B7) + bit2(0x01B3B7) + bit7(0x01B3B8) + bit6(0x01B3B8) + bit3(0x01B3B8) + bit2(0x01B3B8) +
               bit3(0x01B3B9) + bit2(0x01B3B9) + bit1(0x01B3B9) + bit4(0x01B3BA) + bit3(0x01B3BA) + bit2(0x01B3BA) +
               bit0(0x01B3BA) + bit7(0x01B3BB) + bit3(0x01B3BB) + bit0(0x01B3BB) + bit7(0x01B3BC) + bit6(0x01B3BC) +
               bit7(0x01B3C0) + bit1(0x01B3C0) + bit4(0x01B3C1) + bit0(0x01B3C1) + bitcount(0x01B3C2) +
               bitcount(0x01B3C3) + bit4(0x01B3C4) + bit2(0x01B3C4) + bit0(0x01B3C4) + bitcount(0x01B3C5) +
               bitcount(0x01B3C6) + bit7(0x01B3C7) + bit6(0x01B3C7) + bit4(0x01B3C7) + bit6(0x01B3C8) + bit5(0x01B3C8) +
               bit3(0x01B3C8) + bit0(0x01B3C8) + bit5(0x01B3C9) + bit1(0x01B3C9) + bit0(0x01B3C9) + bit5(0x01B3CA) +
               bit3(0x01B3CA) + bit2(0x01B3CA) + bit0(0x01B3CA) + bit7(0x01B3CB) + bit4(0x01B3CB) + bit3(0x01B3CB) +
               bit0(0x01B3CB) + bitcount(0x01B3CC) + bit1(0x01B3CD) + bit0(0x01B3CD) - bit3(0x01B3B2) - bit0(0x01B3B2) -
               bit7(0x01B3B6) - bit6(0x01B3B6) - bit5(0x01B3B6) - bit7(0x01B3C2) - bit4(0x01B3C2) - bit3(0x01B3C2) -
               bit7(0x01B3C3) - bit3(0x01B3C3) - bit5(0x01B3C5) - bit4(0x01B3C5) - bit0(0x01B3C5) - bit7(0x01B3C6) -
               bit4(0x01B3C6) - bit1(0x01B3C6) - bit5(0x01B3CC) - bit0(0x01B3CC)) == 208, when=byte(0x008010) == 4 &&
               (prev(bitcount(0x01B3A0)) + prev(bitcount(0x01B3A1)) + prev(bitcount(0x01B3A2)) +
               prev(bitcount(0x01B3A3)) + prev(bitcount(0x01B3A4)) + prev(bitcount(0x01B3A5)) + prev(bitcount(0x01B3A6))
               + prev(bitcount(0x01B3A7)) + prev(bitcount(0x01B3A8)) + prev(bitcount(0x01B3A9)) +
               prev(bitcount(0x01B3AA)) + prev(bitcount(0x01B3AB)) + prev(bitcount(0x01B3AC)) + prev(bitcount(0x01B3AD))
               + prev(bit4(0x01B3B0)) + prev(bit1(0x01B3B0)) + prev(bit5(0x01B3B1)) + prev(bit4(0x01B3B1)) +
               prev(bitcount(0x01B3B2)) + prev(bit3(0x01B3B3)) + prev(bit1(0x01B3B3)) + prev(bit5(0x01B3B4)) +
               prev(bit4(0x01B3B4)) + prev(bit0(0x01B3B4)) + prev(bit3(0x01B3B5)) + prev(bit2(0x01B3B5)) +
               prev(bit1(0x01B3B5)) + prev(bit0(0x01B3B5)) + prev(bitcount(0x01B3B6)) + prev(bit4(0x01B3B7)) +
               prev(bit2(0x01B3B7)) + prev(bit7(0x01B3B8)) + prev(bit6(0x01B3B8)) + prev(bit3(0x01B3B8)) +
               prev(bit2(0x01B3B8)) + prev(bit3(0x01B3B9)) + prev(bit2(0x01B3B9)) + prev(bit1(0x01B3B9)) +
               prev(bit4(0x01B3BA)) + prev(bit3(0x01B3BA)) + prev(bit2(0x01B3BA)) + prev(bit0(0x01B3BA)) +
               prev(bit7(0x01B3BB)) + prev(bit3(0x01B3BB)) + prev(bit0(0x01B3BB)) + prev(bit7(0x01B3BC)) +
               prev(bit6(0x01B3BC)) + prev(bit7(0x01B3C0)) + prev(bit1(0x01B3C0)) + prev(bit4(0x01B3C1)) +
               prev(bit0(0x01B3C1)) + prev(bitcount(0x01B3C2)) + prev(bitcount(0x01B3C3)) + prev(bit4(0x01B3C4)) +
               prev(bit2(0x01B3C4)) + prev(bit0(0x01B3C4)) + prev(bitcount(0x01B3C5)) + prev(bitcount(0x01B3C6)) +
               prev(bit7(0x01B3C7)) + prev(bit6(0x01B3C7)) + prev(bit4(0x01B3C7)) + prev(bit6(0x01B3C8)) +
               prev(bit5(0x01B3C8)) + prev(bit3(0x01B3C8)) + prev(bit0(0x01B3C8)) + prev(bit5(0x01B3C9)) +
               prev(bit1(0x01B3C9)) + prev(bit0(0x01B3C9)) + prev(bit5(0x01B3CA)) + prev(bit3(0x01B3CA)) +
               prev(bit2(0x01B3CA)) + prev(bit0(0x01B3CA)) + prev(bit7(0x01B3CB)) + prev(bit4(0x01B3CB)) +
               prev(bit3(0x01B3CB)) + prev(bit0(0x01B3CB)) + prev(bitcount(0x01B3CC)) + prev(bit1(0x01B3CD)) +
               prev(bit0(0x01B3CD)) - prev(bit3(0x01B3B2)) - prev(bit0(0x01B3B2)) - prev(bit7(0x01B3B6)) -
               prev(bit6(0x01B3B6)) - prev(bit5(0x01B3B6)) - prev(bit7(0x01B3C2)) - prev(bit4(0x01B3C2)) -
               prev(bit3(0x01B3C2)) - prev(bit7(0x01B3C3)) - prev(bit3(0x01B3C3)) - prev(bit5(0x01B3C5)) -
               prev(bit4(0x01B3C5)) - prev(bit0(0x01B3C5)) - prev(bit7(0x01B3C6)) - prev(bit4(0x01B3C6)) -
               prev(bit1(0x01B3C6)) - prev(bit5(0x01B3CC)) - prev(bit0(0x01B3CC))) <= 207)
)

achievement(
    title = "Deep Pockets", points = 10,
    description = "Accrue a total of 200,000 gold or more.",
    id = 3132, badge = "116262", published = "10/3/2013 2:10:58 AM", modified = "3/17/2021 7:14:33 AM",
    trigger = byte(0x008010) == 4 && prev(dword(0x01B290)) < 200000 && dword(0x01B290) >= 200000
)

achievement(
    title = "Sword of Light", points = 5,
    description = "Find the legendary blade once possessed by the Tuatha De Danann, the Claimh Solais.",
    id = 3084, badge = "116258", published = "10/1/2013 5:37:58 AM", modified = "3/20/2021 2:57:06 AM",
    trigger = byte(0x008010) == 4 && prev(byte(0x01B2CD)) < byte(0x01B2CD)
)

achievement(
    title = "Fit for Consumption", points = 10,
    description = "Purchase the Soul Eater Ring from Hammer's shop.",
    id = 3089, badge = "116263", published = "10/2/2013 12:06:56 AM", modified = "3/17/2021 7:17:24 AM",
    trigger = byte(0x008010) == 4 && prev(byte(0x01B317)) < byte(0x01B317)
)

achievement(
    title = "Infinite Power!", points = 25,
    description = "Obtain the Chaos Ring, the ultimate reward for gaining dominance over the castle's denizens.",
    id = 3090, badge = "116264", published = "10/2/2013 12:07:06 AM", modified = "3/17/2021 7:24:05 AM",
    trigger = byte(0x008010) == 4 && prev(byte(0x01B31B)) < byte(0x01B31B)
)

achievement(
    title = "Hard Work", points = 10,
    description = "Find all 5 pieces of equipment exclusive to Hard difficulty.",
    id = 3134, badge = "116265", published = "10/3/2013 4:13:12 AM", modified = "11/24/2022 3:47:52 AM",
    trigger = measured((byte(0x01B2DB) / byte(0x01B2DB) + byte(0x01B2E7) / byte(0x01B2E7) + byte(0x01B2EC) /
               byte(0x01B2EC) + byte(0x01B302) / byte(0x01B302) + byte(0x01B314) / byte(0x01B314) + 0) == 5,
               when=(byte(0x008010) == 4 && byte(0x0080A1) == 16)) && (prev(byte(0x01B2DB)) / prev(byte(0x01B2DB)) +
               prev(byte(0x01B2E7)) / prev(byte(0x01B2E7)) + prev(byte(0x01B2EC)) / prev(byte(0x01B2EC)) +
               prev(byte(0x01B302)) / prev(byte(0x01B302)) + prev(byte(0x01B314)) / prev(byte(0x01B314)) + 0) == 4
)

achievement(
    title = "King's Blade", points = 3,
    description = "Complete Boss Rush in 6 minutes or less as Soma and obtain Excalibur.",
    id = 3091, badge = "116259", published = "10/2/2013 12:11:12 AM", modified = "3/20/2021 3:30:11 AM",
    trigger = byte(0x008010) == 4 && byte(0x01B266) == 0 && byte(0x0084CC) == 17 && prev(byte(0x01B2D8)) == 0 && 
              byte(0x01B2D8) == 1
)

achievement(
    title = "Positively Electronic", points = 5,
    description = "Complete Boss Rush in 5 minutes or less as Soma and obtain the Positron Rifle.",
    id = 3088, badge = "116260", published = "10/2/2013 12:06:45 AM", modified = "3/20/2021 3:30:39 AM",
    trigger = byte(0x008010) == 4 && byte(0x01B266) == 0 && byte(0x0084CC) == 17 && prev(byte(0x01B2ED)) == 0 && 
              byte(0x01B2ED) == 1
)

achievement(
    title = "The Sword of Many Slashes", points = 10,
    description = "Complete Boss Rush in 4 minutes or less as Soma and obtain Valmanway.",
    id = 3087, badge = "116261", published = "10/2/2013 12:02:14 AM", modified = "3/20/2021 3:30:58 AM",
    trigger = byte(0x008010) == 4 && byte(0x01B266) == 0 && byte(0x0084CC) == 17 && prev(byte(0x01B2EE)) == 0 && 
              byte(0x01B2EE) == 1
)

achievement(
    title = "Party Like It's 1999", points = 10,
    description = "Return to Dracula's Castle and defeat the heir apparent in Julius Mode.",
    id = 13702, badge = "116266", published = "9/24/2014 7:24:43 AM", modified = "12/27/2020 4:33:52 AM",
    trigger = dword(0x008088) == 139591024 && byte(0x01B266) == 1 && prev(bit0(0x00837E)) < bit0(0x00837E)
)

achievement(
    title = "Belmont Legend", points = 10,
    description = "Defeat every boss in Julius Mode on Hard difficulty.",
    id = 13704, badge = "116267", published = "9/24/2014 11:24:24 AM", modified = "3/17/2021 2:19:38 AM",
    trigger = dword(0x008088) == 139591024 && (prev(bit6(0x00837E)) + prev(bit5(0x00837E)) + prev(bit4(0x00837E)) +
               prev(bit1(0x00837E)) + prev(bit0(0x00837E)) + prev(bit7(0x00837F)) + prev(bit4(0x00837F)) +
               prev(bit3(0x00837F)) + prev(bit2(0x00837F))) == 8 && measured((bit6(0x00837E) + bit5(0x00837E) +
               bit4(0x00837E) + bit1(0x00837E) + bit0(0x00837E) + bit7(0x00837F) + bit4(0x00837F) + bit3(0x00837F) +
               bit2(0x00837F)) == 9, when=byte(0x008010) == 4 && byte(0x01B266) == 1 && byte(0x0084CC) != 17 &&
               high4(0x0080A1) == 1)
)

achievement(
    title = "Are These New Sub-Weapons?", points = 10,
    description = "Complete Boss Rush in 6 minutes or less as Julius.",
    id = 146620, badge = "163779", published = "3/23/2021 5:02:31 PM", modified = "7/28/2022 2:17:04 PM",
    trigger = byte(0x01B266) == 1 && dword(0x008088) == 139611740 && dword(0x009260) < 21601 && prev(bit2(0x00842D)) <
               bit2(0x00842D)
)

achievement(
    title = "Sword or Whip?", points = 50,
    description = "Complete Boss Rush in 4 minutes or less as Julius.",
    id = 145664, badge = "163778", published = "3/16/2021 10:26:05 PM", modified = "7/28/2022 2:17:21 PM",
    trigger = byte(0x01B266) == 1 && dword(0x008088) == 139611740 && dword(0x009260) < 14401 && prev(bit2(0x00842D)) <
               bit2(0x00842D)
)

achievement(
    title = "Path of the Boneheaded", points = 5,
    description = "[No NG+ | Hard | Lv.<=2] Defeat the Creaking Skull boss without taking damage.",
    id = 146963, badge = "164174", published = "3/25/2021 7:00:11 AM", modified = "3/31/2021 9:40:50 PM",
    trigger = never(byte(0x0080A1) != 16) && never(byte(0x01B266) != 0) && never(dword(0x008088) != 139523468) && 
              once(byte(0x01B279) <= 2 && prev(dword(0x0093EC)) == 1 && dword(0x0093EC) == 0) && prev(bit3(0x00837F)) <
               bit3(0x00837F) && never(prev(word(0x01B27A)) > word(0x01B27A))
)

achievement(
    title = "Path of the Deadeye", points = 10,
    description = "[No NG+ | Hard | Lv.<=6] Defeat the Manticore boss in 10 or fewer attacks using only Bullet Souls.",
    id = 146961, badge = "164144", published = "3/25/2021 4:08:00 AM", modified = "3/25/2021 5:32:26 PM",
    trigger = never(byte(0x0080A1) != 16) && never(byte(0x01B266) != 0) && never(dword(0x008088) != 139533772) && 
              once(byte(0x01B279) <= 6 && prev(dword(0x009470)) == 1 && dword(0x009470) == 0) && prev(bit2(0x00837F)) <
               bit2(0x00837F) && never((byte(0x0084EE) == 1 && prev(word(0x009514)) != word(0x009514))) && 
              never(repeated(11, prev(byte(0x0084EE)) != 2 && byte(0x0084EE) == 2)) && never(dword(0x01B144) != 0) && 
              never((byte(0x0084EE) == 3 && ((word(0x009514) - prev(word(0x009514))) <= 4294967295) && (word(0x009514) -
               prev(word(0x009514))) >= 4294967291)) && never((byte(0x0084EE) == 7 && (word(0x009514) -
               prev(word(0x009514))) == 4294967295))
)

achievement(
    title = "Path of the Minimalist", points = 5,
    description = "[No NG+ | Hard | Lv.<=10] Defeat the Great Armor boss without taking damage or utilizing souls.",
    id = 147973, badge = "165392", published = "4/1/2021 7:04:41 PM", modified = "4/1/2021 7:18:28 PM",
    trigger = never(byte(0x0080A1) != 16) && never(byte(0x01B266) != 0) && never(dword(0x008088) != 139539628) && 
              once(byte(0x01B279) <= 10 && prev(dword(0x0092E4)) == 1 && dword(0x0092E4) == 0) && prev(bit7(0x00837F)) <
               bit7(0x00837F) && never(byte(0x0084EE) == 2) && never(byte(0x01B144) != 0) && never((byte(0x0084EE) == 1
               && byte(0x01B26B) != 0 && prev(word(0x00940C)) != word(0x00940C))) && never(prev(word(0x01B27A)) >
               word(0x01B27A))
)

achievement(
    title = "Path of the Summoner", points = 5,
    description = "[No NG+ | Hard | Lv.<=13] Defeat the Big Golem boss without the use of physical attacks or Bullet Souls.",
    id = 147974, badge = "165393", published = "4/1/2021 7:19:23 PM", modified = "4/1/2021 7:19:23 PM",
    trigger = never(byte(0x0080A1) != 16) && never(byte(0x01B266) != 0) && never(dword(0x008088) != 139545416) && 
              once(byte(0x01B279) <= 13 && prev(dword(0x0092E4)) == 1 && dword(0x0092E4) == 0) && prev(bit4(0x00837F)) <
               bit4(0x00837F) && never((byte(0x0084EE) == 1 && prev(word(0x009388)) != word(0x009388))) && 
              never(byte(0x0084EE) == 2)
)

achievement(
    title = "Path of the Hunter", points = 10,
    description = "[No NG+ | Hard | Lv.<=15] Defeat Headhunter without taking damage using only knives, daggers, and bows.",
    id = 147844, badge = "165229", published = "3/31/2021 10:09:16 PM", modified = "4/1/2021 2:20:15 AM",
    trigger = never(byte(0x0080A1) != 16) && never(byte(0x01B266) != 0) && never(dword(0x008088) != 139551232) && 
              once(byte(0x01B279) <= 15 && prev(dword(0x0093EC)) == 1 && dword(0x0093EC) == 0) && prev(bit4(0x00837E)) <
               bit4(0x00837E) && never((byte(0x0084EE) == 1 && byte(0x01B268) != 0 && byte(0x01B268) != 1 &&
               byte(0x01B268) != 2 && byte(0x01B268) != 42 && prev(byte(0x009490)) != byte(0x009490))) && 
              never((prev(byte(0x0084EE)) != 2 && byte(0x0084EE) == 2 && byte(0x01B269) != 6 && byte(0x01B269) != 18 &&
               byte(0x01B269) != 34)) && never(dword(0x01B144) != 0) && never(prev(word(0x01B27A)) > word(0x01B27A))
)

achievement(
    title = "Path of the Calcium-Rich", points = 10,
    description = "[No NG+ | Hard | Lv.<=20] Defeat Death without taking damage using only spears and the souls of skeletal creatures.",
    id = 147848, badge = "165230", published = "3/31/2021 11:07:23 PM", modified = "4/11/2021 5:52:53 AM",
    trigger = never(byte(0x0080A1) != 16) && never(byte(0x01B266) != 0) && never(dword(0x008088) != 139561016) && 
              once(byte(0x01B279) <= 20 && prev(dword(0x0094F4)) == 1 && dword(0x0094F4) == 0) && prev(bit1(0x00837E)) <
               bit1(0x00837E) && never((byte(0x01B268) < 43 || byte(0x01B268) > 49) && byte(0x0084EE) == 1 &&
               (word(0x009490) + word(0x009304) - prev(word(0x009490)) - prev(word(0x009304))) > 0) && 
              never((byte(0x01B269) != 1 && byte(0x01B269) != 3 && byte(0x01B269) != 6 && byte(0x01B269) != 19 &&
               byte(0x01B269) != 27 && byte(0x01B269) != 29 && byte(0x01B269) != 39 && byte(0x01B269) != 41 &&
               byte(0x01B269) != 42 && prev(byte(0x0084EE)) != 2 && byte(0x0084EE) == 2)) && never((byte(0x01B26A) != 6
               && byte(0x01B26A) != 10 && byte(0x01B26A) != 14 && prev(byte(0x01B144)) == 0 && byte(0x01B144) != 0)) && 
              never((byte(0x01B26B) != 0 && byte(0x01B26B) != 17 && byte(0x01B26B) != 22 && byte(0x01B26B) != 26 &&
               byte(0x01B26B) != 27 && byte(0x01B26B) != 29 && (word(0x009490) + word(0x009304) - prev(word(0x009490)) -
               prev(word(0x009304))) > 0)) && never(prev(word(0x01B27A)) > word(0x01B27A))
)

achievement(
    title = "Path of the Predecessor", points = 10,
    description = "[No NG+ | Hard | Lv.<=25] Defeat Legion without taking damage using only a whip and the souls of monsters from the first CV.",
    id = 147849, badge = "165238", published = "4/1/2021 1:21:37 AM", modified = "4/1/2021 1:21:37 AM",
    trigger = never(byte(0x0080A1) != 16) && never(byte(0x01B266) != 0) && never(dword(0x008088) != 139575252) && 
              once(byte(0x01B279) <= 25 && prev(dword(0x009368)) == 1 && dword(0x009368) == 0) && prev(bit5(0x00837E)) <
               bit5(0x00837E) && never((prev(byte(0x0084EE)) != 1 && byte(0x0084EE) == 1 && byte(0x01B268) != 5)) && 
              never((prev(byte(0x0084EE)) != 2 && byte(0x0084EE) == 2 && byte(0x01B269) != 2 && byte(0x01B269) != 3 &&
               byte(0x01B269) != 4 && byte(0x01B269) != 5 && byte(0x01B269) != 8 && byte(0x01B269) != 10 &&
               byte(0x01B269) != 17 && byte(0x01B269) != 20)) && never((prev(dword(0x01B144)) == 0 && dword(0x01B144) !=
               0 && byte(0x01B26A) != 2 && byte(0x01B26A) != 3 && byte(0x01B26A) != 10 && byte(0x01B26A) != 15 &&
               byte(0x01B26A) != 24)) && never((byte(0x01B26B) != 0 && byte(0x01B26B) != 12 && byte(0x01B26B) != 26 &&
               byte(0x01B26B) != 30 && (word(0x00940C) + word(0x009490) + word(0x00961C) + word(0x0097A8) +
               word(0x0099B8) - prev(word(0x00940C)) - prev(word(0x009490)) - prev(word(0x00961C)) -
               prev(word(0x0097A8)) - prev(word(0x0099B8))) > 0)) && never(prev(word(0x01B27A)) > word(0x01B27A))
)

achievement(
    title = "Path of the Pugilist", points = 10,
    description = "[No NG+ | Hard | Lv.<=30] Defeat Balore without taking damage using only fist-enhancing weapons and martial arts.",
    id = 147985, badge = "165394", published = "4/1/2021 8:35:27 PM", modified = "4/1/2021 8:35:27 PM",
    trigger = never(byte(0x0080A1) != 16) && never(byte(0x01B266) != 0) && never(dword(0x008088) != 139584808) && 
              once(byte(0x01B279) <= 30 && prev(dword(0x009368)) == 1 && dword(0x009368) == 0) && prev(bit6(0x00837E)) <
               bit6(0x00837E) && never((byte(0x0084EE) == 1 && byte(0x01B268) != 255 && byte(0x01B268) != 50 &&
               byte(0x01B268) != 51 && byte(0x01B268) != 52 && byte(0x01B268) != 53 && byte(0x01B268) != 54 &&
               prev(word(0x00940C)) != word(0x00940C))) && never((prev(byte(0x0084EE)) != 2 && byte(0x0084EE) == 2 &&
               byte(0x01B269) != 35 && byte(0x01B269) != 36)) && never((prev(dword(0x01B144)) == 0 && dword(0x01B144) !=
               0 && byte(0x01B26A) != 8 && byte(0x01B26A) != 11)) && never(prev(word(0x01B27A)) > word(0x01B27A))
)

achievement(
    title = "Path of the Warrior", points = 10,
    description = "[No NG+ | Hard | Lv.<=35] Defeat Graham without taking damage using only physical attacks.",
    id = 148041, badge = "165434", published = "4/2/2021 3:07:39 AM", modified = "4/2/2021 3:10:22 AM",
    trigger = never(byte(0x0080A1) != 16) && never(byte(0x01B266) != 0) && never(dword(0x008088) != 139591024) && 
              once(byte(0x01B279) <= 35 && prev(dword(0x0093EC)) == 1 && dword(0x0093EC) == 0) && prev(bit0(0x00837E)) <
               bit0(0x00837E) && never(byte(0x0084EE) == 2) && never(dword(0x01B144) != 0) && never(prev(word(0x01B27A))
               > word(0x01B27A))
)

achievement(
    title = "Path of the Cremator", points = 10,
    description = "[No NG+ | Hard | Lv.<=40] Defeat Julius without taking damage using only katanas and fire-based attacks.",
    id = 148014, badge = "165415", published = "4/1/2021 11:48:04 PM", modified = "4/1/2021 11:48:04 PM",
    trigger = never(byte(0x0080A1) != 16) && never(byte(0x01B266) != 0) && never(dword(0x008088) != 139556600) && 
              once(byte(0x01B279) <= 40 && prev(dword(0x009368)) == 1 && dword(0x009368) == 0) && prev(bit6(0x01B3AD)) <
               bit6(0x01B3AD) && never((byte(0x0084EE) == 1 && byte(0x01B268) != 13 && byte(0x01B268) != 28 &&
               byte(0x01B268) != 29 && byte(0x01B268) != 30 && byte(0x01B268) != 31 && byte(0x01B268) != 32 &&
               byte(0x01B268) != 33 && prev(word(0x009304)) != word(0x009304))) && never((prev(byte(0x0084EE)) != 2 &&
               byte(0x0084EE) == 2 && byte(0x01B269) != 9 && byte(0x01B269) != 23 && byte(0x01B269) != 28 &&
               byte(0x01B269) != 29 && byte(0x01B269) != 37 && byte(0x01B269) != 43 && byte(0x01B269) != 44 &&
               byte(0x01B269) != 47)) && never((prev(dword(0x01B144)) == 0 && dword(0x01B144) != 0 && byte(0x01B26A) !=
               4 && byte(0x01B26A) != 10)) && never(prev(word(0x01B27A)) > word(0x01B27A))
)

achievement(
    title = "Path of the Goetia", points = 25,
    description = "[NG+ OK | Hard | Lv.<=50] Defeat Chaos without taking damage using only pistols and the souls of demonic creatures.",
    id = 148042, badge = "165435", published = "4/2/2021 3:07:47 AM", modified = "4/6/2021 6:21:10 AM",
    trigger = never(high4(0x0080A1) != 1) && never(byte(0x01B266) != 0) && never((dword(0x008088) != 139602620 &&
               dword(0x008088) != 139602908)) && once(byte(0x01B279) <= 50 && prev(byte(0x0084EE)) == 17 &&
               byte(0x0084EE) == 0) && prev(bit7(0x00837E)) < bit7(0x00837E) && never((prev(byte(0x0084EE)) != 1 &&
               byte(0x0084EE) == 1 && byte(0x01B268) != 55 && byte(0x01B268) != 56)) && never((prev(byte(0x0084EE)) != 2
               && byte(0x0084EE) == 2 && byte(0x01B269) != 12 && byte(0x01B269) != 28 && byte(0x01B269) != 31 &&
               byte(0x01B269) != 40 && byte(0x01B269) != 43 && byte(0x01B269) != 44 && byte(0x01B269) != 49 &&
               byte(0x01B269) != 50 && byte(0x01B269) != 54)) && never((prev(dword(0x01B144)) == 0 && dword(0x01B144) !=
               0 && byte(0x01B26A) != 4 && byte(0x01B26A) != 11 && byte(0x01B26A) != 16 && byte(0x01B26A) != 18 &&
               byte(0x01B26A) != 20 && byte(0x01B26A) != 22 && byte(0x01B26A) != 23)) && never((byte(0x0084EE) != 0 ||
               dword(0x01B144) != 0) && byte(0x01B26B) != 0 && byte(0x01B26B) != 7 && byte(0x01B26B) != 13 &&
               byte(0x01B26B) != 14 && byte(0x01B26B) != 18 && byte(0x01B26B) != 31 && byte(0x01B26B) != 32 &&
               byte(0x01B26B) != 33) && never(prev(word(0x01B27A)) > word(0x01B27A))
)

achievement(
    title = "Bones Without a Soul", points = 3,
    description = "Defeat the Creaking Skull in the Castle Corridor in NOSOUL mode.",
    id = 296336, badge = "328926", published = "3/6/2023 1:32:16 AM", modified = "3/6/2023 1:32:38 AM",
    trigger = byte(0x008010) == 4 && trigger_when(prev(bit1(0x01B3A4)) < bit1(0x01B3A4)) && bit5(0x008346) == 1
)

achievement(
    title = "Corpse Without a Soul", points = 10,
    description = "Defeat Death in the Clock Tower in NOSOUL mode.",
    id = 296338, badge = "328928", published = "3/6/2023 1:32:17 AM", modified = "3/6/2023 1:32:39 AM",
    trigger = byte(0x008010) == 4 && prev(bit3(0x01B3AD)) < bit3(0x01B3AD) && bit5(0x008346) == 1
)

achievement(
    title = "Raison d'etre (NOSOUL)", points = 5,
    description = "Watch the normal ending scene in NOSOUL mode.",
    id = 296340, badge = "328930", published = "3/6/2023 1:32:18 AM", modified = "3/6/2023 1:32:39 AM",
    trigger = once(byte(0x01B266) == 0 && prior(dword(0x008088)) == 139591024 && dword(0x008088) == 139603028) && 
              never(prev(dword(0x008088)) != 139603028) && byte(0x008010) == 6 && once(bit5(0x008346) == 1)
)

achievement(
    title = "Chaotic Disposition (NOSOUL)", points = 25,
    description = "Defeat the real master of the castle and obtain the game's true ending in NOSOUL mode.",
    id = 296342, badge = "328932", published = "3/6/2023 1:32:18 AM", modified = "3/22/2023 1:53:08 PM",
    trigger = once(byte(0x01B266) == 0 && prior(dword(0x008088)) == 139605548 && dword(0x008088) == 139603028) && 
              never(prev(dword(0x008088)) != 139603028) && byte(0x008010) == 6 && once(bit5(0x008346) == 1)
)

achievement(
    title = "Entropy Distilled (NOSOUL)", points = 25,
    description = "[No NG+] Earn the game's true ending on Hard difficulty in NOSOUL mode.",
    id = 296344, badge = "328934", published = "3/6/2023 1:32:19 AM", modified = "3/6/2023 1:32:41 AM",
    trigger = once(byte(0x0080A1) == 16 && byte(0x01B266) == 0 && prior(dword(0x008088)) == 139605548 && dword(0x008088)
               == 139603028) && never(prev(dword(0x008088)) != 139603028) && byte(0x008010) == 6 && once(bit5(0x008346)
               == 1)
)

achievement(
    title = "Colosseum of Souls", points = 5,
    description = "Complete Boss Rush in NOSOUL mode",
    id = 296346, badge = "328936", published = "3/6/2023 1:32:20 AM", modified = "3/6/2023 1:32:42 AM",
    trigger = byte(0x008010) == 4 && byte(0x01B266) == 0 && byte(0x0084CC) == 17 && bit5(0x008346) == 1 && 
              prev(bit2(0x00842D)) == 0 && bit2(0x00842D) == 1
)

achievement(
    title = "Skeleton in the Closet", points = 3,
    description = "Defeat the Creaking Skull in the Castle Corridor in NOUSE mode.",
    id = 296337, badge = "328927", published = "3/6/2023 1:32:16 AM", modified = "3/6/2023 1:32:39 AM",
    trigger = byte(0x008010) == 4 && trigger_when(prev(bit1(0x01B3A4)) < bit1(0x01B3A4)) && bit4(0x008346) == 1
)

achievement(
    title = "Deathly Potion", points = 10,
    description = "Defeat Death in the Clock Tower in NOUSE mode.",
    id = 296339, badge = "328929", published = "3/6/2023 1:32:17 AM", modified = "3/6/2023 1:32:39 AM",
    trigger = byte(0x008010) == 4 && prev(bit3(0x01B3AD)) < bit3(0x01B3AD) && bit4(0x008346) == 1
)

achievement(
    title = "Raison d'etre (NOUSE)", points = 5,
    description = "Watch the normal ending scene in NOUSE mode.",
    id = 296341, badge = "328931", published = "3/6/2023 1:32:18 AM", modified = "3/6/2023 1:32:40 AM",
    trigger = once(byte(0x01B266) == 0 && prior(dword(0x008088)) == 139591024 && dword(0x008088) == 139603028) && 
              never(prev(dword(0x008088)) != 139603028) && byte(0x008010) == 6 && once(bit4(0x008346) == 1)
)

achievement(
    title = "Chaotic Disposition (NOUSE)", points = 25,
    description = "Defeat the real master of the castle and obtain the game's true ending in NOUSE mode.",
    id = 296343, badge = "328933", published = "3/6/2023 1:32:19 AM", modified = "3/22/2023 1:53:08 PM",
    trigger = once(byte(0x01B266) == 0 && prior(dword(0x008088)) == 139605548 && dword(0x008088) == 139603028) && 
              never(prev(dword(0x008088)) != 139603028) && byte(0x008010) == 6 && once(bit4(0x008346) == 1)
)

achievement(
    title = "Entropy Distilled (NOUSE)", points = 25,
    description = "[No NG+] Earn the game's true ending on Hard difficulty in NOUSE mode.",
    id = 296345, badge = "328935", published = "3/6/2023 1:32:19 AM", modified = "3/6/2023 1:32:41 AM",
    trigger = once(byte(0x0080A1) == 16 && byte(0x01B266) == 0 && prior(dword(0x008088)) == 139605548 && dword(0x008088)
               == 139603028) && never(prev(dword(0x008088)) != 139603028) && byte(0x008010) == 6 && once(bit4(0x008346)
               == 1)
)

achievement(
    title = "[void]", points = 0,
    description = "[Premier accessoire] Obtiens la cape",
    id = 50121, badge = "00080", published = "6/29/2017 10:21:12 PM", modified = "3/9/2021 9:23:14 PM",
    trigger = byte(0x01B308) == 1
)

achievement(
    title = "[void]", points = 0,
    description = "[Super saut] Obtenir la capacit____ Hippogryphe",
    id = 50117, badge = "00080", published = "6/29/2017 9:38:34 PM", modified = "3/9/2021 9:23:39 PM",
    trigger = bit0(0x01B394) >= 1
)

achievement(
    title = "[void]", points = 0,
    description = "[Pas de temps sans horloge] Battez le Chronomage avec Soma",
    id = 50116, badge = "00080", published = "6/29/2017 9:26:39 PM", modified = "3/9/2021 9:24:10 PM",
    trigger = bit0(0x01B3A5) >= 1
)

achievement(
    title = "[void]", points = 0,
    description = "[Work of Art] [IconID:116249] Turn to stone",
    id = 3140, badge = "00080", published = "10/3/2013 5:04:23 AM", modified = "3/16/2021 10:56:45 PM",
    trigger = byte(0x01B270) == 4
)

achievement(
    title = "[void]", points = 0,
    description = "[Sickly] [IconID:116250] Get poisoned",
    id = 3142, badge = "00080", published = "10/3/2013 5:04:31 AM", modified = "3/16/2021 10:57:40 PM",
    trigger = byte(0x01B270) == 1
)

achievement(
    title = "[void]", points = 0,
    description = "[What a Horrible Night] [IconID:116251] Get cursed",
    id = 3141, badge = "00080", published = "10/3/2013 5:04:27 AM", modified = "3/16/2021 10:58:26 PM",
    trigger = byte(0x01B270) == 2
)

leaderboard(
    id = 499, title = "Soma Speedrun",
    description = "Beat the game on Soma Mode (Normal)",
    start  = word(0x01B282) < 215 && byte(0x0080A1) == 0 && word(0x008088) == 64880 && word(0x00808C) == 409 && 
             prev(word(0x00808C)) != 409,
    cancel = word(0x01B27A) == 0 && prev(word(0x01B27A)) != 0,
    submit = word(0x008088) == 11348 && word(0x00808C) == 4622 && prev(word(0x00808C)) != 4622,
    value = word(0x0080AC) * 1 + word(0x0080AE) * 65536,
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 523, title = "Julius All Bosses Speedrun",
    description = "Beat the game (All Bosses) on Julius Mode (Normal)",
    start  = word(0x01B282) == 215 && byte(0x0080A1) == 0 && word(0x008088) == 64880 && word(0x00808C) == 409 && 
             prev(word(0x00808C)) != 409,
    cancel = word(0x01B27A) == 0 && prev(word(0x01B27A)) != 0,
    submit = word(0x008088) == 11348 && word(0x00808C) == 4622 && prev(word(0x00808C)) != 4622,
    value = word(0x0080AC) * 1 + word(0x0080AE) * 65536,
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 522, title = "Soma Hardrun",
    description = "Beat the game on Soma Mode (Hard)",
    start  = word(0x01B282) < 215 && byte(0x0080A1) == 16 && word(0x008088) == 64880 && word(0x00808C) == 409 && 
             prev(word(0x00808C)) != 409,
    cancel = word(0x01B27A) == 0 && prev(word(0x01B27A)) != 0,
    submit = word(0x008088) == 11348 && word(0x00808C) == 4622 && prev(word(0x00808C)) != 4622,
    value = word(0x0080AC) * 1 + word(0x0080AE) * 65536,
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 524, title = "Julius All Bosses Hardrun",
    description = "Beat the game (All Bosses) on Julius Mode (Hard)",
    start  = word(0x01B282) == 215 && byte(0x0080A1) == 16 && word(0x008088) == 64880 && word(0x00808C) == 409 && 
             prev(word(0x00808C)) != 409,
    cancel = word(0x01B27A) == 0 && prev(word(0x01B27A)) != 0,
    submit = word(0x008088) == 11348 && word(0x00808C) == 4622 && prev(word(0x00808C)) != 4622,
    value = word(0x0080AC) * 1 + word(0x0080AE) * 65536,
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 21518, title = "Boss Rush - Soma",
    description = "Complete Boss Rush as quickly as you can.",
    start  = byte(0x008010) == 4 && byte(0x01B266) == 0 && byte(0x0084CC) == 17 && prev(dword(0x008088)) == 139610036 && 
             dword(0x008088) == 139610188,
    cancel = (byte(0x008010) != 4 || byte(0x0084CC) != 17),
    submit = dword(0x008088) == 139611740 && prev(bit2(0x00842D)) < bit2(0x00842D),
    value = dword(0x009260),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 21519, title = "Boss Rush - Julius",
    description = "Complete Boss Rush as quickly as you can.",
    start  = byte(0x008010) == 4 && byte(0x01B266) == 1 && byte(0x0084CC) == 17 && prev(dword(0x008088)) == 139610036 && 
             dword(0x008088) == 139610188,
    cancel = (byte(0x008010) != 4 || byte(0x0084CC) != 17),
    submit = dword(0x008088) == 139611740 && prev(bit2(0x00842D)) < bit2(0x00842D),
    value = dword(0x009260),
    format = "FRAMES", lower_is_better = true
)
