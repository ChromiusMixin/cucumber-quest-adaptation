/// @description Insert description here
// You can write your code in this editor

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

image_xscale = 250
image_yscale = 480