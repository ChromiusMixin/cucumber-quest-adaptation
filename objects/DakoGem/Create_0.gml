/// @description Insert description here
// You can write your code in this editor


if DakoTiming.Count < 3
	{
		audio_play_sound(DakotaTick,1,0)
		sprite_index = DakoSmallGem
	}
if DakoTiming.Count = 3
	{
		audio_play_sound(DakotaTickNOW,1,0)
		sprite_index = DakoLargeGem
	}