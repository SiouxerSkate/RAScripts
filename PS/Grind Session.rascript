// Grind Session
// #ID = 5868

//////////FUNCTION DEFINITION//////////

function Skater() => word(0x09EDB0)
function Level() => word(0x09EDF0)
function GameMode() => word(0x09EDA0)
function Respect() => word(0x0a1b24)
function CompMode() => GameMode() == 0
function TrainingMode() => GameMode() == 4
function PhotoShoot() => GameMode() == 1
function Endurance() => GameMode() == 8
function HuntingtonStanding() => byte(0x09f634)
function UnlockComplete(mem) => prev(mem) == 0 && mem == 1
function ChallengeComplete(num) => prev(byte(0x0a48a0)) == (num - 1) && byte(0x0a48a0) == num

function DeltaPhotoCount() => prev(byte(0x0a1b2c)) + prev(byte(0x0a1b30)) + prev(byte(0x0a1b34)) + prev(byte(0x0a1b38)) + prev(byte(0x0a1b3c)) + prev(byte(0x0a1b40)) +  
                              prev(byte(0x0a1b6c)) + prev(byte(0x0a1b70)) + prev(byte(0x0a1b74)) + prev(byte(0x0a1b78)) + prev(byte(0x0a1b7c)) + prev(byte(0x0a1b80)) +
                              prev(byte(0x0a1bac)) + prev(byte(0x0a1bb0)) + prev(byte(0x0a1bb4)) + prev(byte(0x0a1bb8)) + prev(byte(0x0a1bbc)) + prev(byte(0x0a1bc0)) +
                              prev(byte(0x0a1bec)) + prev(byte(0x0a1bf0)) + prev(byte(0x0a1bf4)) + prev(byte(0x0a1bf8)) + prev(byte(0x0a1bfc)) + prev(byte(0x0a1c00)) +
                              prev(byte(0x0a1c2c)) + prev(byte(0x0a1c30)) + prev(byte(0x0a1c34)) + prev(byte(0x0a1c38)) + prev(byte(0x0a1c3c)) + prev(byte(0x0a1c40)) +
                              prev(byte(0x0a1c6c)) + prev(byte(0x0a1c70)) + prev(byte(0x0a1c74)) + prev(byte(0x0a1c78)) + prev(byte(0x0a1c7c)) + prev(byte(0x0a1c80)) +
                              prev(byte(0x0a1cac)) + prev(byte(0x0a1cb0)) + prev(byte(0x0a1cb4)) + prev(byte(0x0a1cb8)) + prev(byte(0x0a1cbc)) + 
                              prev(byte(0x0a1cec)) + prev(byte(0x0a1cf0)) + prev(byte(0x0a1cf4)) + prev(byte(0x0a1cf8)) + prev(byte(0x0a1cfc))
                              
function PhotoCount() => byte(0x0a1b2c) + byte(0x0a1b30) + byte(0x0a1b34) + byte(0x0a1b38) + byte(0x0a1b3c) + byte(0x0a1b40) +  
                         byte(0x0a1b6c) + byte(0x0a1b70) + byte(0x0a1b74) + byte(0x0a1b78) + byte(0x0a1b7c) + byte(0x0a1b80) +
                         byte(0x0a1bac) + byte(0x0a1bb0) + byte(0x0a1bb4) + byte(0x0a1bb8) + byte(0x0a1bbc) + byte(0x0a1bc0) +
                         byte(0x0a1bec) + byte(0x0a1bf0) + byte(0x0a1bf4) + byte(0x0a1bf8) + byte(0x0a1bfc) + byte(0x0a1c00) +
                         byte(0x0a1c2c) + byte(0x0a1c30) + byte(0x0a1c34) + byte(0x0a1c38) + byte(0x0a1c3c) + byte(0x0a1c40) +
                         byte(0x0a1c6c) + byte(0x0a1c70) + byte(0x0a1c74) + byte(0x0a1c78) + byte(0x0a1c7c) + byte(0x0a1c80) +
                         byte(0x0a1cac) + byte(0x0a1cb0) + byte(0x0a1cb4) + byte(0x0a1cb8) + byte(0x0a1cbc) + 
                         byte(0x0a1cec) + byte(0x0a1cf0) + byte(0x0a1cf4) + byte(0x0a1cf8) + byte(0x0a1cfc)
                         
