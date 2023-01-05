// Kaze no Klonoa: Moonlight Museum
// #ID = 14601

function FinishLevel() => prev(byte(0x001380)) == 1 && byte(0x001380) == 7

function FinishLevelTrigger() => trigger_when(prev(byte(0x001380)) == 1) && trigger_when(byte(0x001380) == 7)

function AllGems() => byte(0x0013de) == 0x1e

function World() => byte(0x00130A)

function Vision() => byte(0x00130C)

function CompletePainting() => prev(byte(0x0013df)) < 0xb4 && byte(0x0013df) == 0xb4

function DamageLock() => disable_when(byte(0x0013E0) < prev(byte(0x0013E0)), until=byte(0x001380) == 0x02)

function LifeLock() => disable_when(byte(0x0013e1) < prev(byte(0x0013e1)), until=byte(0x001380) == 0x02)

achievement(
    title = "Welcome To Your Dream", description = "Complete Vision 1-1", points = 1,
    id = 165296, badge = "186100", published = "8/11/2021 7:15:14 PM", modified = "8/16/2021 2:35:34 PM",
    trigger = FinishLevel() && World() == 0x00 && Vision() == 0x00
)

achievement(
    title = "Let's Illuminate the Night", description = "Complete Vision 1-3", points = 1,
    id = 165298, badge = "186102", published = "8/11/2021 7:15:15 PM", modified = "8/13/2021 2:51:06 PM",
    trigger = FinishLevel() && World() == 0x00 && Vision() == 0x02
)

achievement(
    title = "Quiet Hometown", description = "Complete painting in World 1", points = 5,
    id = 165304, badge = "186108", published = "8/11/2021 7:15:17 PM", modified = "8/13/2021 2:51:08 PM",
    trigger = World() == 0 && CompletePainting() && byte(0x001486) == 0xb4
)

achievement(
    title = "1-1 Gems", description = "On Vision 1-1 finish the level with all gems without taking damage or losing a life", points = 1,
    id = 165297, badge = "186101", published = "8/11/2021 7:15:15 PM", modified = "9/16/2021 2:39:10 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x00 && Vision() == 0x00 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "1-2 Gems", description = "On Vision 1-2 finish the level with all gems without taking damage or losing a life", points = 1,
    id = 165300, badge = "186104", published = "8/11/2021 7:15:16 PM", modified = "9/16/2021 2:39:10 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x00 && Vision() == 0x01 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "1-3 Gems", description = "On Vision 1-3 finish the level with all gems without taking damage or losing a life", points = 1,
    id = 165299, badge = "186103", published = "8/11/2021 7:15:15 PM", modified = "9/16/2021 2:39:16 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x00 && Vision() == 0x02 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "1-4 Gems", description = "On Vision 1-4 finish the level with all gems without taking damage or losing a life", points = 1,
    id = 165301, badge = "186105", published = "8/11/2021 7:15:16 PM", modified = "9/16/2021 2:39:16 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x00 && Vision() == 0x03 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "1-5 Gems", description = "On Vision 1-5 finish the level with all gems without taking damage or losing a life", points = 1,
    id = 165302, badge = "186106", published = "8/11/2021 7:15:16 PM", modified = "9/16/2021 2:39:17 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x00 && Vision() == 0x04 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "1-6 Gems", description = "On Vision 1-6 finish the level with all gems without taking damage or losing a life", points = 1,
    id = 165303, badge = "186107", published = "8/11/2021 7:15:17 PM", modified = "9/16/2021 2:39:17 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x00 && Vision() == 0x05 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "What A Huge Statue", description = "Complete Vision 2-2", points = 1,
    id = 165305, badge = "186109", published = "8/11/2021 7:15:17 PM", modified = "8/13/2021 2:51:09 PM",
    trigger = FinishLevel() && World() == 0x01 && Vision() == 0x01
)

achievement(
    title = "I Am Not Tiny", description = "Complete Vision 2-4", points = 1,
    id = 165306, badge = "186110", published = "8/11/2021 7:15:18 PM", modified = "8/13/2021 2:51:09 PM",
    trigger = FinishLevel() && World() == 0x01 && Vision() == 0x03
)

