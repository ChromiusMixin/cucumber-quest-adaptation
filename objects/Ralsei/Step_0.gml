/// @description Menu Shit, detect turn order
// You can write your code in this editor

Flash = lerp(Flash,0,0.2)

///Initialize Animation System
var Frame = image_index
var AnimEnd = image_number -1
var Anim = sprite_index
var StateTime = 0

HP = clamp(HP,0,MHP)

MP = clamp(MP,0,MMP)



WatchForDeath()

//Skill Menu Initialize
if obj_GM.MenuActive == 1 && AC == 1
	{
		with global.Options[0]
		{
			Spell = "Heal Prayer"
			Fnt = Menufont
		}
		with global.Options[1]
		{
			Spell = "Quad Heal"
			Fnt = Menufont
		}
		with global.Options[2]
		{
			Spell = "Tarunda"
			Fnt = Menufont
		}
		with global.Options[3]
		{
			Spell = "Matarunda"
			Fnt = Menufont
		}
	}

if AC = 1 && obj_GM.CurrentOption == 0
	{
		Movetype = 1
		global.MPCost = 16
	}
if AC = 1 && obj_GM.CurrentOption == 1
	{
		Movetype = 1
		global.MPCost = 24
	}	
if AC = 1 && obj_GM.CurrentOption == 2
	{
		Movetype = -1
		global.MPCost = 16
	}
if AC = 1 && obj_GM.CurrentOption == 3
	{
		Movetype = -1
		global.MPCost = 24
	}



if SkillID == 2
	{
		obj_GM.CurrentOption = PlayerID
	}


if ReadyingNormal == 1
	{
		Delay -= 1
	}

if Attacking == 1
	{
		Hittime -= 1
		if Hittime <= 0 && SkillID = 0
				{
					global.SkillActive = 0
					Camera.FollowPlayer = 0
					holdanim = 0
					DmgSet(100-DmgRdc)
					DamageEnemy(Target,Dmg,HitSound,Slicespark,,-50,DmgColor,"DTRF",,c_black,2)
					MP += round(Dmg/3)
					Target.state = 5
					Target.state = 3
					show_debug_message("Attacked!!!!!!!!!!!!")
					EndTurn()
					Delay = 2
					Hittime = 25
					Attacking = 0
				}

		if Hittime <= 0 && SkillID == 1
			{
				DamageEnemy(Target,-Target.MHP*0.53,UTHeal,HealFxDT,,0,c_lime,"DTRF",,c_green,,0)
				if variable_instance_exists(Target,"Flash")
					{
						Target.Flash = 1
					}
				SkillID = 0
				Attacking = 0
				global.SkillActive = 0
				EndTurn()
			}


		if Hittime <= 0 && SkillID == 2
			{
			for (var i = 0; i < array_length(global.Players); ++i) {
			    with global.Players[i] 
					{
					DamageEnemy(self,-MHP*0.4,UTHeal,HealFxDT,,0,c_lime,"DTRF",,c_green,,0)
					Flash = 1
					}
				if i == array_length(global.Players)-1
					{
				SkillID = 0
				Attacking = 0
				global.SkillActive = 0
				EndTurn()
					}
			}
			}
			if Hittime <= 0 && SkillID == 3
				{
						Target.TRKJ = clamp(Target.TRKJ-1,-3,3)
						SpawnFX(TarundaFXO,Target.x,Target.y)
						audio_play_sound(StatDown,0,0)
						global.SkillActive = 0
						Attacking = 0
						Hittime = 25
						EndTurn()
				}
		if Hittime <= 0 && SkillID == 4
			{
			for (var i = 0; i < array_length(global.Enemies); ++i) {
			    with global.Enemies[i] 
					{
					TRKJ = clamp(TRKJ-1,-3,3)
					SpawnFX(TarundaFXO,x,y)
					}
				}
				audio_play_sound(StatDown,0,0)
				SkillID = 0
				Attacking = 0
				global.SkillActive = 0
				EndTurn()
				Hittime = 25
			}

	}
