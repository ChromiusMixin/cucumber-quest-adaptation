/// @description Insert description here
// You can write your code in this editor

if sprite_index = htspr
	{
	aiscale += 0.2
	aiopacity -= 0.1
	gpu_set_blendmode(bm_add)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale+aiscale,image_yscale+aiscale,image_angle,c_white,aiopacity)
	gpu_set_blendmode(bm_normal)
	}
draw_self()
if aiopacity = 0
	{
		aiscale = 1
		aiopacity = 1
	}