achievement(
    title = "Giant Fortress", description = "Complete painting in World 2", points = 5,
    id = 165307, badge = "186111", published = "8/11/2021 7:15:18 PM", modified = "8/13/2021 2:51:09 PM",
    trigger = World() == 1 && CompletePainting() && byte(0x00148e) == 0xb4
)

achievement(
    title = "2-1 Gems", description = "On Vision 2-1 finish the level with all gems without taking damage or losing a life", points = 5,
    id = 165308, badge = "186112", published = "8/11/2021 7:15:18 PM", modified = "9/16/2021 2:39:17 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x01 && Vision() == 0x00 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "2-2 Gems", description = "On Vision 2-2 finish the level with all gems without taking damage or losing a life", points = 5,
    id = 165309, badge = "186113", published = "8/11/2021 7:15:19 PM", modified = "9/16/2021 2:39:18 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x01 && Vision() == 0x01 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "2-3 Gems", description = "On Vision 2-3 finish the level with all gems without taking damage or losing a life", points = 5,
    id = 165310, badge = "186114", published = "8/11/2021 7:15:19 PM", modified = "9/16/2021 2:39:18 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x01 && Vision() == 0x02 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "2-4 Gems", description = "On Vision 2-4 finish the level with all gems without taking damage or losing a life", points = 5,
    id = 165311, badge = "186115", published = "8/11/2021 7:15:19 PM", modified = "9/16/2021 2:39:18 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x01 && Vision() == 0x03 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "2-5 Gems", description = "On Vision 2-5 finish the level with all gems without taking damage or losing a life", points = 5,
    id = 165312, badge = "186116", published = "8/11/2021 7:15:20 PM", modified = "9/16/2021 2:39:19 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x01 && Vision() == 0x04 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "2-6 Gems", description = "On Vision 2-6 finish the level with all gems without taking damage or losing a life", points = 5,
    id = 165313, badge = "186117", published = "8/11/2021 7:15:20 PM", modified = "9/16/2021 2:39:19 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x01 && Vision() == 0x05 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "Thrill and Horror!", description = "Complete Vision 3-2", points = 5,
    id = 165314, badge = "186118", published = "8/11/2021 7:15:20 PM", modified = "8/13/2021 2:51:12 PM",
    trigger = FinishLevel() && World() == 0x02 && Vision() == 0x01
)

achievement(
    title = "Tremble and Quiver!", description = "Complete Vision 3-4", points = 5,
    id = 165315, badge = "186119", published = "8/11/2021 7:15:21 PM", modified = "8/13/2021 2:51:12 PM",
    trigger = FinishLevel() && World() == 0x02 && Vision() == 0x03
)

achievement(
    title = "Laughing Prison", description = "Complete painting in World 3", points = 10,
    id = 165316, badge = "186120", published = "8/11/2021 7:15:21 PM", modified = "8/13/2021 2:51:12 PM",
    trigger =  World() == 2 && CompletePainting() && byte(0x001496) == 0xb4
)

