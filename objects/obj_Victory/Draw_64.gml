for (var i = 0; i < array_length(global.Party); ++i) {
    var scale = 1.5
	var xoffs = -300+mov
	var yoffs = -200
	var hmid = (view_get_wport(0)/2)
	var vmid = (view_get_hport(0)/2)
	var textofsx = 200
	var iconheight = (sprite_get_height(Kriscon)*scale)
	draw_sprite_ext(global.Party[i].Icon,0,hmid+xoffs,vmid+yoffs+i*iconheight,scale,scale,0,c_white,Opac)
	if i = 0
	scribble("[8b0][scale,1][fa_center]Collected EXP: "+string(EXP)).blend(c_white,Opac).draw(hmid+xoffs+textofsx,vmid+yoffs-100+i*iconheight)
	scribble("[8b0][scale,1][fa_center]Experience: "+string(global.Party[i].EXP)+"/"+string(global.Party[i].NEXTEXP)).blend(c_white,Opac).draw(hmid+xoffs+textofsx,vmid+yoffs+i*iconheight)
	scribble("[8b0][scale,2][fa_center]LV. "+string(global.Party[i].LV)).blend(c_white,Opac).draw(hmid+xoffs-150+textofsx,vmid+yoffs+i*iconheight)
}

mov = lerp(mov,0,0.2)

if Opac != 1
{
Opac += Opacto
}

if Opac >= 1 && Forcefill == 0
	{
		
		tickrate -= 1
	}
	
	if tickrate = 0 && EXP > 0
	{
		for (var i = 0; i < array_length(global.Party); ++i) {
		   audio_stop_sound(snd_XPTick)
		   audio_play_sound(snd_XPTick,0,0)

		   var amt = 10
		   if EXP >= amt
		   {
		   AddExp(i,amt)
		   if i = array_length(global.Party)-1
		   EXP -= amt  
		   }
		   else
		   {
		   AddExp(i,EXP)
		   if i = array_length(global.Party)-1
		   EXP -= EXP
		   }
		   tickrate = mtick
   
		}
	}

if EXP == 0
	{
		if keyboard_check_pressed(ord("Z"))
		{
			WhiteFade.state = WhiteFade.stateFadeIn
			Opacto = -0.1
			Opac += Opacto
			
		}
	}
	
if WhiteFade.image_alpha = 1
	{
		instance_destroy()
	}