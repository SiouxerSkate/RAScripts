// Rampage: World Tour
// #ID = 10087

//Functions

function GameState() => byte(0x079828)
function InGame() => GameState() == 1
function Player1Id() => byte(0x07982a)
function P1George() => Player1Id() == 0
function P1Lizzie() => Player1Id() == 1
function P1Ralph() => Player1Id() == 2
function USCityID() => word(0x0db0a2)
function CityID() => byte(0x0db0a4)
function CountryID() => byte(0x0db0a8)
function TimeRemaining() => word(0x0db762)
function CompletePercentage() => prev(byte(0x0db76c))
function BuildingRemaining() => byte(0x0db0ba)
function BeatFullPercentage() => trigger_when(CompletePercentage() == 0x64) && trigger_when(prev(BuildingRemaining()) == 1) && trigger_when(BuildingRemaining() == 0) && TimeRemaining() > 0
function BeatFullNoTrigger() => CompletePercentage() == 0x64 && prev(BuildingRemaining()) == 1 && BuildingRemaining() == 0 && TimeRemaining() > 0
function BeatLevelAnyPercent() => prev(BuildingRemaining()) == 1 && BuildingRemaining() == 0
function LifeLost() => prev(byte(0x0c0820)) > byte(0x0c0820)
function PauseLockDeath() => disable_when(DamageTaken(), until=(MapID() != map_id)) &&
                             MapID() == map_id &&
                             trigger_when(MaxLifeIncrease()) &&
                             unless(MusicId() != 0x15)