function CompleteEndurance() => byte(0x0a23ac) == 1 && byte(0x0a23b0) == 1 && byte(0x0a23b4) == 1 && byte(0x0a23b8) == 1 && byte(0x0a23bc) == 1 && 
                                byte(0x0a23c0) == 1 && byte(0x0a23c4) == 1 && byte(0x0a23c8) == 1 &&
                                (prev(byte(0x0a23ac)) == 0 || prev(byte(0x0a23b0)) == 0 || prev(byte(0x0a23b4)) == 0 || prev(byte(0x0a23b8)) == 0 ||  
                                 prev(byte(0x0a23bc)) == 0 || prev(byte(0x0a23c0)) == 0 || prev(byte(0x0a23c4)) == 0 || prev(byte(0x0a23c8)) == 0)
                                 
function KeyCount() => byte(0x09f758) + byte(0x09f75c) + byte(0x09f760) + byte(0x09f764) +  
                       byte(0x09f768) + byte(0x09f76c) + byte(0x09f770) + byte(0x09f774)

function DeltaKeyCount() => prev(byte(0x09f758)) + prev(byte(0x09f75c)) + prev(byte(0x09f760)) + prev(byte(0x09f764)) +  
                            prev(byte(0x09f768)) + prev(byte(0x09f76c)) + prev(byte(0x09f770)) + prev(byte(0x09f774))
                            
function BeatGame() => prev(HuntingtonStanding()) == 0 && HuntingtonStanding() > 0   

function BoardCount() => byte(0x0a1b44) + byte(0x0a1b84) + byte(0x0a1bc4) + byte(0x0a1c04) + byte(0x0a1c44) +  
                         byte(0x0a1c84) + byte(0x0a1cc0) + byte(0x0a1cc4) + byte(0x0a1d00) + byte(0x0a1d04)

function DeltaBoardCount() => prev(byte(0x0a1b44)) + prev(byte(0x0a1b84)) + prev(byte(0x0a1bc4)) + prev(byte(0x0a1c04)) + prev(byte(0x0a1c44)) +  
                              prev(byte(0x0a1c84)) + prev(byte(0x0a1cc0)) + prev(byte(0x0a1cc4)) + prev(byte(0x0a1d00)) + prev(byte(0x0a1d04))

function CharsCount() => byte(0x0a1b48) + byte(0x0a1b88) + byte(0x0a1bc8) + byte(0x0a1c08) +   
                         byte(0x0a1c48) + byte(0x0a1c88) + byte(0x0a1cc8) + byte(0x0a1d08)

function DeltaCharsCount() => prev(byte(0x0a1b48)) + prev(byte(0x0a1b88)) + prev(byte(0x0a1bc8)) + prev(byte(0x0a1c08)) +  
                              prev(byte(0x0a1c48)) + prev(byte(0x0a1c88)) + prev(byte(0x0a1cc8)) + prev(byte(0x0a1d08))          

//////////CHEEVO DEFINITION//////////
///Dream House Key Level Dict values = [unlock points, respect value needed, SlamCity Beat or not, title for dream unlock, key points, memory of key unlock]
LevelDict = {
    "Da Banks(NYC)":           [0, 0 , 0, "Labor at Da Banks", 5, byte(0x9f758)],
    "S.F. Mission":            [1, 10, 0, "Burrito Deluxe", 5, byte(0x9f75c)],
    "Burnside":                [1, 20, 0, "In Crust We Trust", 5, byte(0x9f760)],
    "Slam City Jam":           [1, 40, 0, "A Bit AntiSocial, Aye?", 5, byte(0x9f764)],
    "Atlanta":                 [5, 63, 1, "Into the Stratosphere, RIP TT", 10, byte(0x9f768)],
    "PlayStation Park London": [5, 91, 1, "Atlantic Drifting", 10, byte(0x9f76c)],
    "Detroit":                 [5, 123, 1, "Finding Refuge", 10, byte(0x9f770)],
    "Huntington":              [10, 160, 1, "Vans Triple Crown Champ", 10, byte(0x9f774)],
}


