// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.Units = 
[		
		{
			NameShort: "Kris",
			Name: "Kris (Chapter 1)",
			DisplaySpr: KrisIdle,
			BattleObj: Kris,
			Icon: Kriscon,
			IdleTxt: {
						a: "...",
						b: "...?",
						c: "Hm.",
					}
		},
		{
			NameShort: "Susie",
			Name: "Susie (Chapter 2)",
			DisplaySpr: SusieIdle,
			BattleObj: Susie,
			IdleTxt: {
						a: "Kris?! Kris, where the hell are we?!",
						b: "Seems like we're in some kind of.",
						c: "Damn, I'm kinda cravin' some cheese.",
					}
		},
		{
			NameShort: "Ralsei",
			Name: "Ralsei (Chapter 2)",
			DisplaySpr: RalseiIdle,
			BattleObj: Ralsei,
			IdleTxt: {
						a: "Ah..this isn't quite a dark world but...I'll be your guide all the same!",
						b: "After this is all wrapped up, we should have a tea party!",
						c: "I'm not really used to all this fighting..",
					}
		},
]



global.Party = [global.Units[0],global.Units[1]]
global.Troop = [Sephiroth]