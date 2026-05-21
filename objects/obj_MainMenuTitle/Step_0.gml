/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < array_length(Opts); ++i) {
    if i = Choice
	{
		Opts[i].Color =	"[c_yellow]"
	}
	else
	{
		Opts[i].Color = "[c_white]"
	}
}


if keyboard_check_pressed(vk_down)
	{
		if Choice != array_length(Opts)-1
		{
			Choice += 1
		}
		else
		{
			Choice = 0
		}
	}
	
if keyboard_check_pressed(vk_up)
	{
		if Choice != 0
		{
			Choice -= 1
		}
		else
		{
			Choice = array_length(Opts)-1
		}
	}