//////////LEVEL CHEEVOS//////////
//////////DREAM HOUSE CHEEVOS//////////
function KeyUnlocked(mem)
{
    return UnlockComplete(mem) && (CompMode() || PhotoShoot())
}

function SlamCityBeat(num, respect)
{
    if num == 0
    {
        return_val = byte(0x09f624) == 0 && prev(Respect()) < respect
    }
    else
    {
         return_val = byte(0x09f624) > 0 &&
                     (
                      prev(Respect()) < respect ||
                      prev(byte(0x09f624)) == 0
                     )
    }
    return return_val
}

function LevelandDreamHouseCheevos()
{
    for key in LevelDict
    {
        ////Unlock Level
        value_list = LevelDict[key]
        title = key
        description = "Unlock the level, " + key
        points = value_list[0]
        respect = value_list[1]
        trigger = CompMode() && Respect() >= respect && SlamCityBeat(value_list[2], respect)
        achievement(title, description, points, trigger)
        
        ///DreamHouse below
        title = value_list[3]
        description = "Acquire Dream House Key from " + key
        points = value_list[4]
        trigger = KeyUnlocked(value_list[5])
        achievement(title, description, points, trigger) 
    }
}

LevelandDreamHouseCheevos()

achievement(title="Dropping In", description="Complete the Training Level", points=1, 
            trigger= TrainingMode() && Level() == 0x09 && ChallengeComplete(9)
            )

achievement(title="Cover of the Mag", description="Complete your first photoshoot", points=1, 
            trigger= PhotoShoot() && DeltaPhotoCount() == 0 && PhotoCount() == 1
            )

achievement(title="Fantasy Factory?", description="Unlock the Dream House(Must beat the game and acquire at least one key)", points=10,
////DONT UPLOAD SO THE ORCHAIN DOESNT GET BROKEN  
            trigger= CompMode() && 
                    ((KeyCount() >= 1 && BeatGame()) || 
                     (HuntingtonStanding() > 0 && DeltaKeyCount() == 0 && KeyCount() == 1)  
                    )
            )

achievement(title="Rolling With Speyer", description="Unlock Convoy Level by completing Endurance Mode", points=25, 
            trigger= Endurance() && CompleteEndurance()
            )
            
achievement(title="Have You Seen Him?", description="Acquire 8 medals in Dream House to meet you master", points=25,
////DONT UPLOAD SO THE ORCHAIN DOESNT GET BROKEN 
            trigger= CompMode() && 
                     (Level() == 0x0a || Level() == 0x0b) && 
                     (
                      (bit5(0x09eda4) == 1 && prev(bit6(0x09eda4)) == 0 && bit6(0x09eda4)== 1) ||
                      (bit6(0x09eda4) == 1 && prev(bit5(0x09eda4)) == 0 && bit5(0x09eda4) == 1)
                     )
            )
            
            
//////////CHARACTER CHEEVOS//////////
////Skater lookup dict value list = [Skater ID, Title For Beat, Title for Photos, Title for Boards, Title for special Charcter, Title for Video Unlock, unlock memory start]
SkaterDict = {
    "Willy Santos":         [0, "One Flew the Birdhouse",    "Connecting the Dots", "Willy's Workshop",           "The Skating Terror",     "Man Or Astro-Man",           0x0a1b2c],
    "Daewon Song":          [1, "Thank You Skateboarding",   "Round 4",             "DECAmate the Competition",   "Reptilian Rex",          "Out For Fame",               0x0a1b6c],
    "Cara-beth Burnside":   [2, "Powell Ripper",             "Not Bad For A Girl",  "Action Sports Alliance",     "Hiya! Hang Man",         "Empty Hearted",              0x0a1bac],
    "Ed Templeton":         [3, "Toy's Benevolnet Overlord", "Suffer the Joy",      "Welcome To Hell",            "Close Encounters",       "Sonic Youth",                0x0a1bec],
    "Pigpen":               [4, "Hell Bent",                 "Fatted and Tatted",   "Go Loud for the Grond",      "Whale C##K Skateboards", "My Closest Friend Linoleum", 0x0a1c2c],
    "John Cardiel":         [5, "A Real AntiHero",           "Cash Money Vagrant",  "Break Free",                 "Possesed to Skate",      "Rise Above",                 0x0a1c6c],
    "Custom Female Skater": [6, "Tuff Customer",             "Girls 4 Eva",         "Betty in the Skate Kitchen", "The Stinger",            "The X-Ecutioners",           0x0a1cac],
    "Custom Male Skater":   [8, "Moonage Daydream",          "Stacking Clips",      "The Good Homie",             "Golgothan Goliath",      "The Slam Section",           0x0a1cec],
}

