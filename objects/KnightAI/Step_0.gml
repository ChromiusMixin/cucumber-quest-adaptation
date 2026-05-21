/// @description Insert description here
// You can write your code in this editor



timer++;

AiTime--;

if instance_exists(Parent) 
{
	with Parent
	{
		y = y+sin(0.05*other.timer)*0.5
		if other.AiTime = 0
			{
				AfterImage(x,y,1,0,0.02)
				other.AiTime = other.AiTimeMax
			}
		
	}
	if global.Phase == -1
	{
		if global.Enemies[obj_GM.CurrentPlayer] = Parent
			{
		
			}
	}

}
else
{
	instance_destroy()
}