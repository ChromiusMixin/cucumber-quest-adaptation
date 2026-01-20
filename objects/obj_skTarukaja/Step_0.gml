/// @description Insert description here
// You can write your code in this editor
Hittime -= 1

if Hittime = 0
	{
		with User
			{
				Target.TRKJ = clamp(Target.TRKJ+1,-3,3)
				SpawnFX(TarukajaFXO,Target.x,Target.y)
				global.SkillActive = 0
				audio_play_sound(StatUp,0,0)
				EndTurn()
				Attacking = 0
				Hittime = 25
			}
		instance_destroy()
	}