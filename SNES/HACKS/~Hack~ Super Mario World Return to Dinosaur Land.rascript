// ~Hack~ Super Mario World: Return to Dinosaur Land
// #ID = 7319

achievement(
    title = "Stomp Iggy", description = "Finish Castle #1", points = 5,
    id = 68871, badge = "73986", published = "12/6/2018 8:41:29 PM", modified = "8/14/2021 5:45:05 PM",
    trigger = byte(0x0013BF) == 37 && prev(byte(0x0013C6)) == 0 && byte(0x0013C6) == 1
)

achievement(
    title = "Stomp Morty", description = "Finish Castle #2", points = 5,
    id = 68885, badge = "73987", published = "12/7/2018 2:09:16 AM", modified = "8/16/2021 5:18:07 PM",
    trigger = byte(0x0013BF) == 7 && prev(byte(0x0013C6)) == 0 && byte(0x0013C6) == 1
)

achievement(
    title = "Stomp Ludwig", description = "Finish Castle #3", points = 5,
    id = 68896, badge = "73988", published = "12/8/2018 3:17:04 PM", modified = "8/16/2021 5:51:26 PM",
    trigger = byte(0x0013BF) == 14 && prev(byte(0x0013C6)) == 0 && byte(0x0013C6) == 1
)

achievement(
    title = "Stomp Lemmy", description = "Finish Castle #4", points = 5,
    id = 68903, badge = "73989", published = "12/8/2018 10:47:34 PM", modified = "8/16/2021 6:52:24 PM",
    trigger = byte(0x0013BF) == 64 && prev(byte(0x0013C6)) == 0 && byte(0x0013C6) == 1
)

achievement(
    title = "Stomp Wendy", description = "Finish Castle #5", points = 5,
    id = 68975, badge = "73990", published = "12/9/2018 4:50:23 PM", modified = "8/18/2021 5:29:21 PM",
    trigger = byte(0x0013BF) == 27 && prev(byte(0x0013C6)) == 0 && byte(0x0013C6) == 1
)

achievement(
    title = "Stomp Roy", description = "Finish Castle #6", points = 5,
    id = 68983, badge = "73991", published = "12/10/2018 2:34:40 AM", modified = "1/11/2022 6:35:55 PM",
    trigger = byte(0x0013BF) == 32 && prev(byte(0x0013C6)) == 0 && byte(0x0013C6) == 1
)

achievement(
    title = "Stomp Larry", description = "Finish Castle #7", points = 5,
    id = 69011, badge = "73992", published = "12/11/2018 10:50:48 PM", modified = "1/11/2022 6:35:56 PM",
    trigger = byte(0x0013BF) == 52 && prev(byte(0x0013C6)) == 0 && byte(0x0013C6) == 1
)

achievement(
    title = "Stomp Bowser", description = "Finish Bowser's Castle and save the Princess", points = 10,
    id = 69032, badge = "73993", published = "12/11/2018 11:39:40 PM", modified = "1/11/2022 6:35:56 PM",
    trigger = byte(0x0013BF) == 49 && byte(0x000DD5) == 1 && prev(byte(0x0013C6)) == 0 && byte(0x0013C6) == 1 && 
              byte(0x000DDA) == 29 && byte(0x000DDA) == 22
)

achievement(
    title = "Color By Yoshi 2 - Blue [m]", description = "Switch on the Blue Switch riding Blue Yoshi", points = 5,
    id = 66064, badge = "73994", published = "9/21/2018 5:32:44 PM", modified = "8/20/2021 2:20:01 PM",
    trigger = byte(0x00187A) != 0 && byte(0x000DBA) == 6 && byte(0x0013BF) == 8 && prev(byte(0x001F29)) == 0 && 
              byte(0x001F29) == 1
)

achievement(
    title = "Color By Yoshi 2 - Yellow [m]", description = "Switch on the Yellow Switch riding Yellow Yoshi", points = 5,
    id = 66062, badge = "73995", published = "9/21/2018 5:32:37 PM", modified = "8/20/2021 2:14:22 PM",
    trigger = byte(0x0013BF) == 63 && byte(0x00187A) != 0 && byte(0x000DBA) == 4 && prev(byte(0x001F28)) == 0 && 
              byte(0x001F28) == 1
)

