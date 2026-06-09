/// @description Insert description here
// You can write your code in this editor
		audio_play_sound(snd_TurnDropFull,0,0)
		var psys = part_system_create(StarDown)
		part_system_position(psys,x,y)
		part_system_depth(psys,depth)