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
			Spell = "Tarukaja"
			Fnt = Menufont
		}
		with global.Options[1]
		{
			Spell = "Charge"
			Fnt = Menufont
		}
		with global.Options[2]
		{
			Spell = "Matarukaja"
			Fnt = Menufont
		}
		with global.Options[3]
		{
			Spell = "Rude Buster"
			Fnt = Menufont
		}
	}

if AC = 1 && GM.CurrentOption == 0
	{
		Movetype = 1
		global.MPCost = 6
	}
	
if AC = 1 && GM.CurrentOption == 2
	{
		Movetype = 1
		global.MPCost = 12
	}
	
if AC = 1 && GM.CurrentOption == 3
	{
		Movetype = -1
		global.MPCost = 24
	}

if SkillID == 2
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
					DmgSet(200-DmgRdc)
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
						Target.TRKJ = clamp(Target.TRKJ+1,-3,3)
						SpawnFX(TarukajaFXO,Target.x,Target.y)
						global.SkillActive = 0
						audio_play_sound(StatUp,0,0)
						EndTurn()
						Attacking = 0
						Hittime = 25
				}
			if Hittime <= 0 && SkillID == 2
				{
						CHG = 1
						SpawnFX(ChargeFXO,Target.x,Target.y)
						global.SkillActive = 0
						audio_play_sound(StatUp,0,0)
						EndTurn()
						SkillID = 0
						Attacking = 0
						Hittime = 25
				}
		if Hittime <= 0 && SkillID == 3
				{
				for (var i = 0; i < array_length(global.Players); ++i) {
			    with global.Players[i]
					{
						TRKJ = clamp(TRKJ+1,-3,3)
						SpawnFX(TarukajaFXO,x,y)
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
		if Hittime <= 0 && SkillID == 4
			{
				Attacking = 0
				global.SkillActive = 0
				Hittime = 25
				EndTurn()
				}	
			}
			