achievement(
    title = "Color By Yoshi 2 - Green [m]", description = "Switch on the Green Switch riding Green Yoshi", points = 5,
    id = 66063, badge = "73996", published = "9/21/2018 5:32:40 PM", modified = "8/18/2021 5:54:06 PM",
    trigger = byte(0x0013BF) == 20 && byte(0x00187A) != 0 && byte(0x000DBA) == 10 && prev(byte(0x001F27)) == 0 && 
              byte(0x001F27) == 1
)

achievement(
    title = "Color By Yoshi 2 - Red [m]", description = "Switch on the Red Switch riding Red Yoshi", points = 5,
    id = 66065, badge = "73997", published = "9/21/2018 5:32:48 PM", modified = "1/11/2022 6:35:56 PM",
    trigger = byte(0x0013BF) == 69 && byte(0x00187A) != 0 && byte(0x000DBA) == 8 && prev(byte(0x001F2A)) == 0 && 
              byte(0x001F2A) == 1
)

achievement(
    title = "Filling All The Blocks In (Round 2)", description = "Hit the buttons in all four colored switch palaces", points = 5,
    id = 66066, badge = "73998", published = "9/21/2018 5:37:08 PM", modified = "1/11/2022 6:35:57 PM",
    trigger = (byte(0x0013BF) == 20 || byte(0x0013BF) == 63 || byte(0x0013BF) == 8 || byte(0x0013BF) == 69) && 
              (prev(byte(0x001F27)) + prev(byte(0x001F28)) + prev(byte(0x001F29)) + prev(byte(0x001F2A))) == 3 && measured((byte(0x001F27) + byte(0x001F28) + byte(0x001F29) + byte(0x001F2A)) == 4)
)

achievement(
    title = "Secret Mountain Resort", description = "Enter the Secret Mountain Area", points = 4,
    id = 68991, badge = "73999", published = "12/10/2018 6:31:11 PM", modified = "8/14/2021 5:59:57 PM",
    trigger = byte(0x001F11) == 0 && prev(byte(0x0013BF)) != 3 && byte(0x0013BF) == 3
)

achievement(
    title = "Super Mario World 2?", description = "Enter Yoshi's Island Secret", points = 3,
    id = 68976, badge = "74000", published = "12/9/2018 5:27:01 PM", modified = "8/20/2021 2:12:16 PM",
    trigger = byte(0x001F11) == 0 && prev(byte(0x0013BF)) != 72 && byte(0x0013BF) == 72
)

achievement(
    title = "Bowsers Secret Stash", description = "Find Bowser's Secret Area in Bowser's Castle", points = 2,
    id = 69543, badge = "74001", published = "12/24/2018 3:32:32 AM", modified = "1/11/2022 6:35:57 PM",
    trigger = byte(0x001F11) == 4 && byte(0x0013BF) == 49 && prev(word(0x0000CE)) == 43368 && word(0x0000CE) == 43572
)

achievement(
    title = "Exit From Dinosaur Land", description = "Complete All Exits in Return To Dinosaur Land", points = 25,
    id = 69123, badge = "74002", published = "12/15/2018 4:06:52 PM", modified = "1/11/2022 6:35:57 PM",
    trigger = prev(byte(0x001F2E)) == 58 && byte(0x001F2E) == 59
)

achievement(
    title = "Return to Yoshi's Island FOR COINS", description = "Collect 5 Dragon Coins in all eligible levels in Yoshi's Island", points = 5,
    id = 68879, badge = "74003", published = "12/7/2018 1:06:41 AM", modified = "8/14/2021 5:41:33 PM",
    trigger = byte(0x001F11) == 1 && byte(0x001420) == 5 && 
              (prev(bit6(0x001F34)) + prev(bit5(0x001F34)) + prev(bit4(0x001F37))) == 2 && measured((bit6(0x001F34) + bit5(0x001F34) + bit4(0x001F37)) == 3)
)

achievement(
    title = "Trade Coins For Mushrooms", description = "Collect 5 Dragon Coins in all eligible levels in Mushroom Plateau", points = 5,
    id = 68886, badge = "74004", published = "12/7/2018 2:15:43 AM", modified = "8/14/2021 6:03:32 PM",
    trigger = byte(0x001F11) == 0 && byte(0x001420) == 5 && 
              (prev(bit4(0x001F38)) + prev(bit0(0x001F3A)) + prev(bit6(0x001F2F))) == 2 && measured((bit4(0x001F38) + bit0(0x001F3A) + bit6(0x001F2F)) == 3)
)

