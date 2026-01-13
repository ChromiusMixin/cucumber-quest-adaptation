/// @description Insert description here
// You can write your code in this editor
if ID = 0
	{
	
		xtween = lerp(xtween,0,0.2)
		draw_sprite(Gradiyurrt,0,0+xtween,0)
	}

draw_self()
scribble("[8b0][scale,1][fa_left]"+string(Spell)).draw(x-sprite_width/2+50,y-sprite_height/2-25)
scribble("[8b0][scale,1][fa_left]"+string(Cost)).draw(x+sprite_width/2,y-sprite_height/2-25)

