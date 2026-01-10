// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HandleTargets(){
if Targetting = 1
	{
		if Movetype = -1
			{
			
			global.TargettedEnemy = global.Enemies[CurrentOption];

			}
		else
			{
			global.TargettedPlayer = global.Players[CurrentOption];
			}
	}
	
if instance_number(Selector) > 0 && Targetting == 1 //Enemy List Choice
	{
		if Movetype = 1
		{
		Selector.x = global.TargettedPlayer.x + 50
		Selector.y = global.TargettedPlayer.y + 10
		global.TargettedPlayer.Flash = 0.07
		
		}
		if Movetype = -1
		{
		Selector.x = global.Enemies[CurrentOption].x + 50
		Selector.y = global.Enemies[CurrentOption].y + 10
		global.Enemies[CurrentOption].Flash = 0.07
			with global.Enemies[CurrentOption]
				{
			//var TGT = global.Enemies[GM.CurrentOption]
			//var HP = ( TGT.HP / TGT.MHP ) * 100		
			//draw_sprite_ext(sprite_index,-1,x,y+TGT.sprite_height,200,200,15,c_white,1)
				}
		}
		
	}

}