achievement(
    title = "Wiggler's Coin Stash", description = "Collect 5 Dragon Coins in all eligible levels in Wiggler Woods", points = 5,
    id = 68990, badge = "74005", published = "12/10/2018 6:14:07 PM", modified = "8/16/2021 5:41:53 PM",
    trigger = byte(0x001F11) == 3 && byte(0x001420) == 5 && (prev(bit0(0x001F37)) + prev(bit5(0x001F37))) == 1 && 
              measured((bit0(0x001F37) + bit5(0x001F37)) == 2)
)

achievement(
    title = "Thawing of the Dragons", description = "Collect 5 Dragon Coins in all eligible levels in Frozen Valley", points = 5,
    id = 68989, badge = "74006", published = "12/10/2018 6:11:17 PM", modified = "1/11/2022 6:35:58 PM",
    trigger = byte(0x001F11) == 6 && byte(0x001420) == 5 && 
              (prev(bit0(0x001F33)) + prev(bit6(0x001F39)) + prev(bit3(0x001F38))) == 2 && measured((bit0(0x001F33) + bit6(0x001F39) + bit3(0x001F38)) == 3)
)

achievement(
    title = "The Coins Are Chocolate?", description = "Collect 5 Dragon Coins in all eligible levels in Choco Peninsula", points = 5,
    id = 68988, badge = "74007", published = "12/10/2018 6:07:47 PM", modified = "1/11/2022 6:35:59 PM",
    trigger = byte(0x001F11) == 0 && byte(0x001420) == 5 && 
              (prev(bit1(0x001F3A)) + prev(bit2(0x001F3A)) + prev(bit3(0x001F3A)) + prev(bit3(0x001F33))) == 3 && measured((bit1(0x001F3A) + bit2(0x001F3A) + bit3(0x001F3A) + bit3(0x001F33)) == 4)
)

achievement(
    title = "Underwater Dragon Hunt", description = "Collect 5 Dragon Coins in all eligible levels in Urchin Ocean", points = 5,
    id = 68987, badge = "74008", published = "12/10/2018 6:03:23 PM", modified = "1/11/2022 6:35:59 PM",
    trigger = byte(0x001F11) == 0 && byte(0x001420) == 5 && 
              (prev(bit5(0x001F30)) + prev(bit3(0x001F39)) + prev(bit7(0x001F35))) == 2 && measured((bit5(0x001F30) + bit3(0x001F39) + bit7(0x001F35)) == 3)
)

achievement(
    title = "Bowser's Coin Collection", description = "Collect all Dragon Coins from Bowserland", points = 10,
    id = 69033, badge = "74009", published = "12/11/2018 11:49:24 PM", modified = "1/11/2022 6:35:59 PM",
    trigger = byte(0x001F11) == 4 && byte(0x001420) == 5 && prev(bit5(0x001F39)) == 0 && bit5(0x001F39) == 1
)

achievement(
    title = "Moon Over Yoshi's Isle", description = "Grab the 3-up Moon in Yoshi's Island", points = 3,
    id = 69003, badge = "74010", published = "12/10/2018 6:42:27 PM", modified = "8/14/2021 5:34:26 PM",
    trigger = byte(0x001F11) == 1 && byte(0x0013BF) == 67 && prev(bit4(0x001FF6)) == 0 && bit4(0x001FF6) == 1
)

achievement(
    title = "Moon Cycles and Mushrooms", description = "Find All 3-up Moons on Mushroom Plateau", points = 5,
    id = 69004, badge = "74011", published = "12/10/2018 6:45:52 PM", modified = "8/16/2021 5:13:48 PM",
    trigger = byte(0x001F11) == 0 && (prev(bit2(0x001FEE)) + prev(bit3(0x001FEE)) + prev(bit4(0x001FF7))) == 2 && 
              measured((bit2(0x001FEE) + bit3(0x001FEE) + bit4(0x001FF7)) == 3)
)

achievement(
    title = "Moons Light Up the Woods", description = "Find all 3-up Moons in Wiggler Woods", points = 5,
    id = 69005, badge = "74012", published = "12/10/2018 6:50:21 PM", modified = "8/16/2021 5:46:20 PM",
    trigger = byte(0x001F11) == 3 && prev(bit0(0x001FF6)) == 0 && bit0(0x001FF6) == 1
)

