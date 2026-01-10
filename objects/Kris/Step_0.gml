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
			Spell = "Rakukaja"
			Fnt = Menufont
		}
		with global.Options[1]
		{
			Spell = "Hassou Tobi"
			Fnt = Menufont
		}
		with global.Options[2]
		{
			Spell = "Marakukaja"
			Fnt = Menufont
		}
		with global.Options[3]
		{
			Spell = "X Slash"
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
		Movetype = -1
		global.MPCost = 0
	}
	
if AC = 1 && obj_GM.CurrentOption == 2
	{
		Movetype = 1
		global.MPCost = 24
	}
	
if AC = 1 && obj_GM.CurrentOption == 3
	{
		Movetype = -1
		global.MPCost = 36
	}




if ReadyingNormal == 1
	{
		Delay -= 1
	}

if Attacking == 1
	{
		Hittime -= 1
		if Hittime <= 0 && SkillID < 1
				{
					DmgSet(150-DmgRdc)
					global.SkillActive = 0
					Camera.FollowPlayer = 0
					holdanim = 0
					DamageEnemy(Target,Dmg,HitSound,Slicespark,,-50,DmgColor,"DTRF",,c_black,2)
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
						Target.RKJA = clamp(Target.RKJA+1,-3,3)
						SpawnFX(RakukajaFXO,Target.x,Target.y)
						global.SkillActive = 0
						audio_play_sound(StatUp,0,0)
						EndTurn()
						Attacking = 0
						Hittime = 25
				}
		if Hittime <= 0 && SkillID == 3
				{
				for (var i = 0; i < array_length(global.Players); ++i) {
			    with global.Players[i]
					{
						RKJA = clamp(RKJA+1,-3,3)
						SpawnFX(RakukajaFXO,x,y)
					}
						if i = array_length(global.Players)-1
							{
						global.SkillActive = 0
						audio_play_sound(StatUp,0,0)
						EndTurn()
						Attacking = 0
						Hittime = 25
							}
					}
					
						
				}
			
	}