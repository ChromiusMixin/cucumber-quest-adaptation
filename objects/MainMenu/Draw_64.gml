/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(_9SliceUTBox,0,x,y,image_xscale,image_yscale)
for (var i = 0; i < array_length(Options); ++i)
	{
		Options[i].x = x
		Options[i].y = Options[i].ystart+y
		draw_text(Options[i].x+20,Options[i].y,"Menu Placeholder!")
	}
		

image_xscale = 250
image_yscale = 480