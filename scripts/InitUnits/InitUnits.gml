// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.Units = 
[		
		{
			NameShort: "Kris",
			Name: "Kris (Chapter 2)",
			DisplaySpr: KrisPort,
			BattleObj: obj_BattleChar,
			EnemyAI: KrisAI,
			Icon: Kriscon,
			DmgColor: #85e9ff,
			LV: 1,
			BHP: 228,
			BMP: 347,
			STR: 2,
			DEF: 3,
			MAG: 1,
			Res: [1,0,0,0,0,0,0,0,0], //-3 = Repel -2 = Null, -1 = Resist, 0 = Neutral, 1 = VUlnerable
			Gear: [
					{ //Head
						Name:"Knight's Cowl",
						Type:0, // 0 = Head, 1 = Body
						Desc:"Silken thread that protects the soul.",
						Stats: {
								STR: 0,
								DEF: 2,
								}	
						}, // End of Accessory
						
					{ //Weapon
						Name:"Hero's Sword",
						Type:0, // 0 = Head, 1 = Body
						Desc:"Blade against protection.",
						Stats: {
								STR: 3,
								DEF: 0,
								}	
						}, // End of Accessory
					
					{ //Body
						Name:"Squire's Chestplate",
						Type:0, // 0 = Head, 1 = Body
						Desc:"Protection against blades.",
						Stats: {
								STR: 0,
								DEF: 4,
								}	
						}, // End of Accessory
					
					{ //Legs
						Name:"Traveler's Greaves",
						Type:0, // 0 = Head, 1 = Body
						Desc:"Long traveled.",
						Stats: {
								STR: 0,
								DEF: 3,
								}	
						}, // End of Accessory
					

				],	
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
					AttackSound: snd_UndertaleSwing,
					HitSound: snd_UndertaleDMG,
					HurtSnd: UTHurt,
				
				},
			Skills:	[
							{
								Name: "X Slash",
								Desc: "Slash twice with a higher average.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP //CURRENTLY UNUSED, Text is a holdover from felbound.
								Cost: 36,
								TargetType: -1, //-1 = Target Enemy, 0 = Target Self, 1 = Target Allies, 2 = Target Allies (Dead)
								SkillObj: obj_skBasicXSlash,
							},
							{
								Name: "Hassotobi",
								Desc: "Slash with everything you've got.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 42,
								TargetType: -1,
								SkillObj: obj_skBasicHasso,
							},
							{
								Name: "Rakukaja",
								Desc: "Increase an Ally's Defense by 1 Stage.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP 
								Cost: 16,
								TargetType: 1, // Target Allies
								SkillObj: obj_skRakukaja,
							},
							{
								Name: "Marakukaja",
								Desc: "Increase The Party's Defense by 1 Stage.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 24,
								TargetType: 1,
								SkillObj: obj_skMarakukaja,
							},
									
					],
		},
		{
			NameShort: "Susie",
			Name: "Susie (Chapter 2)",
			DisplaySpr: SusiePort,
			BattleObj: obj_BattleChar,
			EnemyAI: KrisAI,
			Gear: [
					{ //Head
						Name:"Iron Shackles",
						Type:0, // 0 = Head, 1 = Body
						Desc:"Once an expression of captivity, now the symbol of your freedom.",
						Stats: {
								STR: 0,
								DEF: 1,
								}	
						}, // End of Accessory
						
					{ //Weapon
						Name:"Mane Axe",
						Type:0, // 0 = Head, 1 = Body
						Desc:"Swing first, Axe Later.",
						Stats: {
								STR: 6,
								DEF: 0,
								}	
						}, // End of Accessory
					
					{ //Body
						Name:"Rebel's Vest",
						Type:0, // 0 = Head, 1 = Body
						Desc:"Tough threads for a tough gal.",
						Stats: {
								STR: 0,
								DEF: 4,
								}	
						}, // End of Accessory
					
					{ //Legs
						Name:"Voidblack Boots",
						Type:0, // 0 = Head, 1 = Body
						Desc:"They look pretty rad, eh?",
						Stats: {
								STR: 0,
								DEF: 3,
								}	
						}, // End of Accessory
					

				],	
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
			LV: 1,
			BHP: 450,
			BMP: 175,
			STR: 3,
			DEF: 1,
			MAG: 2,
			Res: [1,0,0,0,0,0,0,0,0], //-3 = Repel -2 = Null, -1 = Resist, 0 = Neutral, 1 = VUlnerable
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
					AttackSound: snd_UndertaleSwing,
					HitSound: snd_UndertaleDMG,
					HurtSnd: UTHurt,
				
				},
			Skills:	[
							{
								Name: "Tarukaja",
								Desc: "Raise an Ally's attack power by one stage.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 10,
								TargetType: 1,
								SkillObj: obj_skTarukaja,
							},
							{
								Name: "Matarukaja",
								Desc: "Raise entire Party's attack power by one stage.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 10,
								TargetType: 1,
								SkillObj: obj_skMatarukaja,
							},
							{
								Name: "Power Charge",
								Desc: "Your next attack will do 2.5x damage.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 10,
								TargetType: 1,
								SkillObj: obj_skCharge,
							},
							{
								Name: "Rude Buster",
								Desc: "Susie's Signature Technique.\nDoes massive Slashing Damage.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 10,
								TargetType: -1,
								SkillObj: obj_skRudeBuster,
							},
									
					],
		},
		{
			NameShort: "Ralsei",
			Name: "Ralsei (Chapter 2)",
			DisplaySpr: RalseiPort,
			BattleObj: obj_BattleChar,
			EnemyAI: KrisAI,
			Gear: [
					{ //Head
						Name:"Pretty Ribbon",
						Type:0, // 0 = Head, 1 = Body
						Desc:"Pretty Ribbon for a fluffy fella.",
						Stats: {
								STR: 0,
								DEF: 2,
								}	
						}, // End of Accessory
						
					{ //Weapon
						Name:"Ragger",
						Type:0, // 0 = Head, 1 = Body
						Desc:"Sharp threads that when swung, are actually sharp.",
						Stats: {
								STR: 3,
								DEF: 0,
								}	
						}, // End of Accessory
					
					{ //Body
						Name:"Darkner's Cloak",
						Type:0, // 0 = Head, 1 = Body
						Desc:"The very first thing you've had since your inception.",
						Stats: {
								STR: 0,
								DEF: 4,
								}	
						}, // End of Accessory
					
					{ //Legs
						Name:"Shade Leggings",
						Type:0, // 0 = Head, 1 = Body
						Desc:"Light and comfortable.",
						Stats: {
								STR: 0,
								DEF: 3,
								}	
						}, // End of Accessory
					

				],	
			BaseAtk: {
						obj : obj_skBasicAtk,
						TargetType : -1,
					},		
			LV: 1,
			BHP: 228,
			BMP: 347,
			STR: 1,
			DEF: 2,
			MAG: 3,
			Res: [1,0,0,0,0,0,0,0,0], //-3 = Repel -2 = Null, -1 = Resist, 0 = Neutral, 1 = VUlnerable
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
					AttackSound: snd_UndertaleSwing,
					HitSound: snd_UndertaleDMG,
					HurtSnd: UTHurt,
				
				},
			Skills:	[
							{
								Name: "Heal Prayer",
								Desc: "Heal a target for 53% of their HP",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 36,
								TargetType: 1,
								SkillObj: obj_skHealPrayer,
							},
							{
								Name: "Quad Heal",
								Desc: "Heal the entire party for 40% of their HP",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 42,
								TargetType: 1,
								SkillObj: obj_skQuadHeal,
							},
							{
								Name: "Tarunda",
								Desc: "Reduce an enemy's attack power by 1 stage.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 16,
								TargetType: -1,
								SkillObj: obj_skTarunda,
							},
							{
								Name: "Matarunda",
								Desc: "Reduce the enemy party's attack power by 1 stage.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP
								Cost: 24,
								TargetType: -1,
								SkillObj: obj_skMatarunda,
							},
									
					],
		},
]

