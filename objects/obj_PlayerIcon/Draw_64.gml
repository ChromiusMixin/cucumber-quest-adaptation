/// @description Insert description here
// You can write your code in this editor
draw_self()

timer++;

if global.Players[PlayerID].CHG > 0
	{

	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_orange,0+sin(0.08*timer)*0.5)
	}
	
		draw_sprite_ext(HPbarback,0,x-20,y+44,1,1,15,c_white,1)
		draw_sprite_ext(MPbarback,0,x-20,y+56,1,1,15,c_white,1)
		draw_sprite_ext(HPbarfillback,0,x-20,y+44,HPCreep,1,15,c_white,1)
		draw_sprite_ext(MPbarfillback,0,x-20,y+56,MPCreep,1,15,c_white,1)		
		draw_sprite_ext(HPbarfill,0,x-20,y+44,clamp(MHP,0,MHP),1,15,c_white,1)
		draw_sprite_ext(MPbarfill,0,x-20,y+56,clamp(MMP,0,MMP),1,15,c_white,1)

		
		draw_set_font(HPFont);
		draw_set_halign(fa_center);
		draw_set_valign(fa_bottom);
		draw_text_transformed(x-32, y+55,string(HP),1,1,25);
		draw_set_font(-1);
		draw_set_halign(-1);
		draw_set_valign(-1);
		
		draw_set_font(MPFont);
		draw_set_halign(fa_center);
		draw_set_valign(fa_bottom);
		draw_text_transformed(x-32, y+85,string(MP),1,1,25);
		draw_set_font(-1);
		draw_set_halign(-1);
		draw_set_valign(-1);
		
		//draw_text(x-200,y,string(MHP)) ///Debug Shit.
		if global.Players[PlayerID].RKJA > 0
			{
				for (var i = 0; i < global.Players[PlayerID].RKJA; ++i) {
				    draw_sprite(DefUpIndi,0,x-70,y+30-(10*i))
				}
			}
				if global.Players[PlayerID].TRKJ > 0
			{
				for (var i = 0; i < global.Players[PlayerID].TRKJ; ++i) {
				    draw_sprite(AtkUpIndi,0,x-80,y+30-(10*i))
				}
			}
		
		if global.Players[PlayerID].CHG > 0
			{
				for (var i = 0; i < global.Players[PlayerID].CHG; ++i) {
				    draw_sprite(ChgIndi,0,x-40,y+10-(10*i))
				}
			}
		
		///Debuff moment
		
				if global.Players[PlayerID].RKJA < 0
			{
				for (var i = 0; i > global.Players[PlayerID].RKJA; --i) {
				    draw_sprite(DefDownIndi,0,x-70,y+30+(10*i))
				}
			}
				if global.Players[PlayerID].TRKJ < 0
			{
				for (var i = 0; i > global.Players[PlayerID].TRKJ; --i) {
				    draw_sprite(AtkDownIndi,0,x-80,y+30+(10*i))
				}
			}