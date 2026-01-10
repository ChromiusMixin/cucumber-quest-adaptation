/// @description Insert description here
// You can write your code in this editor

var scr_w = view_get_wport(0)
var scr_h = view_get_hport(0)*-1



draw_sprite_ext(BlackBar,0,0,BB1y,1,1,0,c_white,1)
draw_sprite_ext(BlackBar,0,0,BB2y,1,-1,0,c_white,1)
//draw_sprite_ext(_9SliceUTBox,1,Menu1Posx,Menu1Posy,2,4.5,0,c_white,1)



if Owner.Encountering != 1
{
	if Owner.Menu > 0
		{
			BB1y = lerp(BB1y,-75,0.2)
			BB2y = lerp(BB2y,640-95,0.2)
			Menu1.x = lerp(Menu1.x,(scr_w-scr_w),0.2)
			PartyDisplay.x = lerp(PartyDisplay.x,scr_w-500,0.2)
			Fade.state = Fade.stateFadeIn
		}
		else
		{
			BB1y = lerp(BB1y,-200,0.2)
			BB2y = lerp(BB2y,650,0.2)
			Menu1.x = lerp(Menu1.x,(scr_w*-1),0.2)
			PartyDisplay.x = lerp(PartyDisplay.x,scr_w,0.2)
			Fade.state = Fade.stateFadeOut
		}
}