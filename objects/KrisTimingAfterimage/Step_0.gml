/// @description Insert description here
// You can write your code in this editor

if !instance_exists(KrisTiming)
	{
		instance_destroy()
	}

if image_alpha == 0
	{
		instance_destroy()
	}
	

image_alpha -= 0.01
image_yscale = KrisTimingBar.image_yscale




