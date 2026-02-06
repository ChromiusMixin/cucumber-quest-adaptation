/// @description Insert description here
// You can write your code in this editor

if !instance_exists(BlackTransition)
	{
			Transition = instance_create_depth(0,0,-300,BlackTransition)
	}
	else
	{
		if Rooming != 1
		{
			Transition = BlackTransition
		}
	}

if Rooming != 1
	{

		Transition.phase = 0
		Transition.opac = 0
		Roommove = other.RoomSet
		Rooming = 1
	}