achievement(
    title = "Frozen Moons", description = "Grab all 3-up moons in Frozen Valley", points = 5,
    id = 69147, badge = "74013", published = "12/15/2018 9:46:04 PM", modified = "1/11/2022 6:36:08 PM",
    trigger = byte(0x001F11) == 6 && (prev(bit0(0x001FF2)) + prev(bit6(0x001FF8)) + prev(bit3(0x001FF1))) == 2 && 
              measured((prev(bit0(0x001FF2)) + prev(bit6(0x001FF8)) + prev(bit3(0x001FF1))) == 3)
)

achievement(
    title = "Underwater Moon", description = "Find the 3-up moon in Urchin Ocean 1", points = 3,
    id = 69045, badge = "74014", published = "12/13/2018 7:40:26 PM", modified = "8/18/2021 5:37:23 PM",
    trigger = byte(0x001F11) == 0 && byte(0x0013BF) == 10 && prev(bit5(0x001FEF)) == 0 && bit5(0x001FEF) == 1
)

achievement(
    title = "Moonshine of Bowserland", description = "Grab all 3-up moons in Bowserland", points = 10,
    id = 69044, badge = "74015", published = "12/13/2018 7:33:42 PM", modified = "1/11/2022 6:36:00 PM",
    trigger = byte(0x001F11) != 4 && 
              (prev(bit4(0x001FF9)) + prev(bit2(0x001FF8)) + prev(bit5(0x001FF8)) + prev(bit7(0x001FF5))) == 3 && 
              measured((prev(bit4(0x001FF9)) + prev(bit2(0x001FF8)) + prev(bit5(0x001FF8)) + prev(bit7(0x001FF5))) == 4)
)

achievement(
    title = "Howl At The Blue Moon", description = "Collect the 3-up Moon in the Blue Switch Palace (No Cape or Yoshi)", points = 5,
    id = 68977, badge = "74016", published = "12/9/2018 5:50:05 PM", modified = "8/20/2021 2:23:16 PM",
    trigger = byte(0x0013BF) == 8 && byte(0x000019) != 2 && byte(0x0013C7) == 0 && prev(bit7(0x001FEF)) == 0 && 
              bit7(0x001FEF) == 1
)

achievement(
    title = "Howl At The Yellow Moon", description = "Collect the 3-up Moon in the Yellow Switch Palace", points = 5,
    id = 68986, badge = "74017", published = "12/10/2018 5:53:28 PM", modified = "8/20/2021 2:17:36 PM",
    trigger = byte(0x0013BF) == 63 && prev(bit0(0x001FF5)) == 0 && bit0(0x001FF5) == 1
)

achievement(
    title = "Howl At The Green Moon", description = "Collect the 3-up Moon in the Green Switch Palace", points = 5,
    id = 68978, badge = "74018", published = "12/9/2018 5:57:14 PM", modified = "8/20/2021 1:41:36 PM",
    trigger = byte(0x0013BF) == 20 && prev(bit3(0x001FF0)) == 0 && bit3(0x001FF0) == 1
)

achievement(
    title = "Howl At The Red Moon", description = "Collect the 3-up Moon in the Red Switch Palace", points = 5,
    id = 69043, badge = "74019", published = "12/13/2018 7:16:38 PM", modified = "1/11/2022 6:36:00 PM",
    trigger = byte(0x0013BF) == 69 && prev(bit2(0x001FF6)) == 0 && bit2(0x001FF6) == 1
)

achievement(
    title = "Yoshsters Bonus 1-up", description = "Get 1-up From Green Block in Yoshi's Island", points = 2,
    id = 69118, badge = "74020", published = "12/15/2018 3:25:24 PM", modified = "8/16/2021 4:42:49 PM",
    trigger = unless(word(0x00001E) < 961) && unless(word(0x00001E) > 1086) && byte(0x001F11) == 1 && 
              byte(0x001DEA) == 5 && byte(0x000DC0) == 0 && trigger_when(prev(byte(0x000DBE)) < byte(0x000DBE))
)

achievement(
    title = "Mushroom Ghost House Secret", description = "Get 1-up from Ghost House Twin A in Mushroom Plateau", points = 2,
    id = 69119, badge = "74021", published = "12/15/2018 3:38:40 PM", modified = "8/16/2021 4:42:53 PM",
    trigger = unless(word(0x00001E) < 571) && unless(word(0x00001E) > 640) && byte(0x001F11) == 0 && 
              byte(0x0013BF) == 19 && byte(0x000DC0) == 0 && trigger_when(prev(byte(0x000DBE)) < byte(0x000DBE))
)

