/// @description Insert description here
// You can write your code in this editor

x = x+hspd
y = y+vspd

image_alpha-=dectime

if image_alpha == 0
	{
		instance_destroy()
	}