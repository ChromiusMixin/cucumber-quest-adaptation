/// @description Insert description here
// You can write your code in this editor
Hittime -= 1

if Hittime = 0
	{
		with User
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
		instance_destroy()
	}