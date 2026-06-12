/// @description Insert description here
// You can write your code in this editor
#region Base Menu

#region first menu control
//draw_sprite_stretched(_9SliceUTBox,0,x,y,image_xscale,image_yscale)
for (var i = 0; i < array_length(Options); ++i)
	{
		Options[i].xstart = x+125
		Options[i].x = lerp(Options[i].x,Options[i].xstart,0.45)
		Options[i].y = Options[i].ystart+y
		Options[i].Text = Text[i]
		if Choice = i
			{
				Options[i].Color = Selcol
			}
			else
			{
				Options[i].Color = Unselcol
			}
		//draw_text(Options[i].x+20,Options[i].y,"Menu Placeholder!")
	}
#endregion

if Active = 0 
	{
		ResetMenu()
	}

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
	if keyboard_check_pressed(ord("Z"))
		{
			UseFunc()
		}
}
#endregion

