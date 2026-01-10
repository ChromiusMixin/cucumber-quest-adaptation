/// @description Insert description here
// You can write your code in this editor
image_xscale = lerp(image_xscale,0,0.1)
image_yscale = lerp(image_yscale,1.4,0.5)
image_angle = direction
speed = lerp(speed,0,0.1)

Secondary.direction = direction
Secondary.image_yscale = image_yscale*1.5
Secondary.image_xscale = image_xscale*1.5

if image_xscale <= 0
	{
		instance_destroy()
	}