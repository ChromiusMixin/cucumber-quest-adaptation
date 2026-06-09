/// @description Insert description here
// You can write your code in this editor

var scr_w = view_get_wport(0)
var scr_h = view_get_hport(0)



draw_sprite_ext(BlackBar,0,-200,BB1y,20,bbscale,BB1r1,c_white,1)
draw_sprite_ext(BlackBar,0,-200,BB2y,20,-bbscale,BB2r1,c_white,1)
//draw_sprite_ext(_9SliceUTBox,1,Menu1Posx,Menu1Posy,2,4.5,0,c_white,1)

			BB1y = lerp(BB1y,scr_h-scr_h-200,0.9)
			BB2y = lerp(BB2y,scr_h+200,0.9)
			BB1r1 = lerp(BB1r1,BB1r2,0.5) //Rotation for bar 1
			BB2r1 = lerp(BB2r1,BB2r2,0.5) //Rotation for bar 2

if Owner.Encountering != 1
{
	if Owner.Menu > 0
		{
			bbscale = lerp(bbscale,2,0.2)
			BB1r2 = -1 + (Menu1.Choice*1)
			BB2r2 = BB1r2
			Menu1.x = lerp(Menu1.x,(scr_w-scr_w),0.2)
			Menu1.Active = 1
			PartyDisplay.x = lerp(PartyDisplay.x,scr_w-500,0.2)
			Fade.state = Fade.stateFadeIn
		}
		else
		{
			bbscale = lerp(bbscale,0,0.2)
			BB1r2 = 0
			BB2r2 = -BB1r2
			Menu1.x = lerp(Menu1.x,(scr_w*-1),0.2)
			Menu1.Active = 0
			PartyDisplay.x = lerp(PartyDisplay.x,scr_w,0.2)
			Fade.state = Fade.stateFadeOut
		}
}