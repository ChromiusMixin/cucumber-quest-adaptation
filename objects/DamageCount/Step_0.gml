/// @description Insert description here
// You can write your code in this editor

draw_self()

drawtime -=1
x = lerp(x,xstart+50,0.2)

if drawtime > 50
	{
		scale = lerp(scale,1,0.2)
	}
	
if drawtime < 0
	{
		instance_destroy()
	}

if drawtime < 10
	{
		scale = lerp(scale,4,0.2)
		blend = lerp(blend,0,0.2)
	}