/// @description Insert description here
// You can write your code in this editor

//spawn shenanigans, entry and hover anim.
x += vel 
y -= vel
vel -= 1 
if vel <= 0
	{
		vel = 0
		y = y+sin(0.1*timer)*0.7
		x = x+sin(0.1*timer)*0.2
	}
	
timer++;