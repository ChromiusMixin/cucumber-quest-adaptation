/// @description Insert description here
// You can write your code in this editor
Hittime -= 1

if Hittime = 0
	{
		with User
			{
				CHG = 1
				SpawnFX(ChargeFXO,x,y)
				global.SkillActive = 0
				audio_play_sound(StatUp,0,0)
				EndTurn()
				Attacking = 0
				Hittime = 25
			}
		instance_destroy()
	}