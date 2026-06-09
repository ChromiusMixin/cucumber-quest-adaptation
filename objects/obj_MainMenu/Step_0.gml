/// @description Insert description here
// You can write your code in this editor
#region Base Menu
if Active != 0 && OtherMenuActive != 1
{
	if keyboard_check_pressed(vk_down)
		{
			audio_play_sound(snd_CurTickFV,0,0)
			if Choice != array_length(Options)-1
				{
					Choice+=1
				}
				else
				{
					Choice = 0
					
				}
		
		Options[Choice].x += 45
		}
	
	if keyboard_check_pressed(vk_up)
		{
			audio_play_sound(snd_CurTickFV,0,0)
			if Choice != 0
				{
					Choice-=1
					Options[Choice].x += 45
				}
				else
				{
					Choice = array_length(Options)-1
				}
			Options[Choice].x += 45
		}
}
#endregion

