/// @description Insert description here
// You can write your code in this editor

image_xscale = lerp(image_xscale,BoxW,0.2)
image_yscale = lerp(image_yscale,BoxH,0.2)
image_angle = lerp(image_angle,0,0.2)
image_blend = c_green

if image_angle != 0
	{
		AfterImage(x,y,0,0,0.09,depth-1)
	}

var xofs = sprite_get_xoffset(sprite_index)+player.sprite_width
var yofs = sprite_get_yoffset(sprite_index)+player.sprite_height


player.x = clamp(player.x,4+x+player.sprite_width/2-sprite_width/2,x-player.sprite_width/2+sprite_width/2-4)
player.y = clamp(player.y,4+y+player.sprite_height/2-sprite_height/2,y-player.sprite_height/2+sprite_height/2-4)