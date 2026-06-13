draw_sprite_ext(BlackColor,1,TransX,0,2,1,0,c_white,1)
display_set_gui_size(view_wport[0],view_hport[0])
if TransX >= 0
{
	CirTime +=1
	draw_set_alpha(1)
	draw_set_color(MenuCol)
	draw_set_circle_precision(5)
	draw_circle(view_get_wport(0)/2,view_get_hport(0)/2,CirScale,0)
	CirScale = lerp(CirScale,1000,0.25)
	
	if CirTime >= 10
		{
			draw_set_color(c_white)
			draw_set_circle_precision(5)
			draw_circle(view_get_wport(0)/2,view_get_hport(0)/2,Cir2Scale,0)
			Cir2Scale = lerp(Cir2Scale,1000,0.25)
		}

	if CirTime >= 20
		{
			draw_set_color(MenuCol)
			draw_set_circle_precision(5)
			draw_circle(view_get_wport(0)/2,view_get_hport(0)/2,Cir3Scale,0)
			Cir3Scale = lerp(Cir3Scale,1000,0.25)
		}
	if CirTime >= 30
		{
			IncomX = lerp(IncomX,0,0.15)
			AddX = lerp(AddX,0,0.2)
			draw_set_color(c_black) //Left Side Circle
			draw_set_circle_precision(24) 
			draw_set_alpha(0.5)
			Cir4X = lerp(Cir4X,125,0.25)
			GradY = lerp(GradY,0,0.25)
			draw_circle(Cir4X,(view_get_hport(0)/2)-90,600,0)
			Cir2Scale = lerp(Cir2Scale,1000,0.25)
			draw_set_alpha(1)
			gpu_set_fog(true,global.Party[CurMember].DmgColor,0,0)
			draw_sprite_ext(global.Party[CurMember].Anims.Idle,image_index,200-10+AddX,view_get_hport(0)/2,2,2,0,global.Party[CurMember].DmgColor,1)
			gpu_set_fog(false,c_black,0,0)
			draw_sprite_ext(global.Party[CurMember].Anims.Idle,image_index,200+AddX,view_get_hport(0)/2,2,2,0,c_white,1)
			sprite_index = global.Party[CurMember].Anims.Idle
			draw_set_color(c_white)
			scribble("[8b0][scale,2][fa_left]"+string(global.Party[CurMember].Name)).shadow(c_black,1).draw(NameoffsX,NameoffsY+10+((sprite_get_height(spr_ArmorSlot)-1)))
			scribble("[8b0][scale,2][fa_left]LV. "+string(global.Party[CurMember].LV)).shadow(c_black,1).draw(NameoffsX-100,NameoffsY+10+((sprite_get_height(spr_ArmorSlot)-1)))
			draw_circle(Cir4X+20,(view_get_hport(0)/2)-90,600,1)
			draw_circle(Cir4X+40,(view_get_hport(0)/2)-90,600,1)
			draw_circle(Cir4X+60,(view_get_hport(0)/2)-90,600,1)
			gpu_set_blendmode(bm_subtract)
			draw_rectangle_colour(0,view_get_hport(0)/2+200+GradY,view_get_wport(0),view_get_hport(0),c_black,c_black,c_gray,c_gray,0)
			gpu_set_blendmode(bm_normal)
			draw_set_color(c_white)
			draw_sprite_ext(P3SIB,1,view_get_wport(0)-250+IncomX,300-IncomX+(sin(0.05*CirTime)*6),1,1,0+IncomX*0.10+(sin(0.10*CirTime)*3),c_white,1)
			for (var i = 0; i < 4; ++i) {
			    draw_sprite_ext(spr_ArmorSlot,0,200,500+((sprite_get_height(spr_ArmorSlot)-1)*i),1,1,0,c_white,1)
				if i = CurItem
					{
						gpu_set_fog(true,c_white,0,0)
						draw_sprite_ext(spr_ArmorSlot,0,ItemoffsX,ItemoffsY+((sprite_get_height(spr_ArmorSlot)-1)*i),1,1,0,c_white,0.25)
						gpu_set_fog(false,c_black,0,0)
					draw_sprite_ext(spr_ItemDesc,0,ItemoffsX+sprite_get_width(spr_ArmorSlot),ItemoffsY,1,1,0,c_white,1)
			scribble("[HG][scale,2][fa_left][c_black]"+string(global.Party[CurMember].Gear[i].Desc)).outline(#313131).shadow(c_black,0).fit_to_box(sprite_get_width(spr_ItemDesc)-25,sprite_get_height(spr_ItemDesc)).draw(ItemoffsX+10+sprite_get_width(spr_ArmorSlot),ItemoffsY+10+((sprite_get_height(spr_ArmorSlot)-1)*0))
					
					}
						scribble("[HGo][scale,1.75][fa_left][#d6d6d6]"+string(global.Party[CurMember].Gear[i].Name)).outline(#313131).shadow(c_black,1).draw(ItemoffsX+10,ItemoffsY+10+((sprite_get_height(spr_ArmorSlot)-1)*i))
						
			}
			
		}
			
}