// Level Dict key=Name, val=[country id, city id, points 100%, 100% cheevo Name, scumlab here?, points scum]
LevelDict = {
    "Peoria, Illinois":           [0x00, 0x00, 1, "Babies First Demolition", false, "NA"],
    "Kankakee, Illinois":         [0x00, 0x01, 0, "NA", false, "NA"],
    "Cook County, Illinois":      [0x00, 0x02, 0, "NA", false, "NA"],
    "Chicago Loop, Illinois":     [0x00, 0x03, 5, "Chicago Name", false, "NA"],
    "Gary, Indiana":              [0x00, 0x04, 0, "NA", false, "NA"],
    "Michigan City, Indiana":     [0x00, 0x05, 0, "NA", false, "NA"],
    "Ann Arbor, Michigan":        [0x00, 0x06, 0, "NA", false, "NA"],
    "Detroit, Michigan":          [0x00, 0x07, 0, "NA", false, "NA"],
    "Cleveland, Ohio":            [0x00, 0x08, 0, "NA", false, "NA"],
    "Toledo, Ohio":               [0x00, 0x09, 0, "NA", false, "NA"],
    "Pittsburgh, Pennsylvania":   [0x00, 0x0A, 0, "NA", false, "NA"],
    "Newark, New Jersey":         [0x00, 0x0B, 0, "NA", false, "NA"],
    "New York City, USA":         [0x00, 0x0C, 5, "New York Name", false, "NA"],
    "Long Island, New York":      [0x00, 0x0D, 0, "NA", false, "NA"],
    "Philadelphia, Pennsylvania": [0x00, 0x0E, 0, "NA", false, "NA"],
    "Atlantic City, New Jersey":  [0x00, 0x0F, 0, "NA", false, "NA"],
    "Washington D.C, USA":        [0x00, 0x10, 5, "DC Name", false, "NA"],
    "Virginia Beach, Virginia":   [0x00, 0x11, 0, "NA", false, "NA"],
    "Atlanta, Georgia":           [0x00, 0x12, 0, "NA", true, "Scum of the Stratosphere", 5],
    "Gainesville, Florida":       [0x00, 0x13, 0, "NA", false, "NA"],
    "Daytona, Florida":           [0x00, 0x14, 0, "NA", false, "NA"],
    "Orlando, Florida":           [0x00, 0x15, 0, "NA", false, "NA"],
    "Miami, Florida":             [0x00, 0x16, 0, "NA", false, "NA"],
    "Key Largo, Florida":         [0x00, 0x17, 0, "NA", false, "NA"],
    "New Orleans, Louisiana":       [0x00, 0x18, 0, "NA", false, "NA"],
    "Baton Rouge, Louisiana":       [0x00, 0x19, 0, "NA", false, "NA"],
    "Houston, Texas":               [0x00, 0x1A, 5, "Houston Name", false, "NA"],
    "Dallas, Texas":                [0x00, 0x1B, 0, "NA", false, "NA"],
    "Oklahoma City, Oklahoma":      [0x00, 0x1C, 0, "NA", false, "NA"],
    "Amarillo, Texas":              [0x00, 0x1D, 0, "NA", false, "NA"],
    "Dodge City, Kansas":           [0x00, 0x1E, 0, "NA", false, "NA"],
    "Kansas City, Missouri":        [0x00, 0x1F, 0, "NA", false, "NA"],
    "St. Louis, Missouri":          [0x00, 0x20, 0, "NA", false, "NA"],
    "Champaign, Illinois":          [0x00, 0x21, 0, "NA", false, "NA"],
    "Carbondale, Illinois":         [0x00, 0x22, 0, "NA", false, "NA"],
    "Chattanooga, Tennessee":       [0x00, 0x23, 0, "NA", false, "NA"],
    "Memphis, Tennessee":           [0x00, 0x24, 0, "NA", false, "NA"],
    "Nashville, Tennessee":         [0x00, 0x25, 0, "NA", false, "NA"],
    "Louisville, Kentucky":         [0x00, 0x26, 0, "NA", false, "NA"],
    "Kenosha, Wisconsin":           [0x00, 0x27, 0, "NA", false, "NA"],
    "Milwaukee, Wisconsin":         [0x00, 0x28, 0, "NA", false, "NA"],
    "Green Bay, Wisconsin":         [0x00, 0x29, 0, "NA", true, "Scum of the Cheese Packers", 5],
    "Wabasha, Minnesota":           [0x00, 0x2A, 0, "NA", false, "NA",],
    "Minneapolis, Minnesota":       [0x00, 0x2B, 5, "Minneapolis Name", false, "NA"],
    "Fargo, North Dakota":          [0x00, 0x2C, 0, "NA", false, "NA"],
    "Duluth, Minnesota":            [0x00, 0x2D, 0, "NA", false, "NA"],
    "Thunder Bay, Ontario, Canada": [0x00, 0x2E, 0, "NA", false, "NA"],
    "Winnipeg, Manitoba, Canada":   [0x00, 0x2F, 0, "NA", false, "NA"],
    "Moose Jaw, Saskatchewan, Canada":    [0x00, 0x30, 0, "NA", false, "NA"],
    "Rapid City, South Dakota":            [0x00, 0x31, 0, "NA", false, "NA"],
    "Omaha, Nebraska":                     [0x00, 0x32, 0, "NA", false, "NA"],
    "Cheyenne, Wyoming":                   [0x00, 0x33, 0, "NA", false, "NA"],
    "Estes Park, Colorado":                [0x00, 0x34, 0, "NA", true, "Scum of the Rockies", 5],
    "Denver, Colorado":                    [0x00, 0x35, 5, "Denver Name", false, "NA"],
    "Santa Fe, New Mexico":                [0x00, 0x36, 0, "NA", false, "NA"],
    "Albuquerque, New Mexico":             [0x00, 0x37, 0, "NA", false, "NA"],
    "Moab, Utah":                          [0x00, 0x38, 0, "NA", false, "NA"],
    "Flagstaff, Arizona":                  [0x00, 0x39, 0, "NA", false, "NA"],
    "Phoenix, Arizona":                    [0x00, 0x3A, 0, "NA", true, "Scum of the Desert", 5],
    "Tortilla Flat, Arizona":              [0x00, 0x3B, 0, "NA", false, "NA"],
    "Tucson, Arizona":                     [0x00, 0x3C, 0, "NA", false, "NA"],
    "San Diego, California":               [0x00, 0x3D, 0, "NA", false, "NA"],
    "Los Angeles, California":             [0x00, 0x3E, 5, "LA Name", false, "NA"],
    "Orange County, California":           [0x00, 0x3F, 0, "NA", false, "NA"],
    "Las Vegas, Nevada":                   [0x00, 0x40, 0, "NA", false, "NA"],
    "Reno, Nevada":                        [0x00, 0x41, 0, "NA", false, "NA"],
    "Silicon Valley, California":          [0x00, 0x42, 0, "NA", false, "NA"],
    "San Francisco, California":           [0x00, 0x43, 0, "NA", true, "Scum of the Golden Gate", 5],
    "Sacramento, California":              [0x00, 0x44, 0, "NA", false, "NA"],
    "Eureka, California":                  [0x00, 0x45, 0, "NA", false, "NA"],
    "Boise, Idaho":                        [0x00, 0x46, 0, "NA", false, "NA"],
    "Portland, Oregon":                    [0x00, 0x47, 0, "NA", false, "NA"],
    "Seattle, Washington":                 [0x00, 0x48, 0, "NA", false, "NA"],
    "Vancouver, British Columbia, Canada": [0x00, 0x49, 5, "BC Name", false, "NA"],
    "Honolulu, Hawaii":                    [0x00, 0x4A, 0, "NA", false, "NA",],
    "Oahu, Hawaii":                        [0x00, 0x4B, 0, "NA", false, "NA"],
    "Kodiak, Alaska":                      [0x00, 0x4C, 0, "NA", false, "NA"],
    "Nome, Alaska":                        [0x00, 0x4D, 0, "NA", false, "NA"],
    "Fairbanks, Alaska":                   [0x00, 0x4E, 0, "NA", true, "Scum of the Snow", 5],
    "Cape Cod, Massachusetts":             [0x00, 0x4F, 0, "NA", false, "NA"],
    "Boston, Massachusetts":               [0x00, 0x50, 0, "NA", true, "Scum of the Green Monster", 5],
    "Toronto, Ontario, Canada":            [0x00, 0x51, 0, "NA", false, "NA"],
    "Homewood, Illinois":                  [0x00, 0x52, 0, "NA", false, "NA"],
    "Hinckley, Illinois":                  [0x00, 0x53, 0, "NA", false, "NA"],
    "Toxic Hollow, Illinois":              [0x00, 0x54, 5, "Last Hurrah", false, "NA"],
    
    "Liverpool, England":     [0x01, 0x00, 0, "NA", false, "NA"],
    "Edinburgh, Scotland":    [0x01, 0x01, 0, "NA", false, "NA"],
    "Dublin, Ireland":        [0x01, 0x02, 0, "NA", false, "NA"],
    "London, England":        [0x01, 0x03, 0, "NA", false, "NA"],
    "Torquay, England":       [0x01, 0x04, 0, "NA", true, "Scum of Kents Cavern", 5],
    
    "Marseilles, France":     [0x02, 0x00, 0, "NA", false, "NA"],
    "Monte Carlo, Monaco":    [0x02, 0x01, 0, "NA", false, "NA"],
    "Paris, France":          [0x02, 0x02, 0, "NA", true, "Scum of the Louvre", 5],
    
    "Madrid, Spain":          [0x03, 0x00, 0, "NA", false, "NA"],
    "Barcelona, Spain":       [0x03, 0x01, 0, "NA", true, "Scum of MACBA", 5],
    
    "Venice, Italy":          [0x04, 0x00, 0, "NA", false, "NA"],
    "Naples, Italy":          [0x04, 0x01, 0, "NA", false, "NA"],
    "Rome, Italy":            [0x04, 0x02, 0, "NA", true, "Scum of the Colliseum", 5],
    
    "Athens, Greece":         [0x05, 0x00, 0, "NA", false, "NA"],
    "Istanbul, Turkey":       [0x05, 0x01, 0, "NA", true, "Scum of the Hagia Sophia", 5],
    
    "Munich, Germany":        [0x06, 0x00, 0, "NA", false, "NA"],
    "Frankfurt, Germany":     [0x06, 0x01, 0, "NA", false, "NA"],
    "Berlin, Germany":        [0x06, 0x02, 0, "NA", true, "Scum of the Brandenburg Gate", 5],
    
    "Amsterdam, Netherlands": [0x07, 0x00, 0, "NA", false, "NA"],
    "Copenhagen, Denmark":    [0x07, 0x01, 0, "NA", true, "Scum of Rosenborg Castle", 5],
   
    "Bucharest, Romania":     [0x08, 0x00, 0, "NA", false, "NA"],
    "Budapest, Hungary":      [0x08, 0x01, 0, "NA", false, "NA"],
    "Warsaw, Poland":         [0x08, 0x02, 0, "NA", false, "NA"],
    "Kiev, Ukraine":          [0x08, 0x03, 0, "NA", false, "NA"],
    "Moscow, Russia":         [0x08, 0x04, 0, "NA", true, "Scum of Red Square", 5],
    
    "Tokyo, Japan":           [0x09, 0x00, 0, "NA", false, "NA"],
    "Osaka, Japan":           [0x09, 0x01, 0, "NA", true, "Scum of Dotonbori", 5],
    
    "Melbourne, Australia":       [0x0a, 0x00, 0, "NA", false, "NA"],
    "Sydney, Australia":          [0x0a, 0x01, 0, "NA", false, "NA"],
    "Tahiti, French Polynesia":   [0x0a, 0x02, 0, "NA", true, "Scum of Point Venus", 5],
    
    "Johannesburg, South Africa": [0x0b, 0x00, 0, "NA", false, "NA"],
    "Nairobi, Kenya":             [0x0b, 0x01, 0, "NA", false, "NA"],
    "Ouagadougou, Burkina Faso":  [0x0b, 0x02, 0, "NA", false, "NA"],
    "Casablanca, Morocco":        [0x0b, 0x03, 0, "NA", false, "NA"],
    "Cairo, Egypt":               [0x0b, 0x04, 0, "NA", true, "Scum of Giza", 5],
    
    "Katmandu, Nepal":            [0x0d, 0x00, 0, "NA", false, "NA"],
    "Calcutta, India":            [0x0d, 0x01, 0, "NA", false, "NA"],
    "Bombay, India":              [0x0d, 0x02, 0, "NA", true, "Scum of the Gateway", 5],
    
    "Tijuana, Mexico":            [0x0c, 0x00, 0, "NA", false, "NA"],
    "Mexico City, Mexico":        [0x0c, 0x01, 0, "NA", false, "NA"],
    "Acapulco, Mexico":           [0x0c, 0x02, 0, "NA", false, "NA"],
    "Belize City, Belize":        [0x0c, 0x03, 0, "NA", false, "NA"],
    "Rio De Janeiro, Brazil":     [0x0c, 0x04, 0, "NA", true, "Scum of the Redeemer", 5],
    
    "Luna Tech, Moon":            [0x11, 0x00, 0, "NA", true, "Scumdog of the Galaxy", 25],
    
    "Suburbia":                   [0x0e, 0x12, 5, "Suburbia name", false, "NA"],
    "Warehouse":                  [0x0e, 0x01, 5, "Warehouse name", false, "NA"],
    "Area 69":                    [0x0e, 0x02, 5, "Area 69 Name", false, "NA"],
    "Underworld":                 [0x0e, 0x03, 5, "Underworld Name", false, "NA"],
}

