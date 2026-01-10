/// @description Insert description here
// You can write your code in this editor

if HP <= 0
	{
		draw_set_font(Deltarune);
		draw_set_halign(fa_left);
		draw_set_valign(fa_bottom);
		draw_text_transformed_color(0, 100, "You win! Press F2 to Restart if you'd like.",1,1,0,c_white,c_white,c_white,c_white,1);
		ResetText()
	}