// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.Units = 
[		
		{
			NameShort: "Kris",
			Name: "Kris (Chapter 1)",
			DisplaySpr: KrisPort,
			BattleObj: obj_BattleChar,
			BattleObjEn: obj_EnBattleChar,
			Icon: Kriscon,
			DmgColor: #85e9ff,
			BHP: 228,
			BMP: 347,
			BaseAtk: {
						obj : obj_skBasicAtk,
						targettype : 1,
					},		
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
								CostType: 0, // 0 = MP 1 = HP 2 = EP //CURRENTLY UNUSED, Text is a holdover from felbound.
								Cost: 36,
								TargetType: -1, //Target Enemy
								SkillObj: obj_skBasicXSlash,
							},
						Hasstou:
							{
								Name: "Hassotobi",
								Desc: "Slash with everything you've got.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 42,
								TargetType: -1,
								SkillObj: obj_skBasicHasso,
							},
						Raku:
							{
								Name: "Rakukaja",
								Desc: "Increase an Ally's Defense by 1 Stage.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP 
								Cost: 16,
								TargetType: 1, // Target Allies
								SkillObj: obj_skRakukaja,
							},
						Maraku:
							{
								Name: "Marakukaja",
								Desc: "Increase The Party's Defense by 1 Stage.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 24,
								TargetType: 1,
								SkillObj: obj_skMarakukaja,
							},
									
					},
		},
		{
			NameShort: "Susie",
			Name: "Susie (Chapter 2)",
			DisplaySpr: SusiePort,
			BattleObj: obj_BattleChar,
			BattleObjEn: obj_EnBattleChar,
			BaseAtk: {
						obj : obj_skBasicAtk,
						targettype : -1,
					},		
			IdleTxt: {
						a: "Kris?! Kris, where the hell are we?!",
						b: "Seems like we're in some kind of test zone...",
						c: "Damn, I'm kinda cravin' some cheese.",
					},
			Icon: SusieCon,
			DmgColor: #f797ed,
			BHP: 450,
			BMP: 175,
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
						Taruka:
							{
								Name: "Tarukaja",
								Desc: "Raise an Ally's attack power by one stage.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 10,
								TargetType: 1,
								SkillObj: obj_skTarukaja,
							},
						Mataruka:
							{
								Name: "Matarukaja",
								Desc: "Raise entire Party's attack power by one stage.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 10,
								TargetType: 1,
								SkillObj: obj_skMatarukaja,
							},
						PowChg:
							{
								Name: "Power Charge",
								Desc: "Your next attack will do 2.5x damage.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 10,
								TargetType: 1,
								SkillObj: obj_skCharge,
							},
						Marakuka:
							{
								Name: "Rude Buster",
								Desc: "Susie's Signature Technique, does massive Slashing Damage.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 10,
								TargetType: 1,
								SkillObj: obj_skRudeBuster,
							},
									
					},
		},
		{
			NameShort: "Ralsei",
			Name: "Ralsei (Chapter 2)",
			DisplaySpr: RalseiPort,
			BattleObj: obj_BattleChar,
			BattleObjEn: obj_EnBattleChar,
			BaseAtk: {
						obj : obj_skBasicAtk,
						TargetType : -1,
					},		
			BHP: 228,
			BMP: 347,
			IdleTxt: {
						a: "Ah..this isn't quite a dark world but...I'll be your guide all the same!",
						b: "After this is all wrapped up, we should have a tea party!",
						c: "I'm not really used to all this fighting..",
					},
			Icon: Ralseicon,
			DmgColor: #b0ffd5,
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
						HealPray:
							{
								Name: "Heal Prayer",
								Desc: "Heal a target for 53% of their HP",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 36,
								TargetType: 1,
								SkillObj: obj_skHealPrayer,
							},
						QuadHeal:
							{
								Name: "Quad Heal",
								Desc: "Heal the entire party for 40% of their HP",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 42,
								TargetType: 1,
								SkillObj: obj_skQuadHeal,
							},
						Tarun:
							{
								Name: "Tarunda",
								Desc: "Reduce an enemy's attack power by 1 stage.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 16,
								TargetType: -1,
								SkillObj: obj_skTarunda,
							},
						Matarun:
							{
								Name: "Matarunda",
								Desc: "Reduce the enemy party's attack power by 1 stage.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 24,
								TargetType: -1,
								SkillObj: obj_skMatarunda,
							},
									
					},
		},
]



global.Party = [global.Units[0],global.Units[1],global.Units[2]]
global.Troop = [global.Units[0]]