// All one level 100%destruction no deaths
function BeatFullyPercent()
{
    for key in LevelDict
    {
        lookup_val = LevelDict[key]
        if lookup_val[2] > 0
        {
            if lookup_val[0] == 0 || lookup_val[0] == 0x0e
            {
                reset = (always_false() || (never(USCityID() != lookup_val[1]) && never(byte(0x079828) == 0))) 
            }
            else
            {
                reset = (always_false() || (never(CityID() != lookup_val[1]) && never(byte(0x079828) == 0)))
            }
             
            
            trigger = BeatFullPercentage() && CountryID() == lookup_val[0] && InGame() && 
                      unless(P1George() && repeated(1, byte(0x0bf86e) == 0)) && 
                      unless(P1Lizzie() && repeated(1, byte(0x0bfa3a) == 0)) &&
                      unless(P1Ralph() && repeated(1, byte(0x0bfc06) == 0)) &&
                      reset
            achievement(title=lookup_val[3], description="Completely destroy the city of " + key + " without losing a life", points=lookup_val[2], trigger=trigger) 
        }
    }
}

BeatFullyPercent()


// Sum labs i.e. progression
function BeatScum()
{
    for key in LevelDict
    {
        lookup_val = LevelDict[key]
        if lookup_val[4] == true
        {   
            if lookup_val[0] == 0
            {
                city = USCityID() == lookup_val[1]
            }
            else
            {
                city = CityID() == lookup_val[1]
            }
        
            trigger = BeatLevelAnyPercent() && city && CountryID() == lookup_val[0] && InGame()
            achievement(title=lookup_val[5], description="Destroy the ScumLab at " + key, points=lookup_val[6], trigger=trigger) 
        }
    }
}

