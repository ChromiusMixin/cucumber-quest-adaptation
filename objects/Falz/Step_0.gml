/// @description Menu Shit, detect turn order
// You can write your code in this editor

Flash = lerp(Flash,0,0.2)

///Initialize Animation System
var Frame = floor(image_index)
var AnimEnd = image_number -1
var Anim = sprite_index
var StateTime = 0



AiTime++;

if JVelY <	0
	{
		JVelY = lerp(JVelY,4,0.2)
	}
if JVelX >	0 || JVelX < 0
	{
		JVelX = lerp(JVelX,0,0.2)
	}

if Jumping == 1
	{


	y+= JVelY
	x+= JVelX
	//if AiTime%10 = 1 
	//	{
	//		AfterImage(x,y,0,0,0.05)
			
	//	}

	}
	else
	{
		ResetJump()
	}
	
HP = clamp(HP,0,MHP)

MP = clamp(MP,0,MMP)

if Stance = 0
	{
		stancetext = "Neutral"
	}
if Stance = 1
	{
		stancetext = "Carving"
	}
if Stance = 2
	{
		stancetext = "Cleaving"
	}

WatchForDeath()

//Skill Menu Initialize
if GM.MenuActive == 1 && AC == 1
	{
		with global.Options[0]
		{
			Spell = "Bisect"
			Fnt = Menufont
		}
		with global.Options[1]
		{
			Spell = "Vivisect"
			Fnt = Menufont
		}
		with global.Options[2]
		{
			Spell = "Arc Falz"
			Fnt = Menufont
		}
		with global.Options[3]
		{
			Spell = "End of Days"
			Fnt = Menufont
		}
	}

if AC = 1 && GM.CurrentOption == 0
	{
		Movetype = -1
		global.MPCost = 16
	}
	
if AC = 1 && GM.CurrentOption == 1
	{
		Movetype = -1
		global.MPCost = 26
	}
	
if AC = 1 && GM.CurrentOption == 2
	{
		Movetype = 1
		global.MPCost = 24
	}
	
if AC = 1 && GM.CurrentOption == 3
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
					Stance = 1
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
						var GSHMNT = 24
						
						if Stance == 1
							{
								GSHMNT = GSHMNT*1.25
								Stance = 2
							}
						GiveGsh(Target,GSHMNT)
						//SpawnFX(RakukajaFXO,Target.x,Target.y)
						global.SkillActive = 0
						//audio_play_sound(StatUp,0,0)
						EndTurn()
						Attacking = 0
						Hittime = 25
				}
				
		if SkillID == 2 && Hittime > 0 && sprite_index = FalzVivisect && (CurrentFrame(7)) && Jumping != 1
			{
			depth = Target.depth-20
			holdanim = 1
			Jumping = 1
			audio_play_sound(TP,0,0,3)
			Camera.OffsetY = -20
			x = Target.x+70
			y = Target.y-Target.sprite_height+45
			DmgSet(100+irandom(35))
			if Stance == 2
				{
					Dmg = Dmg*2.5
				}
			DamageEnemy(Target,Dmg*(1+(VP/100)),MeltyHeavySlice,Coolslice,,-50,DmgColor,"DTRF",,c_black)
			VP = 0
			Stance = 0
			}
		
		if Hittime <= 0 && SkillID == 2
				{
						//SpawnFX(RakukajaFXO,Target.x,Target.y)
						global.SkillActive = 0
						//audio_play_sound(StatUp,0,0)
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