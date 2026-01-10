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
if GM.MenuActive == 1 && AC == 1
	{
		with global.Options[0]
		{
			Spell = "Hellrush"
			Fnt = Menufont
		}
		with global.Options[1]
		{
			Spell = "Buckshot Fist"
			Fnt = Menufont
		}
		with global.Options[2]
		{
			Spell = "Qi Mantra"
			Fnt = Menufont
		}
	}

if AC = 1 && GM.CurrentOption == 2
	{
		Movetype = 1
		global.MPCost = 25
	}

if SkillID == 3
	{
		GM.CurrentOption = PlayerID
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
					global.SkillActive = 0
					Camera.FollowPlayer = 0
					holdanim = 0
					DmgSet(60+DmgRdc)
					DamageEnemy(Target,Dmg,HitSound,HeavySpark,0,-50,DmgColor,,,c_black)
					Target.state = 5
					Target.state = 3
					show_debug_message("Attacked!!!!!!!!!!!!")
					EndTurn()
					Delay = 2
					Hittime = 25
					Attacking = 0
				}
		if Hittime <= 0 && SkillID == 3
			{
				DamageEnemy(Target,-MHP*0.4,UTHeal,,,,c_white,,,c_green,,0)
				Flash = 1
				EndTurn()
				SkillID = 0
				Attacking = 0
				global.SkillActive = 0
			}
	}