BeatScum()

//Single character specific city cheevs
function HorrorMovie()
{
    monsters = [["George", P1George(), "New York City, USA", 0x00, 0x0C, "Kong"], 
                ["Lizzie", P1Lizzie(), "Tokyo, Japan", 0x09, 0x00, "Monsters"], 
                ["Ralph", P1Ralph(), "London, England", 0x01, 0x03, "the Night"],
               ]
    for monster in monsters
    {
        if monster[3] == 0
        {
            city = USCityID() == monster[4]
        }
        else
        {
            city = CityID() == monster[4]
        }
        trigger = BeatFullPercentage() && CountryID() == monster[3] && city && InGame() && monster[1]
        achievement(title="King of " + monster[5], 
                    description="Completely destroy the city of " + monster[2] + " playing as " + monster[0],
                    trigger=trigger, points=5
                    )
    }
}

HorrorMovie()


/// MultiLevel Rampage without lossing life

//Country lookup key=Name of counrty val=[country id value, number of cities - 1 i.e base 0, ]
CountryLookup = {"United Kingdom": [0x01, 4, "Anarchy in the UK"],
                 "France": [0x02, 2, "Bash the Baguette"],
                 "Spain": [0x03, 1, "Spanking Spain"],
                 "Italy": [0x04, 1, "Punch the Pasta"],
                 "Greece & Turkey": [0x05, 1, "Mediterranean Mayhem"],
                 "Germany": [0x06, 2, "Squeeze the Sausage"],
                 "North Sea": [0x07, 1, "Drowning Denmark"],
                 "Eastern Europe": [0x08, 4, "Scare the Reds"],
                 "Japan": [0x09, 1, "Sun Going Down"],
                 "Oceania": [0x0A, 2, "Pacific Rimmed"],
                 "Africa": [0x0B, 4, "Sub Saharan Smack Down"],
                 "Latin America": [0x0C, 4, "Latin Lashing"], 
                 "India": [0x0D, 2, "Outlasting Everest"],
}

