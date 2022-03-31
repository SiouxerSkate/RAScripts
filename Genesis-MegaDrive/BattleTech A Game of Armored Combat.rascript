// BattleTech: A Game of Armored Combat
// #ID = 4162

////////////////////////////////Function Declaration//////////////////////////////////////////////

function Mission() => byte(0x00cb36)
function MissionComplete(mem) => prev(mem) == 0 && mem == 0xFF
function AmmoCheat() => word(0x00CAC2)
function PauseOnAmmoCheat() => unless(AmmoCheat() == 0x01)
function PriorBuilding() => prior(word(0x00ca80))
function Building() => word(0x00ca80)
function TriggerMissionComplete(mem) => prev(mem) == 0 && trigger_when(mem == 0xFF)
function DeathPause() => disable_when(prev(word(0x00cac6)) > word(0x00cac6), until=Building() == 0)
function BeatTime(val) => word(0x00cafe) >= val


//////////////////////////////Acheivements////////////////////////////////////////////////////////////


/////////////////////////////Mission 1////////////////////////////////////////////////////////////////
achievement(
    title = "Star Captain", description = "Complete mission on Alshain", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 1 && MissionComplete(byte(0x004ec4)) && PauseOnAmmoCheat()    
)

achievement(
    title = "Manual Mode", description = "Destroy Radar Site during mission on Alshain", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 1 && MissionComplete(byte(0x004ec1)) && PauseOnAmmoCheat()    
)

achievement(
    title = "Stop The Airdrops", description = "Destroy the Aerotech Base during mission on Alshain", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 1 && MissionComplete(byte(0x004ec0)) && PauseOnAmmoCheat()    
)

achievement(
    title = "Battle Tanks", description = "Destroy the DCMS Mech and Tank Bays during mission on Alshain", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 1 && MissionComplete(byte(0x004ec3)) && PauseOnAmmoCheat()    
)

achievement(
    title = "He's a Star Man", description = "Rescue Star Captain during mission on Alshain", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 1 && MissionComplete(byte(0x004ec2)) && PauseOnAmmoCheat()    
)

achievement(
    title = "Tesla Destruction", description = "Destroy the Power Generators during mission on Alshain", points = 1,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 1 && MissionComplete(byte(0x004ec5)) && PauseOnAmmoCheat()    
)

achievement(
    title = "Draconis Combine Destroyed", description = "Destroy all Buildings and complete mission on Alshain", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 1 && MissionComplete(byte(0x004ec4)) && PriorBuilding() == 0x3A && measured(Building() == 0x3b, when=Mission() == 0x01) && PauseOnAmmoCheat()    
)

achievement(
    title = "Dominated the Legion Of Vega", description = "Complete mission on Alshain without losing a life", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 1 && TriggerMissionComplete(byte(0x004ec4)) && DeathPause() && PauseOnAmmoCheat()    
)

/////////////////////////////Mission 2////////////////////////////////////////////////////////////////
achievement(
    title = "Star Colonel", description = "Complete mission on Satalice", points = 3,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 0 && MissionComplete(byte(0x004ed3)) && PauseOnAmmoCheat()    
)

achievement(
    title = "Launch Party", description = "Destroy Launch Sites during mission on Satalice", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 0 && MissionComplete(byte(0x004ed1)) && PauseOnAmmoCheat()    
)

achievement(
    title = "Gatherers, Meet Hunter", description = "Destroy the Material Gathering Stations during mission on Satalice", points = 2,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 0 && MissionComplete(byte(0x004ed0)) && PauseOnAmmoCheat()    
)

achievement(
    title = "Quick Launch", description = "Destroy Launch Sites during mission on Satalice with 45 seconds or more left on the timer", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 0 && TriggerMissionComplete(byte(0x004ed1)) && BeatTime(0x2d) && PauseOnAmmoCheat()    
)

achievement(
    title = "Rasalhague Disrupted", description = "Destroy all Buildings and complete mission on Satalice", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 0 && MissionComplete(byte(0x004ed3)) && PriorBuilding() == 0x35 && measured(Building() == 0x36, when=Mission() == 0) && PauseOnAmmoCheat()    
)

achievement(
    title = "Dominated the 4th Kavalleri", description = "Complete mission on Satalice without losing a life", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 0 && TriggerMissionComplete(byte(0x004ed3)) && DeathPause() && PauseOnAmmoCheat()    
)

