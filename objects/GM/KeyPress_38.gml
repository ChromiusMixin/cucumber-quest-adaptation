/// @description Insert description here
// You can write your code in this editor

if instance_number(Button) > 0 || Targetting = 1
	{
		audio_play_sound(CurTickFV,0,0)
	}

if Targetting != 1 && global.Phase == 1
	{
		if CurrentOption == 0 
			{
			CurrentOption = global.Players[CurrentPlayer].MagicOptions-1
			}
			else
			{
				CurrentOption -= 1
			}
	}

if Targetting == 1 && Movetype == -1
{
	if CurrentOption == 0 
		{
		CurrentOption = array_length(global.Enemies)-1
		}
		else
		{
			CurrentOption -= 1
		}
}

if Targetting == 1 && Movetype == 1
{
	if CurrentOption == 0 
		{
		CurrentOption = array_length(global.Players)-1
		
		}
		else
		{
		CurrentOption -= 1
		}
}