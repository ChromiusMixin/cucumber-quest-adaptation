/// @description Insert description here
// You can write your code in this editor
if OverworldPlayer.Menu !=1 && OverworldPlayer.Talk != 1
{
		t = t+1

		if t >= tmax 
			{
				t = 0
				facing *= -1
			}


		if caught != 1
		{
		x += vel*facing
		}
		else
		{
			sprite_index = surpspr
		}

}