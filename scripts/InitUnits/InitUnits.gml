// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.Units = 
[		
		{
			NameShort: "Kris",
			Name: "Kris (Chapter 1)",
			DisplaySpr: KrisIdle,
			BattleObj: obj_BattleChar,
			Icon: Kriscon,
			DmgColor: #85e9ff,
			IdleTxt: {
						a: "...",
						b: "...?",
						c: "Hm.",
					 },
			Anims: {
					NormalAtk: KrisPreAtk,
					NormalEnd: KrisAtk,
					Cast: KrisSkill,
					Idle: KrisIdle,
					Hurt: KrisHurt,
					DeathSpr: KrisDown,
					GuardStart: KrisGuardStart,
					Guard: KrisGuard,
					XSlash: KrisXSlash,
				},
			Snds: {
					AttackSound: UndertaleSwing,
					HitSound: UndertaleDMG,
					HurtSnd: UTHurt,
				
				},
			Skills:	{
						XSlash:
							{
								Name: "X Slash",
								Desc: "Slash twice with a higher average.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 36,
								TargetType: 0,
								SkillObj: obj_skBasicAtk,
							},
						Hasstou:
							{
								Name: "Hassotobi",
								Desc: "Slash with everything you've got.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 42,
								TargetType: 0,
								SkillObj: obj_skBasicAtk,
							},
						Raku:
							{
								Name: "Rakukaja",
								Desc: "Increase an Ally's Defense by 1 Stage.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 16,
								TargetType: 0,
								SkillObj: obj_skBasicAtk,
							},
						Maraku:
							{
								Name: "Marakukaja",
								Desc: "Increase The Party's Defense by 1 Stage.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 24,
								TargetType: 0,
								SkillObj: obj_skBasicAtk,
							},
									
					},
		},
		{
			NameShort: "Susie",
			Name: "Susie (Chapter 2)",
			DisplaySpr: SusieIdle,
			BattleObj: obj_BattleChar,
			IdleTxt: {
						a: "Kris?! Kris, where the hell are we?!",
						b: "Seems like we're in some kind of.",
						c: "Damn, I'm kinda cravin' some cheese.",
					},
			Icon: SusieCon,
			DmgColor: #85e9ff,
			IdleTxt: {
						a: "...",
						b: "...?",
						c: "Hm.",
					 },
			Anims: {
					NormalAtk: SusiePreAtk,
					NormalEnd: SusieAtk,
					Cast: SusieCast,
					Idle: SusieIdle,
					Hurt: SusieHurt,
					DeathSpr: SusieDown,
					GuardStart: SusieGuardStart,
					Guard: SusieGuard,
					RdeBst: SusieRudeBuster,
				},
			Snds: {
					AttackSound: UndertaleSwing,
					HitSound: UndertaleDMG,
					HurtSnd: UTHurt,
				
				},
			Skills:	{
						XSlash:
							{
								Name: "X Slash",
								Desc: "Slash twice with a higher average.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 10,
								TargetType: 0,
								SkillObj: obj_skBasicAtk,
							},
						Hasstou:
							{
								Name: "Hassotobi",
								Desc: "Slash with everything you've got.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 10,
								TargetType: 0,
								SkillObj: obj_skBasicAtk,
							},
						Raku:
							{
								Name: "Rakukaja",
								Desc: "Increase an Ally's Defense by 1 Stage.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 10,
								TargetType: 0,
								SkillObj: obj_skBasicAtk,
							},
						Maraku:
							{
								Name: "Marakukaja",
								Desc: "Increase The Party's Defense by 1 Stage.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 10,
								TargetType: 0,
								SkillObj: obj_skBasicAtk,
							},
									
					},
		},
		{
			NameShort: "Ralsei",
			Name: "Ralsei (Chapter 2)",
			DisplaySpr: RalseiIdle,
			BattleObj: obj_BattleChar,
			IdleTxt: {
						a: "Ah..this isn't quite a dark world but...I'll be your guide all the same!",
						b: "After this is all wrapped up, we should have a tea party!",
						c: "I'm not really used to all this fighting..",
					},
			Icon: Ralseicon,
			DmgColor: #85e9ff,
			IdleTxt: {
						a: "...",
						b: "...?",
						c: "Hm.",
					 },
			Anims: {
					NormalAtk: RalseiPreAtk,
					NormalEnd: RalseiAtk,
					Cast: RalseiCast,
					Idle: RalseiIdle,
					Hurt: RalseiHurt,
					DeathSpr: RalseiDown,
					GuardStart: RalseiGuardStart,
					Guard: RalseiGuard,
				},
			Snds: {
					AttackSound: UndertaleSwing,
					HitSound: UndertaleDMG,
					HurtSnd: UTHurt,
				
				},
			Skills:	{
						XSlash:
							{
								Name: "X Slash",
								Desc: "Slash twice with a higher average.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 36,
								TargetType: 0,
								SkillObj: obj_skBasicAtk,
							},
						Hasstou:
							{
								Name: "Hassotobi",
								Desc: "Slash with everything you've got.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 42,
								TargetType: 0,
								SkillObj: obj_skBasicAtk,
							},
						Raku:
							{
								Name: "Rakukaja",
								Desc: "Increase an Ally's Defense by 1 Stage.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 16,
								TargetType: 0,
								SkillObj: obj_skBasicAtk,
							},
						Maraku:
							{
								Name: "Marakukaja",
								Desc: "Increase The Party's Defense by 1 Stage.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 24,
								TargetType: 0,
								SkillObj: obj_skBasicAtk,
							},
									
					},
		},
]



global.Party = [global.Units[0],global.Units[1],global.Units[2]]
global.Troop = [Dess]