function MultiRampage()
{
    for key in CountryLookup
    {
        lookup_val = CountryLookup[key]
        city_trigger = trigger_when(repeated(lookup_val[1] + 1, BeatFullNoTrigger() && CityID() == lookup_val[1] && CityID() == lookup_val[1]))
        reset = (always_false() || (never(CountryID() != lookup_val[0]) && never(byte(0x079828) == 0)))
        for num in range(0, lookup_val[1] - 1)
        {
             city_trigger = city_trigger && once(BeatFullNoTrigger() && CityID() == num)
        }
// This is close but need to manaully change to an AddHits after each city....
        trigger = city_trigger &&
                  unless(P1George() && repeated(1, byte(0x0bf86e) == 0)) && 
                  unless(P1Lizzie() && repeated(1, byte(0x0bfa3a) == 0)) &&
                  unless(P1Ralph() && repeated(1, byte(0x0bfc06) == 0)) &&
                  unless(CountryID() == lookup_val[0] && BuildingRemaining() == 0 && once(CompletePercentage() < 0x64)) &&
                  reset
        achievement(title=lookup_val[2], description="Completely destroy every city in " + key + " without losing a life", points=10, trigger=trigger)   
    }
}

MultiRampage()


///Power Up Bonuses
//key - name of cheevo, val=[Value of powerup, description, george mem, lizzie mem, ralph mem]
CollectDict = {
    "PIG OUT": [5, "Eat a ton of food", byte(0x0bf878), byte(0x0bfa44), byte(0x0bfc10)],
    "Wreckin' Balls O' Steel": [75, "Destroy Destroy Destroy", word(0x0bf87c), word(0x0bfa48), word(0x0bfc14)],
    "The Local Flavor": [20, "Eat a bunch of civilians", byte(0x0bf87a), byte(0x0bfa46), byte(0x0bfc12)],
    "Twisted Metal": [15, "Destroy alot of vehicles", byte(0x0bf87e), byte(0x0bfa4a), byte(0x0bfc16)],
}

