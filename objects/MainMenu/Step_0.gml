/// @description Insert description here
// You can write your code in this editor

if Active != 0 && OtherMenuActive != 1
{
	if keyboard_check_pressed(vk_down)
		{
			audio_play_sound(CurTickFV,0,0)
			if Choice != array_length(Options)-1
				{
					Choice+=1
				}
				else
				{
					Choice = 0
				}
		}
	
	if keyboard_check_pressed(vk_up)
		{
			audio_play_sound(CurTickFV,0,0)
			if Choice != 0
				{
					Choice-=1
				}
				else
				{
					Choice = array_length(Options)-1
				}
		}
}