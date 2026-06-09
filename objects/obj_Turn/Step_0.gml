/// @description Insert description here
// You can write your code in this editor
timer++;

image_angle = sin(0.05*timer)*20

if LIFE == 2
	{
		sprite_index = ftspr
	}
	else
	{
		//if timer%10 = 1 //????
		if sprite_index != htspr
		{
		var psys = part_system_create(StarDown)
		part_system_position(psys,x,y)
		part_system_depth(psys,depth)
		audio_play_sound(snd_TurnDropHalf,0,0)
		sprite_index = htspr
		}
	}