global.Mobs =
{
	RoaringKnight:
	{
			NameShort: "The Knight",
			Name: "???",
			DisplaySpr: KrisPort,
			BattleObj: obj_BattleChar,
			EnemyAI: KnightAI,
			Icon: Kriscon,
			DmgColor: c_white,
			BHP: 70000,
			BMP: 999999,	
			STR: 3,
			DEF: 1,
			MAG: 2,
			Res: [1,0,0,0,0,0,0,0,0], //-3 = Repel -2 = Null, -1 = Resist, 0 = Neutral, 1 = VUlnerable
			Anims: {
					NormalAtk: KrisPreAtk,
					NormalEnd: KrisAtk,
					Cast: KrisSkill,
					Idle: KnightIdle,
					Hurt: KnightHurt,
					DeathSpr: KrisDown,
					GuardStart: KrisGuardStart,
					Guard: KrisGuard,
					XSlash: KrisXSlash,
					SwdDrop: KnightDropSword,
				},
			Snds: {
					AttackSound: snd_UndertaleSwing,
					HitSound: snd_UndertaleDMG,
					HurtSnd: KnightDmg1,
				
				},
			BaseAtk: {
						obj : obj_skBasicAtk,
						TargetType : -1,
					},		
			Skills:	[
							{
								Name: "X Slash",
								Desc: "Slash twice with a higher average.",
								CostType: 0, // 0 = MP 1 = HP 2 = EP //CURRENTLY UNUSED, Text is a holdover from felbound.
								Cost: 36,
								TargetType: -1, //Target Enemy
								SkillObj: obj_skSnowFall,
							},
									
					],
		}, 
		// End of Enemy

		
}

global.Party = [variable_clone(global.Units[0]),variable_clone(global.Units[1]),variable_clone(global.Units[2])]
for (var i = 0; i < array_length(global.Party); ++i) {
    global.Party[i].CurrentHP = global.Party[i].BHP
	global.Party[i].CurrentMP = global.Party[i].BMP
}
global.Troop = [global.Units[0]]