/////////////////////////////Mission 3////////////////////////////////////////////////////////////////
achievement(
    title = "Bloodname", description = "Complete mission on Ridderkerk", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 3 && byte(0x004ed4) == 0xFF && byte(0x004ed7) == 0xFF && byte(0x004ed5) == 0xFF && PauseOnAmmoCheat()    
)

achievement(
    title = "I Can See Clearly Now", description = "Destroy Radar Jamming Sites during mission on Ridderkerk", points = 3,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 3 && MissionComplete(byte(0x004ed5)) && PauseOnAmmoCheat()    
)

achievement(
    title = "Central Perks", description = "Destroy the Central Research Center during mission on Ridderkerk", points = 3,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 3 && MissionComplete(byte(0x004ed4)) && PauseOnAmmoCheat()    
)

achievement(
    title = "Fedcom Annihilated", description = "Destroy all Buildings and complete mission on Ridderkerk", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 3 && byte(0x004ed4) == 0xFF && byte(0x004ed7) == 0xFF && byte(0x004ed5) == 0xFF && PriorBuilding() == 0x27 && measured(Building() == 0x28, when=Mission() == 3) && PauseOnAmmoCheat()    
)

achievement(
    title = "Dominated the First Lyran Regulars", description = "Complete mission on Ridderkerk without losing a life", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 3 && trigger_when(byte(0x004ed4) == 0xFF) && trigger_when(byte(0x004ed7) == 0xFF) && trigger_when(byte(0x004ed5) == 0xFF) && DeathPause() && PauseOnAmmoCheat()    
)

/////////////////////////////Mission 4////////////////////////////////////////////////////////////////
achievement(
    title = "Commander Bloodname", description = "Complete mission on Avon", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 2 && MissionComplete(byte(0x004edf)) && PauseOnAmmoCheat()    
)

achievement(
    title = "Bomb Squad", description = "Collect Bomb Parts and blow up gate during mission on Avon", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 2 && MissionComplete(byte(0x004edc)) && PauseOnAmmoCheat()    
)

achievement(
    title = "Dropship Deconstructed", description = "Destroy all Buildings and complete mission on Avon", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 2 && MissionComplete(byte(0x004edf)) && PriorBuilding() == 0x18 && measured(Building() == 0x19, when=Mission() == 2) && PauseOnAmmoCheat()    
)

achievement(
    title = "Dominated the 5th Ghost Regiment", description = "Complete mission on Avon without losing a life", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 2 && TriggerMissionComplete(byte(0x004edf)) && DeathPause() && PauseOnAmmoCheat()    
)

/////////////////////////////Mission 5////////////////////////////////////////////////////////////////
achievement(
    title = "Khan of Clan Wolf", description = "Complete mission on Comstar", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 4 && MissionComplete(byte(0x004ee9)) && prev(byte(0x004ee0)) == 0xFF && prev(byte(0x004ee3)) == 0xFF && PauseOnAmmoCheat()    
)

achievement(
    title = "I Can See Clearly Now...Part Deux", description = "Destroy Radar Jamming Sites during mission on Comstar", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 4 && MissionComplete(byte(0x004ee0)) && PauseOnAmmoCheat()    
)

achievement(
    title = "Genetic Mutation", description = "Collect Genetic Canisters during mission on Comstar", points = 5,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 4 && MissionComplete(byte(0x004ee3)) && PauseOnAmmoCheat()    
)

achievement(
    title = "Thunderbolt Mech Destroyed", description = "Destroy all Buildings and complete mission on Comstar", points = 10,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 4 && MissionComplete(byte(0x004ee9)) && prev(byte(0x004ee0)) == 0xFF && prev(byte(0x004ee3)) == 0xFF && PriorBuilding() == 0x20 && measured(Building() == 0x21, when=Mission() == 4) && PauseOnAmmoCheat()    
)

achievement(
    title = "Dominated the 394th Division", description = "Complete mission on Comstar without losing a life", points = 25,
    id = 0, badge = "0", published = "", modified = "",
    trigger = Mission() == 4 && TriggerMissionComplete(byte(0x004ee9)) && prev(byte(0x004ee0)) == 0xFF && prev(byte(0x004ee3)) == 0xFF && DeathPause() && PauseOnAmmoCheat()    
)