achievement(
    title = "Wiggler's Bonus 1-up", description = "Get 1-up from Green Star Block in Wiggler Woods", points = 3,
    id = 69120, badge = "74022", published = "12/15/2018 3:52:52 PM", modified = "8/16/2021 5:41:47 PM",
    trigger = unless(word(0x00001E) < 659) && unless(word(0x00001E) > 826) && byte(0x001F11) == 3 && 
              byte(0x0013BF) == 71 && byte(0x000DC0) == 0 && trigger_when(prev(byte(0x000DBE)) < byte(0x000DBE))
)

achievement(
    title = "Frozen Bonus 1-up", description = "Get 1-up from Green Star Block in Frozen Valley 1", points = 3,
    id = 69121, badge = "74023", published = "12/15/2018 3:57:52 PM", modified = "8/16/2021 5:59:10 PM",
    trigger = never(byte(0x0013BF) != 76) && byte(0x001F11) == 6 && byte(0x000DC0) == 0 && 
              trigger_when(prev(byte(0x000DBE)) < byte(0x000DBE)) && once(byte(0x0014EB) == 10)
)

achievement(
    title = "Frozen Bonus 1-up 2", description = "Get 1-up from Green Star Block in Frozen Valley 2", points = 3,
    id = 69122, badge = "74024", published = "12/15/2018 4:05:36 PM", modified = "8/16/2021 6:03:19 PM",
    trigger = unless(word(0x00001E) < 2441) && unless(word(0x00001E) > 2572) && byte(0x001F11) == 6 && 
              byte(0x0013BF) == 39 && byte(0x000DC0) == 0 && trigger_when(prev(byte(0x000DBE)) < byte(0x000DBE))
)

achievement(
    title = "Chocolate Bonus 1-up", description = "Get 1-up from Green Star Block in Choco Pennisula", points = 3,
    id = 69172, badge = "74025", published = "12/16/2018 4:24:29 PM", modified = "8/18/2021 3:06:21 PM",
    trigger = byte(0x001F11) == 0 && byte(0x0013BF) == 93 && byte(0x000DC0) == 0 && unless(word(0x00001E) < 2077) && 
              unless(word(0x00001E) > 2176) && trigger_when(once(prev(byte(0x000DBE)) < byte(0x000DBE)))
)

achievement(
    title = "Urchin's Bonus 1-up", description = "Get 1-up from the Green Star Block in Urchin Ocean 3", points = 3,
    id = 69175, badge = "74026", published = "12/16/2018 5:57:09 PM", modified = "8/20/2021 2:08:59 PM",
    trigger = byte(0x001F11) == 0 && byte(0x0013BF) == 84 && byte(0x000DC0) == 0 && unless(word(0x00001E) < 2901) && 
              unless(word(0x00001E) > 3068) && trigger_when(prev(byte(0x000DBE)) < byte(0x000DBE))
)

achievement(
    title = "Bowser's Bonus 1-up", description = "Get 1-up from Green Star Block in Bowser Valley 2", points = 5,
    id = 69176, badge = "74027", published = "12/16/2018 6:10:17 PM", modified = "1/11/2022 6:36:01 PM",
    trigger = byte(0x001F11) == 4 && byte(0x0013BF) == 91 && byte(0x000DC0) == 0 && unless(word(0x00001E) < 1600) && 
              unless(word(0x00001E) > 1680) && trigger_when(prev(byte(0x000DBE)) < byte(0x000DBE))
)

achievement(
    title = "Underwater Starman", description = "Get a 1-up in Cheep Cheep Lake using starman", points = 5,
    id = 69214, badge = "74028", published = "12/17/2018 10:48:35 PM", modified = "1/11/2022 6:36:01 PM",
    trigger = byte(0x001F11) == 0 && byte(0x0013BF) == 17 && prev(byte(0x000DBE)) < byte(0x000DBE) && 
              byte(0x0018D2) == 8
)