function PhotoCheck(mem, skater, delta)
{
    if skater >= 6
    {
        num = 5
        if delta == 1
        {
            return (prev(byte(mem)) + prev(byte(mem + 0x04)) + prev(byte(mem + 0x08)) + prev(byte(mem + 0x0c)) + prev(byte(mem + 0x10))) == (num - 1)
        }
        else
        {
            return (byte(mem) + byte(mem + 0x04) + byte(mem + 0x08) + byte(mem + 0x0c) + byte(mem + 0x10)) == num
        }
        
    }
    else
    {
        num = 6
        if delta == 0
        {
            return (byte(mem) + byte(mem + 0x04) + byte(mem + 0x08) + byte(mem + 0x0c) + byte(mem + 0x10) + byte(mem + 0x14)) == num
        }
        else
        {
            return (prev(byte(mem)) + prev(byte(mem + 0x04)) + prev(byte(mem + 0x08)) + prev(byte(mem + 0x0c)) + prev(byte(mem + 0x10)) + prev(byte(mem + 0x14))) == (num - 1)
        }
    }
}

function ObtainPhotos(skater, mem_start)
{
    return PhotoCheck(mem_start, skater, 1) && PhotoCheck(mem_start, skater, 0)
}

function BoardCheck(mem, skater, delta)
{
    if skater >= 6
    {
        num = 2
        if delta == 1
        {
            return (prev(byte(mem + 0x14)) + prev(byte(mem + 0x18))) == (num - 1)
        }
        else
        {
            return (byte(mem + 0x14) + byte(mem + 0x18)) == num
        }
    }
    else
    {
        num = 1
        if delta == 0
        {
            return byte(mem + 0x18) == num
        }
        else
        {
            return prev(byte(mem + 0x18)) == (num - 1)
        }
    }
}

function ObtainBoards(skater, mem_start)
{
    return BoardCheck(mem_start, skater, 1) && BoardCheck(mem_start, skater, 0)
}

function CharCheck(skater, mem, delta)
{
    if delta == 0
    {
        return byte(mem + 0x1c) == 1
    }
    else
    {
        return prev(byte(mem + 0x1c)) == 0
    }
}

function ObtainChar(skater, mem_start)
{
    return CharCheck(skater, mem_start, 1) && CharCheck(skater, mem_start, 0)
}

function ObtainVid(skater, mem_start)
{
    return PhotoCheck(mem_start, skater, 0) && BoardCheck(mem_start, skater, 0) && CharCheck(skater, mem_start, 0) &&
          (
            PhotoCheck(mem_start, skater, 1) ||
            BoardCheck(mem_start, skater, 1) ||
            CharCheck(skater, mem_start, 1)
          )
}

function CheckSkater(skater_id)
{
    if skater_id < 6
    {
        return Skater() == skater_id
    }
    else
    {
        return Skater() == skater_id ||
               Skater() == skater_id + 1
    }
}