function CollectionCheevs()
{
    for key in CollectDict
    {
        lookup_val = CollectDict[key]
        trigger = InGame() && TimeRemaining() > 0 && never(BuildingRemaining() == 0) && (always_false() || 
                                                     (measured(repeated(lookup_val[0], prev(lookup_val[2]) < lookup_val[2]))) ||
                                                     (measured(repeated(lookup_val[0], prev(lookup_val[3]) < lookup_val[3]))) ||
                                                     (measured(repeated(lookup_val[0], prev(lookup_val[4]) < lookup_val[4]))) 
                                                     )
        achievement(title=key, description=lookup_val[1], points=5, trigger=trigger)
    }
}

CollectionCheevs()

///PowerUp Bonuses
//key - name of cheevo, val=[number to obtain, description, george mem, lizzie mem, ralph mem]
PowerDict = {
    "Need a Blankie": [1, "Grab your secruity Item", byte(0x0bf8a8), byte(0x0bfa74), byte(0x0bfc40)],
    "Power Overwhelming": [2, "Grab a powerup to amplify damage", byte(0x0bf8a8), byte(0x0bfa74), byte(0x0bfc40)],
    "Time Is On Your Side": [3, "Grab a powerup to give you more time", byte(0x0bf8a8), byte(0x0bfa74), byte(0x0bfc40)],
    "DEATH BREATH": [4, "Grab a powerup to give you some serious Death Metal pipes", byte(0x0bf8a8), byte(0x0bfa74), byte(0x0bfc40)],
    "HOT LOOGIE": [5, "Grab a powerup to give you some serious heart burn", byte(0x0bf8a8), byte(0x0bfa74), byte(0x0bfc40)],
    "Five Star Dining": [7, "Grab your superfood", byte(0x0bf8a8), byte(0x0bfa74), byte(0x0bfc40)],
}

function PowerUpCheevs()
{
    for key in PowerDict
    {
        lookup_val = PowerDict[key]
        trigger = InGame() && TimeRemaining() > 0 && BuildingRemaining() != 0 && (always_false() || 
                                                     (prev(lookup_val[2]) != lookup_val[0] && lookup_val[2] == lookup_val[0]) ||
                                                     (prev(lookup_val[3]) != lookup_val[0] && lookup_val[3] == lookup_val[0]) ||
                                                     (prev(lookup_val[4]) != lookup_val[0] && lookup_val[4] == lookup_val[0])
                                                     )
        achievement(title=key, description=lookup_val[1], points=1, trigger=trigger)
    }
}

