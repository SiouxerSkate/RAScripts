// Alien vs. Predator
// #ID = 380

SLookup = {
    0: "Title",
    1: "Streets",
    2: "Sewers",
    3: "Forest",
    4: "Waterfall",
    5: "Spaceport",
    6: "Spaceship Bridge",
    7: "Spaceship Corridor",
    8: "Spaceship Observatory Deck",
    9: "Surface",
    10: "Hive",
}

achievement(
    title = "Purified Forest", description = "Complete the level The Forest without Dying", points = 10,
    id = 65700, badge = "68966", published = "9/13/2018 6:28:24 PM", modified = "7/9/2021 9:27:22 PM",
    trigger = unless(once(byte(0x00105C) < prev(byte(0x00105C)))) && prev(byte(0x000938)) == 3 && 
              trigger_when(byte(0x000938) == 4) &&
              (always_false() || (never(byte(0x000938) < 3) && never(byte(0x000938) > 4)))
)

achievement(
    title = "Thanksgiving Dinner", description = "Reach Maximum Health Value", points = 10,
    id = 65711, badge = "68993", published = "9/13/2018 6:28:47 PM", modified = "7/9/2021 7:13:51 PM",
    trigger = byte(0x000938) >= 1 && byte(0x000938) < 10 && prev(byte(0x001026)) < 136 && 
              measured(byte(0x001026) == 136)
)

achievement(
    title = "Alien Brawler", description = "Get a score of 600000 or higher", points = 25,
    id = 65710, badge = "68951", published = "9/13/2018 6:28:45 PM", modified = "7/9/2021 9:27:23 PM",
    trigger = byte(0x000938) > 1 && byte(0x000938) <= 10 && prev(word(0x000D0E)) < 6000 && 
              measured(word(0x000D0E) >= 6000)
)

achievement(
    title = "Purified Galaxy", description = "Complete the Game without using a continue", points = 50,
    id = 65708, badge = "68999", published = "9/13/2018 6:28:41 PM", modified = "7/9/2021 9:27:23 PM",
    trigger = unless(once(byte(0x00105E) < prev(byte(0x00105E)))) && repeated(10, byte(0x000938) == 1) && 
              byte(0x000938) == 10 && prev(byte(0x000364)) == 80 && trigger_when(byte(0x000364) == 240) &&
              (always_false() || (never(byte(0x000938) == 0) && never(byte(0x000938) > 10)))
)

achievement(
    title = "Purified Hive", description = "Complete the level The Hive without Dying", points = 50,
    id = 65707, badge = "68995", published = "9/13/2018 6:28:39 PM", modified = "7/9/2021 9:27:23 PM",
    trigger = unless(once(byte(0x00105C) < prev(byte(0x00105C)))) && byte(0x000938) == 10 && prev(byte(0x000364)) == 80 && 
              trigger_when(byte(0x000364) == 240) &&
              (always_false() || (never(byte(0x000938) < 10) && never(byte(0x000938) > 10)))
)

achievement(
    title = "Purified Planet", description = "Complete the level The Surface without Dying", points = 25,
    id = 65706, badge = "68991", published = "9/13/2018 6:28:37 PM", modified = "7/9/2021 9:27:24 PM",
    trigger = unless(once(byte(0x00105C) < prev(byte(0x00105C)))) && prev(byte(0x000938)) == 9 && 
              trigger_when(byte(0x000938) == 10) &&
              (always_false() || (never(byte(0x000938) < 9) && never(byte(0x000938) > 10)))
)

achievement(
    title = "Purified Starship III", description = "Complete the level The Starship Observation Deck without Dying", points = 10,
    id = 65705, badge = "68989", published = "9/13/2018 6:28:35 PM", modified = "7/9/2021 9:27:24 PM",
    trigger = unless(once(byte(0x00105C) < prev(byte(0x00105C)))) && prev(byte(0x000938)) == 8 && 
              trigger_when(byte(0x000938) == 9) &&
              (always_false() || (never(byte(0x000938) < 8) && never(byte(0x000938) > 9)))
)

achievement(
    title = "Purified Starship II", description = "Complete the level The Starship Corridor without Dying", points = 10,
    id = 65704, badge = "68985", published = "9/13/2018 6:28:33 PM", modified = "7/9/2021 9:27:24 PM",
    trigger = unless(once(byte(0x00105C) < prev(byte(0x00105C)))) && prev(byte(0x000938)) == 7 && 
              trigger_when(byte(0x000938) == 8) &&
              (always_false() || (never(byte(0x000938) < 7) && never(byte(0x000938) > 8)))
)

achievement(
    title = "Purified Starship I", description = "Complete the level The Starship Bridge without Dying", points = 10,
    id = 65703, badge = "68983", published = "9/13/2018 6:28:31 PM", modified = "7/9/2021 9:27:25 PM",
    trigger = unless(once(byte(0x00105C) < prev(byte(0x00105C)))) && prev(byte(0x000938)) == 6 && 
              trigger_when(byte(0x000938) == 7) &&
              (always_false() || (never(byte(0x000938) < 6) && never(byte(0x000938) > 7)))
)

achievement(
    title = "Purified Spaceport", description = "Complete the level The Spaceport Elevator without Dying", points = 10,
    id = 65702, badge = "68979", published = "9/13/2018 6:28:28 PM", modified = "7/9/2021 9:27:25 PM",
    trigger = unless(once(byte(0x00105C) < prev(byte(0x00105C)))) && prev(byte(0x000938)) == 5 && 
              trigger_when(byte(0x000938) == 6) &&
              (always_false() || (never(byte(0x000938) < 5) && never(byte(0x000938) > 6)))
)