achievement(
    title = "Blowing Up Bob-ombs", description = "In Wiggler Woods 2 get 16 1-ups from Bob-ombs using starman", points = 10,
    id = 69215, badge = "74029", published = "12/17/2018 10:55:50 PM", modified = "8/16/2021 5:35:14 PM",
    trigger = never(byte(0x0013BF) != 74) && byte(0x001F11) == 3 && byte(0x0018D2) >= 8 && 
              repeated(16, prev(byte(0x000DBE)) < byte(0x000DBE)) && unless(word(0x00001E) < 1243) && unless(word(0x00001E) > 2737)
)

achievement(
    title = "Frozen Starman", description = "Get 13 1-ups as starman in Frozen Valley 3 ", points = 10,
    id = 69145, badge = "74030", published = "12/15/2018 9:25:32 PM", modified = "8/16/2021 6:14:54 PM",
    trigger = never(byte(0x0013BF) != 81) && byte(0x001F11) == 6 && byte(0x0018D2) >= 8 && unless(word(0x00001E) < 1725) && 
              unless(word(0x00001E) > 2315) && unless(byte(0x000020) > 0) && repeated(13, prev(byte(0x000DBE)) < byte(0x000DBE))
)

achievement(
    title = "Dont Need No Stinking Balloon", description = " Get 1-up in Choco Pennisula 1 without P-Balloon (No Yoshi)", points = 10,
    id = 69173, badge = "74031", published = "12/16/2018 4:40:12 PM", modified = "1/11/2022 6:36:01 PM",
    trigger = unless(once(byte(0x001891) > 0)) && byte(0x001F11) == 0 && byte(0x0013BF) == 34 && byte(0x00187A) == 0 && 
              word(0x0000CE) == 41821 && trigger_when((word(0x00001E) == 592 && prev(byte(0x000DBE)) < byte(0x000DBE))) &&
              (always_false() || (never(byte(0x000071) == 9) && never(byte(0x000DD5) == 1)))
)

achievement(
    title = "Is That Vega?", description = "In Wendy's Castle get 10 1-ups from fence enemies before 420 on timer", points = 10,
    id = 69300, badge = "74032", published = "12/19/2018 7:13:51 PM", modified = "8/18/2021 5:27:23 PM",
    trigger = never(byte(0x0000CE) == 0) && byte(0x001F11) == 0 && byte(0x0013BF) == 27 && byte(0x000F31) >= 4 && 
              byte(0x000F32) >= 2 && measured(repeated(10, prev(byte(0x000DBE)) < byte(0x000DBE)))
)

achievement(
    title = "Cliff Hanger", description = "Complete Frozen Valley 4 with 320 or more seconds left (No cape and No Yoshi)", points = 10,
    id = 69146, badge = "74033", published = "12/15/2018 9:45:48 PM", modified = "8/16/2021 6:45:22 PM",
    trigger = unless(once(byte(0x00187A) == 1)) && unless(once(byte(0x000019) == 2)) && byte(0x001F11) == 6 && 
              byte(0x0013BF) == 28 && trigger_when(word(0x00001E) >= 816) && byte(0x000F31) >= 3 && byte(0x000F32) >= 2 &&
              (always_false() || (never(byte(0x000071) == 9) && never(byte(0x000DD5) == 1)))
)

achievement(
    title = "No Need For a Gas Mask", description = "Pass Bowserland Ghost House Gas Maze with 40 or more seconds left", points = 10,
    id = 69298, badge = "74034", published = "12/19/2018 7:06:53 PM", modified = "1/11/2022 6:36:02 PM",
    trigger = byte(0x001F11) == 4 && byte(0x0013BF) == 56 && byte(0x000F31) == 0 && byte(0x000F32) <= 4 && 
              prev(word(0x0000CE)) == 61664 && word(0x0000CE) == 61759
)

achievement(
    title = "Bulletproof", description = "Beat Bowserland 6 as Mini-Mario with 30 or more seconds left", points = 10,
    id = 69202, badge = "74035", published = "12/17/2018 6:02:19 PM", modified = "1/11/2022 6:36:02 PM",
    trigger = byte(0x001F11) == 4 && byte(0x0013BF) == 18 && word(0x0000CE) == 63294 && byte(0x000019) == 0 && 
              byte(0x000F32) < 3 && word(0x00001E) > 3888
)

