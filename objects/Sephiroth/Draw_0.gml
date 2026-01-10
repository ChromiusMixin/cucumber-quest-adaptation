/// @description Insert description here
// You can write your code in this editor

#region Flash Stuff

gpu_set_blendmode(bm_normal);
draw_self();
gpu_set_blendmode(bm_add);
gpu_set_fog(true,c_white,0,1)
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,Flash)
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,Flash)
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,Flash)
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,Flash)
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,Flash)
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,Flash)
gpu_set_blendmode(bm_normal);
gpu_set_fog(false,c_white,0,1)

#endregion

