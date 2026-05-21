/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

image_blend = c_red

var hm = 0
var vm = 0

var up = keyboard_check(vk_up)
var down = keyboard_check(vk_down)
var left = keyboard_check(vk_left)
var right = keyboard_check(vk_right)
var cancel = keyboard_check(ord("X"))

if cancel
	{
		spd = bspd/2
	}
else
	{
		spd = bspd
	}

if keyboard_check_pressed(ord("W"))
	{
		Parent.BoxH += 0.2
	}
	
if keyboard_check_pressed(ord("S"))
	{
		Parent.BoxH -= 0.2
	}
	
if keyboard_check_pressed(ord("A"))
	{
		Parent.BoxW -= 0.2
	}	

if keyboard_check_pressed(ord("D"))
	{
		Parent.BoxW += 0.2
	}
	
if up { y-= spd }
if down { y += spd }
if right { x += spd }
if left { x -= spd }
