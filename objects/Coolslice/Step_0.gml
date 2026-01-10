/// @description Insert description here
// You can write your code in this editor
image_yscale = lerp(image_yscale,0,0.3)
image_xscale = lerp (image_xscale,25,0.2)

if image_yscale <= 0
	{
		instance_destroy()
	}