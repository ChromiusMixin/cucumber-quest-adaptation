/// @description Insert description here
// You can write your code in this editor


				draw_set_halign(fa_center);
				draw_set_valign(fa_bottom);
				//draw_text_transformed_color(x, y, string(abs(dmg)),scalew,scale,0,Clr,Clr,Clr,Clr,1);
				//draw_text_scribble(x,y,string(abs(dmg))
				scribble(string(dmg),id).starting_format(Fnt,c_white).shadow(c_black,4,2,2,0).transform(scalew,scale,0).sdf_outline(c_black,4).align(fa_center,fa_bottom).blend(Clr,blend).draw(x,y)
				draw_set_font(-1);
				draw_set_halign(-1);
				draw_set_valign(-1);		