/// @description Insert description here
// You can write your code in this editor
Hittime -= 1

if Hittime = 0
	{
		with User
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
		instance_destroy()
	}