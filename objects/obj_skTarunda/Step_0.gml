/// @description Insert description here
// You can write your code in this editor
Hittime -= 1

if Hittime = 0
	{
		with User
			{
			Target.TRKJ = clamp(Target.TRKJ-1,-3,3)
			SpawnFX(TarundaFXO,Target.x,Target.y)
			audio_play_sound(StatDown,0,0)
			global.SkillActive = 0
			Attacking = 0
			Hittime = 25
			EndTurn()
			}
		instance_destroy()
	}