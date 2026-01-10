/// @description Insert description here
// You can write your code in this editor
draw_self()

		draw_sprite_ext(HPbarback,0,x-20,y+44,1,1,15,c_white,1)
		draw_sprite_ext(HPbarfillback,0,x-20,y+44,HPCreep,1,15,c_white,1)
		draw_sprite_ext(HPbarfill,0,x-20,y+44,clamp(MHP,0,MHP),1,15,c_white,1)

		
		draw_set_font(HPFont);
		draw_set_halign(fa_center);
		draw_set_valign(fa_bottom);
		draw_text_transformed(x-32, y+55,string(HP),1,1,25);
		draw_set_font(-1);
		draw_set_halign(-1);
		draw_set_valign(-1);
		//draw_text(x-200,y,string(MHP)) ///Debug Shit.
		
				//draw_text(x-200,y,string(MHP)) ///Debug Shit.
		if global.Enemies[EnemyID].RKJA > 0
			{
				for (var i = 0; i < global.Enemies[EnemyID].RKJA; ++i) {
				    draw_sprite(DefUpIndi,0,x-70,y+30-(10*i))
				}
			}
				if global.Enemies[EnemyID].TRKJ > 0
			{
				for (var i = 0; i < global.Enemies[EnemyID].TRKJ; ++i) {
				    draw_sprite(AtkUpIndi,0,x-80,y+30-(10*i))
				}
			}
		
		///Debuff moment
		
				if global.Enemies[EnemyID].RKJA < 0
			{
				for (var i = 0; i > global.Enemies[EnemyID].RKJA; --i) {
				    draw_sprite(DefDownIndi,0,x-70,y+30+(10*i))
				}
			}
				if global.Enemies[EnemyID].TRKJ < 0
			{
				for (var i = 0; i > global.Enemies[EnemyID].TRKJ; --i) {
				    draw_sprite(AtkDownIndi,0,x-80,y+30+(10*i))
				}
			}