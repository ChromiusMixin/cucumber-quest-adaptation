/// @description Insert description here
// You can write your code in this editor

if Encountering != 1
	{
		audio_play_sound(Encnt,0,0,1)
		global.Troop = other.Enelist
		Encountering = 1
		Foe = other
		Foe.caught = 1
	}
	