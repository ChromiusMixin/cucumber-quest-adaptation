if TransX < 0
{
	TransX += 80
}
if CirTime = 1 
{
	audio_play_sound(snd_Partyshow,0,0,2)
}
if CirTime >= 30
{
	if keyboard_check_pressed(vk_down)
	{
		audio_play_sound(snd_CurTickFV,0,0)
		if CurItem != 3
		{
		CurItem += 1
		}
		else
		{
		CurItem = 0
		}
	}
	if keyboard_check_pressed(vk_up)
	{
		audio_play_sound(snd_CurTickFV,0,0)
		if CurItem != 0
		{
		CurItem -= 1
		}
		else
		{
		CurItem = 3
		}
	}
	if keyboard_check_pressed(vk_right)
	{
		audio_play_sound(snd_MenuRaiseFV,0,0,2,,2)
		AddX = -30
		if CurMember != array_length(global.Party)-1
		{
			CurMember += 1
		}
		else
		{
			CurMember = 0
		}
	}
	if keyboard_check_pressed(vk_left)
	{
		audio_play_sound(snd_MenuRaiseFV,0,0,2,,2)
		AddX = 30
		if CurMember != 0
		{
			CurMember -= 1
		}
		else
		{
			CurMember = array_length(global.Party)-1
		}
	}

}