achievement(
    title = "Purified Waterfall", description = "Complete the level The Waterfall without Dying", points = 10,
    id = 65701, badge = "68967", published = "9/13/2018 6:28:26 PM", modified = "7/9/2021 9:27:25 PM",
    trigger = unless(once(byte(0x00105C) < prev(byte(0x00105C)))) && prev(byte(0x000938)) == 4 && 
              trigger_when(byte(0x000938) == 5) &&
              (always_false() || (never(byte(0x000938) < 4) && never(byte(0x000938) > 5)))
)

achievement(
    title = "Infested Street", description = "Complete the level The Streets", points = 5,
    id = 65688, badge = "68949", published = "9/13/2018 6:27:50 PM", modified = "7/9/2021 9:27:26 PM",
    trigger = prev(byte(0x000938)) == 1 && byte(0x000938) == 2
)

achievement(
    title = "Purified Sewers", description = "Complete the level The Sewer without Dying", points = 10,
    id = 65699, badge = "68948", published = "9/13/2018 6:28:22 PM", modified = "7/9/2021 9:27:26 PM",
    trigger = unless(once(byte(0x00105C) < prev(byte(0x00105C)))) && prev(byte(0x000938)) == 2 && 
              trigger_when(byte(0x000938) == 3) &&
              (always_false() || (never(byte(0x000938) < 2) && never(byte(0x000938) > 3)))
)

achievement(
    title = "Purified Street", description = "Complete the level The Streets without Dying", points = 10,
    id = 65698, badge = "68950", published = "9/13/2018 6:28:19 PM", modified = "7/9/2021 9:27:26 PM",
    trigger = unless(once(byte(0x00105C) < prev(byte(0x00105C)))) && prev(byte(0x000938)) == 1 && 
              trigger_when(byte(0x000938) == 2) &&
              (always_false() || (never(byte(0x000938) == 0) && never(byte(0x000938) > 2)))
)

achievement(
    title = "Cleared the Galaxy of the Infestation", description = "Complete the level The Hive", points = 25,
    id = 65697, badge = "68994", published = "9/13/2018 6:28:17 PM", modified = "7/9/2021 9:27:27 PM",
    trigger = byte(0x000938) == 10 && prev(byte(0x000364)) == 80 && byte(0x000364) == 240
)

achievement(
    title = "Infested Planet", description = "Complete the level The Surface", points = 5,
    id = 65696, badge = "68990", published = "9/13/2018 6:28:14 PM", modified = "7/9/2021 9:27:27 PM",
    trigger = prev(byte(0x000938)) == 9 && byte(0x000938) == 10
)

achievement(
    title = "Infested Starship III", description = "Complete the level The Starship Observation Deck", points = 5,
    id = 65695, badge = "68987", published = "9/13/2018 6:28:12 PM", modified = "7/9/2021 9:27:27 PM",
    trigger = prev(byte(0x000938)) == 8 && byte(0x000938) == 9
)

achievement(
    title = "Infested Starship II", description = "Complete the level The Starship Corridor", points = 5,
    id = 65694, badge = "68984", published = "9/13/2018 6:28:09 PM", modified = "7/9/2021 9:27:28 PM",
    trigger = prev(byte(0x000938)) == 7 && byte(0x000938) == 8
)

achievement(
    title = "Infested Starship I", description = "Complete the level The Starship Bridge", points = 5,
    id = 65693, badge = "68982", published = "9/13/2018 6:28:07 PM", modified = "7/9/2021 9:27:28 PM",
    trigger = prev(byte(0x000938)) == 6 && byte(0x000938) == 7
)

achievement(
    title = "Infested Spaceport", description = "Complete the level The Spaceport Elevator", points = 5,
    id = 65692, badge = "68977", published = "9/13/2018 6:28:03 PM", modified = "7/9/2021 9:27:28 PM",
    trigger = prev(byte(0x000938)) == 5 && byte(0x000938) == 6
)

achievement(
    title = "Infested Waterfall", description = "Complete the level The Waterfall", points = 5,
    id = 65691, badge = "68968", published = "9/13/2018 6:28:01 PM", modified = "7/9/2021 9:27:29 PM",
    trigger = prev(byte(0x000938)) == 4 && byte(0x000938) == 5
)

achievement(
    title = "Infested Forest", description = "Complete the level The Forest", points = 5,
    id = 65690, badge = "68965", published = "9/13/2018 6:27:57 PM", modified = "7/9/2021 9:27:29 PM",
    trigger = prev(byte(0x000938)) == 3 && byte(0x000938) == 4
)

achievement(
    title = "Infested Sewers", description = "Complete the level The Sewer", points = 5,
    id = 65689, badge = "68947", published = "9/13/2018 6:27:53 PM", modified = "7/9/2021 9:27:29 PM",
    trigger = prev(byte(0x000938)) == 2 && byte(0x000938) == 3
)

achievement(
    title = "Ultimate Lazer Killer", description = "Use the Ulitmate Lazer Beam Attack(Not on first level...)", points = 10,
    id = 65709, badge = "68952", published = "9/13/2018 6:28:43 PM", modified = "9/13/2018 6:28:43 PM",
    trigger = once(byte(0x000361) == 5) && never(byte(0x000938) < 2) && never(byte(0x000938) > 10)
)

rich_presence_display("Predator is stalking Prey At {0} Predator has {1} Lives and {2} Continues",
    rich_presence_lookup("S", byte(0x000938), SLookup),
    rich_presence_value("L", byte(0x00105C)),
    rich_presence_value("C", byte(0x00105E))
)
