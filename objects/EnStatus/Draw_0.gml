/// @description Insert description here
// You can write your code in this editor

if GM.Movetype < 0
	{
		var Target = global.Enemies[GM.CurrentOption]
		draw_text_scribble(Target.x-45,Target.y-Target.sprite_height,"[8b0][fa_center][pin_center][scale,0.75]"+string(Target.Name)+" LVL. "+string(Target.LV))
		draw_sprite_ext(HPbarfill,-1,Target.x-50,Target.y+3,(Target.HP/Target.MHP)*2.5,5,-3,c_orange,1)
		draw_sprite_ext(HPbarfill,-1,Target.x-50,Target.y,(Target.HP/Target.MHP)*2.5,5,-3,c_yellow,1)
		draw_text_scribble(Target.x-45,Target.y,"[8b0][fa_center][pin_center][scale,0.8]"+string(Target.HP))
		
		if Target.RKJA > 0
			{
				for (var i = 0; i < Target.RKJA; ++i) {
				    draw_sprite(DefUpIndi,0,Target.x-50,Target.y+30-(10*i))
				}
			}
				if Target.TRKJ > 0
			{
				for (var i = 0; i < Target.TRKJ; ++i) {
				    draw_sprite(AtkUpIndi,0,Target.x-60,Target.y+30-(10*i))
				}
			}
		
		if Target.CHG > 0
			{
				for (var i = 0; i < Target.CHG; ++i) {
				    draw_sprite(ChgIndi,0,Target.x-100,Target.y+30-(10*i))
				}
			}
		
		///Debuff moment
		
				if Target.RKJA < 0
			{
				for (var i = 0; i > Target.RKJA; --i) {
				    draw_sprite(DefDownIndi,0,Target.x-50,Target.y+30+(10*i))
				}
			}
				if Target.TRKJ < 0
			{
				for (var i = 0; i > Target.TRKJ; --i) {
				    draw_sprite(AtkDownIndi,0,Target.x-60,Target.y+30+(10*i))
				}
			}
	}