PowerUpCheevs()

achievement(title="One More Time", description="Earn an extra Life", points=5,
             trigger=InGame() && (always_false() || 
                                 (prev(byte(0x0bf868)) < byte(0x0bf868)) ||
                                 (prev(byte(0x0bfa34)) < byte(0x0bfa34)) ||
                                 (prev(byte(0x0bfc00)) < byte(0x0bfc00))
                                 )
)

achievement(title="Feeding Frenzy", description="Eat 20 Humans in the Bonus level", points=5,
             trigger=InGame() && never(BuildingRemaining() != 0) && (always_false() || 
                                                             (measured(repeated(20, prev(byte(0x0bf87a)) < byte(0x0bf87a)))) ||
                                                             (measured(repeated(20, prev(byte(0x0bfa46)) < byte(0x0bfa46)))) ||
                                                             (measured(repeated(20, prev(byte(0x0bfc12)) < byte(0x0bfc12))))
                                                             )
)

///RP

function LevelIdtoCityLookup()
{
    CityLookup = {}
    for key in LevelDict
    {
        lookup_val = LevelDict[key]
        city = lookup_val[0] * 0x10000 + lookup_val[1]
        CityLookup[city] = key
    }
    return CityLookup
}

rich_presence_conditional_display(
    InGame() && P1George(), 
    "George RAMPAGING through {0} on Day {1} with {2} health left. Damages Made: {3}, Humans consumed: {4}, Vehicle destroyed: {5}, Food Ate: {6}, Points!: {7}", 
        rich_presence_lookup("City", dword(0x0db0a2), LevelIdtoCityLookup()),
        rich_presence_value("Day", byte(0x0d663c)),
        rich_presence_value("Health", byte(0x0bf86e)),
        rich_presence_value("Damages", word(0x0bf87c)),
        rich_presence_value("Humans", byte(0x0bf87a)),
        rich_presence_value("Vehicles", byte(0x0bf87e)),
        rich_presence_value("Food", byte(0x0bf878)),
        rich_presence_value("Points", dword(0x0bf88c) * 100)
)
rich_presence_conditional_display(
    InGame() && P1Lizzie(), 
    "Lizzie RAMPAGING through {0} on Day {1} with {2} health left. Damages Made: {3}, Humans consumed: {4}, Vehicle destroyed: {5}, Food Ate: {6}, Points!: {7}", 
        rich_presence_lookup("City", dword(0x0db0a2), LevelIdtoCityLookup()),
        rich_presence_value("Day", byte(0x0d663c)),
        rich_presence_value("Health", byte(0x0bfa3a)),
        rich_presence_value("Damages", word(0x0bfa48)),
        rich_presence_value("Humans", byte(0x0bfa46)),
        rich_presence_value("Vehicles", byte(0x0bfa4a)),
        rich_presence_value("Food", byte(0x0bfa44)),
        rich_presence_value("Points", dword(0x0bfa58) * 100)
)
rich_presence_conditional_display(
    InGame() && P1Ralph(), 
    "Ralph RAMPAGING through {0} on Day {1} with {2} health left. Damages Made: {3}, Humans consumed: {4}, Vehicle destroyed: {5}, Food Ate: {6}, Points!: {7}", 
        rich_presence_lookup("City", dword(0x0db0a2), LevelIdtoCityLookup()),
        rich_presence_value("Day", byte(0x0d663c)),
        rich_presence_value("Health", byte(0x0bfc06)),
        rich_presence_value("Damages", word(0x0bfc14)),
        rich_presence_value("Humans", byte(0x0bfc12)),
        rich_presence_value("Vehicles", byte(0x0bfc16)),
        rich_presence_value("Food", byte(0x0bfc10)),
        rich_presence_value("Points", dword(0x0bfc24) * 100)
)
rich_presence_display("Waiting To RAMPAGE")
