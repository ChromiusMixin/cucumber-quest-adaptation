/// @description Insert description here
// You can write your code in this editor

Anim = sprite_index

if Fighting != 1 && Talk != 1
{
	camera_set_view_target(view_camera[0], id);
}
else
{
	camera_set_view_target(view_camera[0], noone);
}

if Fighting == 1
	{
		image_alpha = lerp(image_alpha,0,0.2)
	}
	else
	{
		image_alpha = lerp(image_alpha,1,0.2)
	}

if Encountering = 1 && EncounterTimer != TimerMax
	{
		EncounterTimer += 1
	}
	
	if EncounterTimer == TimerMax && Fighting == 0
		{
		var vx = camera_get_view_x(view_camera[0])
		var vy = camera_get_view_y(view_camera[0])
			instance_create_depth(vx,vy,0,obj_GM)
			audio_stop_sound(global.bgm)
			audio_play_sound(Foe.Song,0,1,0.5)
			Fighting = 1
		}


var Rmv = keyboard_check(vk_right) 
var Lmv = keyboard_check(vk_left)
var Umv = keyboard_check(vk_up)
var Dmv = keyboard_check(vk_down)
var Pse = keyboard_check_pressed(ord("C"))
var xmv = Rmv - Lmv
var ymv = Umv - Dmv


if Talk == 0  && Encountering != 1
	{
			if Pse == 1 
				{
				Menu = Menu*-1 
				audio_play_sound(CurTickFV,0,0)
				}
	}

	if Hspd*xmv == 0 && Vspd*ymv == 0 || Menu = 1 || Encountering == 1
	{
		image_index = 0
	}

if Talk == 0 && Menu = -1 && Encountering != 1
	{

	move_and_collide(xmv*Hspd,ymv*-Vspd,WallObj,,,,Hspd,Vspd)

	
	if Hspd*xmv > 0 && Vspd*ymv == 0 && Anim != RightSpr ChangeAnim(RightSpr)
	if Hspd*xmv < 0 && Vspd*ymv == 0 && Anim != LeftSpr ChangeAnim(LeftSpr)
	if Vspd*ymv > 0 && Hspd*xmv == 0 && Anim != UpSpr ChangeAnim(UpSpr)
	if Vspd*ymv < 0 && Hspd*xmv == 0 && Anim != DownSpr ChangeAnim(DownSpr)	
	
	}