achievement(
    title = "Didnt Take The Bait...Again", description = "Complete Choco Pennisula 2 without grabbing Lakitu's 1-up as little mario", points = 10,
    id = 69174, badge = "74036", published = "12/16/2018 5:35:41 PM", modified = "8/18/2021 3:01:54 PM",
    trigger = byte(0x001F11) == 0 && byte(0x0013BF) == 94 && byte(0x001525) == 16 && unless(byte(0x000019) != 0) && 
              once(word(0x00001E) <= 768 && never(byte(0x0000CE) == 0)) && word(0x00001E) > 2464
)

achievement(
    title = "Keys Dont Taste Good", description = "Complete Choco Pennisula 5 Key exit while riding Yoshi", points = 10,
    id = 69299, badge = "74037", published = "12/19/2018 7:08:44 PM", modified = "8/18/2021 5:00:32 PM",
    trigger = byte(0x000020) == 96 && byte(0x00001E) == 0 && byte(0x001F11) == 0 && byte(0x0013BF) == 36 && 
              byte(0x0015DB) == 1 && byte(0x000DD5) == 2
)

achievement(
    title = "Coins Are Lava", description = "Complete Urchin Ocean 6 without being hit or grabbing a coin", points = 10,
    id = 69217, badge = "74038", published = "12/18/2018 7:55:42 PM", modified = "1/11/2022 6:36:03 PM",
    trigger = byte(0x001F11) == 0 && byte(0x0013BF) == 77 && unless(once(byte(0x000071) == 1)) && 
              unless(once(prev(byte(0x000DBF)) < byte(0x000DBF))) && once(word(0x0000CE) == 35911) && once(word(0x0000CE) == 39998) && once(word(0x0000CE) == 41308) && 
              once(byte(0x0000CB) == 168) &&
              (always_false() || (word(0x0000CE) == 0))
)

achievement(
    title = "Mostly Everything Is Lava", description = "Beat Castle #6 without being hit", points = 10,
    id = 69216, badge = "74039", published = "12/18/2018 7:39:56 PM", modified = "1/11/2022 6:36:03 PM",
    trigger = byte(0x001F11) == 0 && byte(0x0013BF) == 32 && unless(once(byte(0x000071) == 1)) && 
              once(word(0x00001E) == 0) && once(word(0x0000CE) == 59039) && once(word(0x0000CE) == 60691) && once(word(0x0000CE) == 60842) && 
              once(word(0x0000CE) == 54557) && byte(0x0013C6) == 1 &&
              (always_false() || (never(byte(0x0000CE) == 0) && never(byte(0x000071) == 9)))
)

achievement(
    title = "Lava Moon", description = "Grab 3-up Moon in Bowser Valley 1 without using a cape", points = 4,
    id = 69184, badge = "74040", published = "12/16/2018 9:52:33 PM", modified = "1/11/2022 6:35:31 PM",
    trigger = byte(0x001F11) == 4 && byte(0x0013BF) == 82 && byte(0x000019) != 2 && prev(bit5(0x001FF8)) == 0 && 
              bit5(0x001FF8) == 1
)

achievement(
    title = "Lights Out", description = "Beat Bowserland 5 without turning on the Light (No Yoshi)", points = 25,
    id = 69203, badge = "74041", published = "12/17/2018 6:19:52 PM", modified = "1/11/2022 6:36:03 PM",
    trigger = byte(0x001F11) == 4 && byte(0x0013BF) == 87 && unless(once(byte(0x0000CB) != 0)) && byte(0x00187A) == 0 && 
              once(word(0x00001E) < 256) && once(word(0x00001E) == 2560) &&
              (always_false() || (never(word(0x00001E) == 0)))
)

achievement(
    title = "Bowser's Castle Explorer 2", description = "Complete all separate doors in one game session", points = 10,
    id = 69185, badge = "74042", published = "12/16/2018 10:28:49 PM", modified = "1/11/2022 6:35:00 PM",
    trigger = never(byte(0x001F11) != 4) && never(byte(0x0013BF) != 49) && 
              once((word(0x0000CE) + prev(word(0x0000CE))) == 125489) && once((word(0x0000CE) + prev(word(0x0000CE))) == 125766) && 
              once((word(0x0000CE) + prev(word(0x0000CE))) == 126343) && once((word(0x0000CE) + prev(word(0x0000CE))) == 127503) && 
              once((word(0x0000CE) + prev(word(0x0000CE))) == 121297) && once((word(0x0000CE) + prev(word(0x0000CE))) == 98305)
)