achievement(
    title = "3-1 Gems", description = "On Vision 3-1 finish the level with all gems without taking damage or losing a life", points = 5,
    id = 165317, badge = "186121", published = "8/11/2021 7:15:21 PM", modified = "9/16/2021 2:39:20 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x02 && Vision() == 0x00 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "3-2 Gems", description = "On Vision 3-2 finish the level with all gems without taking damage or losing a life", points = 5,
    id = 165318, badge = "186122", published = "8/11/2021 7:15:22 PM", modified = "9/16/2021 2:39:20 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x02 && Vision() == 0x01 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "3-3 Gems", description = "On Vision 3-3 finish the level with all gems without taking damage or losing a life", points = 5,
    id = 165319, badge = "186123", published = "8/11/2021 7:15:22 PM", modified = "9/16/2021 2:39:20 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x02 && Vision() == 0x02 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "3-4 Gems", description = "On Vision 3-4 finish the level with all gems without taking damage or losing a life", points = 5,
    id = 165320, badge = "186124", published = "8/11/2021 7:15:22 PM", modified = "9/16/2021 2:39:21 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x02 && Vision() == 0x03 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "3-5 Gems", description = "On Vision 3-5 finish the level with all gems without taking damage or losing a life", points = 5,
    id = 165321, badge = "186125", published = "8/11/2021 7:15:23 PM", modified = "9/16/2021 2:39:21 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x02 && Vision() == 0x04 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "3-6 Gems", description = "On Vision 3-6 finish the level with all gems without taking damage or losing a life", points = 5,
    id = 165322, badge = "186126", published = "8/11/2021 7:15:23 PM", modified = "9/16/2021 2:39:21 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x02 && Vision() == 0x05 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "I Will Photograph Your Heart and Dreams", description = "Complete Vision 4-2", points = 5,
    id = 165323, badge = "186127", published = "8/11/2021 7:15:23 PM", modified = "8/13/2021 2:51:15 PM",
    trigger = FinishLevel() && World() == 0x03 && Vision() == 0x01
)

achievement(
    title = "Tonight's Moon May Be Too Bright", description = "Complete Vision 4-4", points = 5,
    id = 165324, badge = "186128", published = "8/11/2021 7:15:24 PM", modified = "8/13/2021 2:51:15 PM",
    trigger = FinishLevel() && World() == 0x03 && Vision() == 0x03
)

achievement(
    title = "Palace Of Clouds", description = "Complete painting in World 4", points = 10,
    id = 165325, badge = "186129", published = "8/11/2021 7:15:24 PM", modified = "8/13/2021 2:51:01 PM",
    trigger = World() == 3 && CompletePainting() && byte(0x00149e) == 0xb4
)

achievement(
    title = "4-1 Gems", description = "On Vision 4-1 finish the level with all gems without taking damage or losing a life", points = 10,
    id = 165326, badge = "186130", published = "8/11/2021 7:15:24 PM", modified = "9/16/2021 2:39:22 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x03 && Vision() == 0x00 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "4-2 Gems", description = "On Vision 4-2 finish the level with all gems without taking damage or losing a life", points = 10,
    id = 165327, badge = "186131", published = "8/11/2021 7:15:25 PM", modified = "9/16/2021 2:39:19 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x03 && Vision() == 0x01 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "4-3 Gems", description = "On Vision 4-3 finish the level with all gems without taking damage or losing a life", points = 10,
    id = 165328, badge = "186132", published = "8/11/2021 7:15:25 PM", modified = "9/16/2021 2:39:11 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x03 && Vision() == 0x02 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "4-4 Gems", description = "On Vision 4-4 finish the level with all gems without taking damage or losing a life", points = 25,
    id = 165329, badge = "186133", published = "8/11/2021 7:15:25 PM", modified = "9/16/2021 2:39:13 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x03 && Vision() == 0x03 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "4-5 Gems", description = "On Vision 4-5 finish the level with all gems without taking damage or losing a life", points = 10,
    id = 165330, badge = "186134", published = "8/11/2021 7:15:26 PM", modified = "9/16/2021 2:39:13 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x03 && Vision() == 0x04 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "4-6 Gems", description = "OnVision 4-6 finish the level with all gems without taking damage or losing a life", points = 10,
    id = 165331, badge = "186135", published = "8/11/2021 7:15:26 PM", modified = "9/16/2021 2:39:12 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x03 && Vision() == 0x05 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "Art and Dreams Are One", description = "Complete Vision 5-2", points = 5,
    id = 165333, badge = "186137", published = "8/11/2021 7:15:27 PM", modified = "8/13/2021 2:50:58 PM",
    trigger = FinishLevel() && World() == 0x04 && Vision() == 0x01
)

achievement(
    title = "Whose Dream Is This In the End", description = "Complete Vision 5-4", points = 5,
    id = 165334, badge = "186138", published = "8/11/2021 7:15:27 PM", modified = "8/13/2021 2:50:59 PM",
    trigger = FinishLevel() && World() == 0x04 && Vision() == 0x03
)

