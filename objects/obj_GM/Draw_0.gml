/// @description Insert description here
// You can write your code in this editor

//draw_text(view_get_wport(0)/2,200,"Enemies: " + string(array_length(global.Enemies)))
//draw_text(view_get_wport(0)/2,200,"CurrentPlayer: " + string(CurrentPlayer))
//draw_text(view_get_wport(0)/2,200,"AudioVol: " + string(audio_sound_get_gain(BGM)))
for (var i = 0; i < array_length(BG); ++i) {
    if BG[i].tile = 1
		{
			draw_sprite_tiled_ext(BG[i].img,0,BG[i].xpos,BG[i].ypos,BG[i].xscale,BG[i].yscale,BG[i].col,BG[i].opac)
		}
		BG[i].xpos += BG[i].xscroll
		BG[i].ypos += BG[i].yscroll
}

draw_sprite_tiled(BlackBar,0,x,y-35)