function SkaterCheevos()
{
    for key in SkaterDict
    {
        value_list = SkaterDict[key]
        skater_id = value_list[0]
        ////Beat the Game
        title = value_list[1]
        description = "Beat the game with " + key
        trigger = CompMode() && BeatGame() && CheckSkater(skater_id)
        achievement(title, description, 5, trigger)
        
        ////All Photos
        title = value_list[2]
        description = "Obtain all photos of " + key
        trigger = PhotoShoot() && CheckSkater(skater_id) && ObtainPhotos(skater_id, value_list[6])
        achievement(title, description, 5, trigger)
        
        ////Boards
        title = value_list[3]
        description = "Unlock all boards from photoshoots for " + key
        trigger = PhotoShoot() && CheckSkater(skater_id) && ObtainBoards(skater_id, value_list[6])
        achievement(title, description, 5, trigger)
        
        ////Special Character
        title = value_list[4]
        description = "Unlock special character as " + key
        trigger = PhotoShoot() && CheckSkater(skater_id) && ObtainChar(skater_id, value_list[6])
        achievement(title, description, 5, trigger)
        
        ////All
        title = value_list[5]
        description = "Unlock the skate video for " + key
        trigger = PhotoShoot() && CheckSkater(skater_id) && ObtainVid(skater_id, value_list[6])
        achievement(title, description, 10, trigger)
    }
}

SkaterCheevos()

//////////MASTERY CHEEVOS//////////
achievement(title="Master Lensmen", description="Unlock all pictures of all skaters", points=25, 
            trigger= PhotoShoot() && DeltaPhotoCount() == 45 && PhotoCount() == 46
            )

achievement(title="Is that Professor Schmidt?", description="Unlock all boards from photoshoots of all skaters", points=10, 
            trigger= PhotoShoot() && DeltaBoardCount() == 9 && BoardCount() == 10
            )
            
achievement(title="Forbidden Secrets", description="Unlock all Special Characters from skaters", points=25, 
            trigger= PhotoShoot() && DeltaCharsCount() == 7 && CharsCount() == 8
            )

achievement(title="G.S.S.O.T.Y", description="Unlock All Videos for all characters", points=50, 
            trigger= PhotoShoot() && PhotoCount() == 46 && BoardCount() == 10 && CharsCount() == 8 &&
                     (
                      DeltaPhotoCount() == 45 ||
                      DeltaBoardCount() == 9  ||
                      DeltaCharsCount() == 7
                     )
            )

//////////RP DEFINITION//////////
SkaterLookup = {
    0x00: "Willy Santos",
    0x01: "Daewon Song",
    0x02: "Cara-beth Burnside",
    0x03: "Ed Templeton",
    0x04: "Pigpen",
    0x05: "JOHN F****N CARDIEL",
    0x06: "Custom Skater Female 1",
    0x07: "Custom Skater Female 2",
    0x08: "Customer Skater Male 1",
    0x09: "Custom Skater Male 2",
    0x0A: "Skator",
    0x0B: "Rex",
    0x0C: "Hang Man",
    0x0D: "Stanley",
    0x0E: "Dave Carnie",
    0x0F: "Demon",
    0x10: "Stinger",
    0x11: "Golgotha",
    0x12: "Master Ao",
}

LevelLookup = {
    0x00: "Da Banks(NYC)",
    0x01: "S.F. Mission",
    0x02: "Burnside",
    0x03: "Slam City Jam",
    0x04: "Atlanta",
    0x05: "PlayStation Park London",
    0x06: "Detroit",
    0x07: "Huntington",
    0x0a: "Dream House East Wing",
    0x0b: "Dream House West Wing",
    0x0c: "Convoy",
}

ModeLookup = {
    0x00: "Tournament",
    0x01: "Photo Shoot",
    0x03: "Open Skate",
    0x04: "Training",
    0x05: "2 player Competition",
    0x06: "2 player Tech challenge",
    0x07: "2player Skate",
    0x08: "Endurance",
    0x09: "Nothing picked",
}

rich_presence_conditional_display(word(0x09EDA0) == 9, "Waiting to GRIND!")

rich_presence_conditional_display(word(0x09EDF0) == 8, "Saving the GRIND!")

rich_presence_display("Sparking the session in {0} as {1} in {2}. Points This Session: {3}, Number Of Tricks this Session: {4}",
    rich_presence_lookup("Mode", word(0x09EDA0), ModeLookup),
    rich_presence_lookup("Skater", word(0x09EDB0), SkaterLookup),
    rich_presence_lookup("Level", word(0x09EDF0), LevelLookup),
    rich_presence_value("Number", word(0x0A3F38)),
    rich_presence_value("Number", word(0x0A3FA4))
)