achievement(
    title = "Selfish Museum", description = "Complete painting in World 5", points = 25,
    id = 165335, badge = "186139", published = "8/11/2021 7:15:27 PM", modified = "8/13/2021 2:50:59 PM",
    trigger = World() == 4 && CompletePainting() && byte(0x0014a6) == 0xb4
)

achievement(
    title = "5-1 Gems", description = "On Vision 5-1 finish the level with all gems without taking damage or losing a life", points = 10,
    id = 165336, badge = "186140", published = "8/11/2021 7:15:28 PM", modified = "9/16/2021 2:39:12 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x04 && Vision() == 0x00 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "5-2 Gems", description = "On Vision 5-2 finish the level with all gems without taking damage or losing a life", points = 10,
    id = 165337, badge = "186141", published = "8/11/2021 7:15:28 PM", modified = "9/16/2021 2:39:12 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x04 && Vision() == 0x01 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "5-3 Gems", description = "On Vision 5-3 finish the level with all gems without taking damage or losing a life", points = 10,
    id = 165338, badge = "186142", published = "8/11/2021 7:15:28 PM", modified = "9/16/2021 2:39:11 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x04 && Vision() == 0x02 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "5-4 Gems", description = "On Vision 5-4 finish the level with all gems without taking damage or losing a life", points = 10,
    id = 165339, badge = "186143", published = "8/11/2021 7:15:29 PM", modified = "9/16/2021 2:39:11 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x04 && Vision() == 0x03 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "5-5 Gems", description = "On Vision 5-5 finish the level with all gems without taking damage or losing a life", points = 10,
    id = 165340, badge = "186144", published = "8/11/2021 7:15:29 PM", modified = "9/16/2021 2:39:10 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x04 && Vision() == 0x04 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "5-6 Gems", description = "On Vision 5-6 finish the level with all gems without taking damage or losing a life", points = 25,
    id = 165341, badge = "186145", published = "8/11/2021 7:15:29 PM", modified = "9/16/2021 2:39:14 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x04 && Vision() == 0x05 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "Let's Make Our Dreams", description = "Complete Vision EX-1", points = 10,
    id = 165342, badge = "186146", published = "8/11/2021 7:15:30 PM", modified = "8/13/2021 2:51:01 PM",
    trigger = FinishLevel() && World() == 0x05 && Vision() == 0x00
)

achievement(
    title = "No, We're Not Finished Yet", description = "Complete Vision EX-2", points = 10,
    id = 165343, badge = "186147", published = "8/11/2021 7:15:30 PM", modified = "8/13/2021 2:51:02 PM",
    trigger = FinishLevel() && World() == 0x05 && Vision() == 0x01
)

achievement(
    title = "We Can Keep Going", description = "Complete Vision EX-3", points = 10,
    id = 165344, badge = "186148", published = "8/11/2021 7:15:30 PM", modified = "8/13/2021 2:51:02 PM",
    trigger = FinishLevel() && World() == 0x05 && Vision() == 0x02
)

achievement(
    title = "Oui! Oui!", description = "Complete Vision EX-4", points = 10,
    id = 165345, badge = "186149", published = "8/11/2021 7:15:31 PM", modified = "8/13/2021 2:51:02 PM",
    trigger = FinishLevel() && World() == 0x05 && Vision() == 0x03
)

achievement(
    title = "How About We Try Once More", description = "Complete Vision EX-5", points = 5,
    id = 165346, badge = "186150", published = "8/11/2021 7:15:31 PM", modified = "8/13/2021 2:51:03 PM",
    trigger = FinishLevel() && World() == 0x05 && Vision() == 0x04
)

achievement(
    title = "Could You Let The Moon Rest a Little While", description = "Complete Vision EX-6", points = 10,
    id = 165347, badge = "186151", published = "8/11/2021 7:15:31 PM", modified = "8/17/2021 6:10:31 PM",
    trigger = FinishLevel() && World() == 0x05 && Vision() == 0x05
)

achievement(
    title = "Extra Moon Painting", description = "Complete painting in World Ex", points = 50,
    id = 165348, badge = "186152", published = "8/11/2021 7:15:32 PM", modified = "8/13/2021 2:51:03 PM",
    trigger = World() == 5 && CompletePainting() && byte(0x0014ae) == 0xb4
)

achievement(
    title = "Ex-1 Gems", description = "On Vision Ex-1 finish the level with all gems without taking damage or losing a life", points = 25,
    id = 165349, badge = "186153", published = "8/11/2021 7:15:32 PM", modified = "9/16/2021 2:39:14 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x05 && Vision() == 0x00 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "Ex-2 Gems", description = "On Vision Ex-2 finish the level with all gems without taking damage or losing a life", points = 25,
    id = 165350, badge = "186154", published = "8/11/2021 7:15:32 PM", modified = "9/16/2021 2:39:15 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x05 && Vision() == 0x01 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "Ex-3 Gems", description = "On Vision Ex-3 finish the level with all gems without taking damage or losing a life", points = 25,
    id = 165351, badge = "186155", published = "8/11/2021 7:15:33 PM", modified = "9/16/2021 2:39:15 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x05 && Vision() == 0x02 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "Ex-4 Gems", description = "On Vision Ex-4 finish the level with all gems without taking damage or losing a life", points = 50,
    id = 165352, badge = "186156", published = "8/11/2021 7:15:33 PM", modified = "9/16/2021 2:39:15 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x05 && Vision() == 0x03 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "Ex-5 Gems", description = "On Vision Ex-5 finish the level with all gems without taking damage or losing a life", points = 10,
    id = 165353, badge = "186157", published = "8/11/2021 7:15:33 PM", modified = "9/16/2021 2:39:16 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x05 && Vision() == 0x04 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "Ex-6 Gems", description = "On Vision Ex-6 finish the level with all gems without taking damage or losing a life", points = 25,
    id = 165354, badge = "186158", published = "8/11/2021 7:15:34 PM", modified = "9/16/2021 2:39:13 PM",
    trigger = trigger_when(AllGems()) && FinishLevelTrigger() && 
              World() == 0x05 && Vision() == 0x05 && 
              DamageLock() && LifeLock()
)

achievement(
    title = "Life Hunter", description = "Have 30 Lives", points = 10,
    id = 165332, badge = "186136", published = "8/11/2021 7:15:26 PM", modified = "8/13/2021 4:16:36 PM",
    trigger = byte(0x001395) == 0x01 && prev(byte(0x0013E1)) == 0x1D && measured(byte(0x0013E1) == 0x1E)
)

leaderboard(
    id = 24595, title = "Survivalist",
    description = "Complete Ex-6 With Most Lives",
    start  = byte(0x00130A) == 0x05,
    cancel = byte(0x00130A) != 0x04,
    submit = byte(0x0014AE) == 0xB4 && prev(byte(0x0014AE)) < 0xB4,
    value = byte(0x0013E1),
    format = "VALUE"
)

leaderboard(
    id = 24596, title = "Time Attack Ex-1",
    description = "Fastest Time in Ex-1",
    start  = byte(0x00130A) == 0x05 && byte(0x00130C) == 0x00 && byte(0x001395) == 0x01,
    cancel = byte(0x00130C) != 0x00,
    submit = byte(0x001395) == 0x01 && prev(byte(0x001395)) == 0x00,
    value = word(0x001442) * 1.333333,
    format = "MILLISECS"
)

leaderboard(
    id = 24598, title = "Time Attack Ex-2",
    description = "Fastest Time in Ex-2",
    start  = byte(0x00130A) == 0x05 && byte(0x00130C) == 0x01 && byte(0x001395) == 0x01 && prev(byte(0x001395)) == 0x00,
    cancel = byte(0x00130C) != 0x01,
    submit = byte(0x001395) == 0x01 && prev(byte(0x001395)) == 0x00,
    value = word(0x001442) * 1.333333,
    format = "MILLISECS"
)
