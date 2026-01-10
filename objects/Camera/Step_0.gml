/// @description Insert description here
// You can write your code in this editor

camera_set_view_pos(view_camera[0], x, y );

if FollowPlayer == 0 && FollowTarget == 0
{
    // Follow General center-ish of room.
	//Targetting Enemy Side with Action
	if global.Phase == -1 || GM.Targetting == 1 && GM.Movetype == -1
		{
		x = lerp(x,global.Enemies[GM.CurrentEnemy].x+OffsetX-(view_wport/2),0.1)
		y = lerp(y,global.Enemies[GM.CurrentEnemy].y+OffsetY-(view_hport/2),0.1)
		}
	//Targetting Player Side with Action
	if global.Phase == -1 || GM.Targetting == 1 && GM.Movetype == 1
		{
			x = lerp(x,0,0.1)
			y = lerp(y,GM.CurrentOption*15,0.1)
		}
	
	if global.Phase == 1 && GM.Targetting == 0
		{
			x = lerp(x,global.Players[global.CurrentPlayer].x-(view_wport/2)+150,0.1)
			y = lerp(y,global.Players[global.CurrentPlayer].y-(view_hport/2),0.1)
		}

}
if FollowPlayer == 1 && global.Phase == 1
{
	//Center on player, good for cinematics.
	 
	x = lerp(x,global.Players[global.CurrentPlayer].x+OffsetX-(view_wport/2),0.3)
	y = lerp(y,global.Players[global.CurrentPlayer].y+OffsetY-(view_hport/2),0.3)
	
}
if FollowTarget == 1 && global.Phase == 1
{
	//Center on player, good for cinematics.
	 
	x = lerp(x,global.Players[global.CurrentPlayer].Target.x+OffsetX-(view_wport/2),0.3)
	y = lerp(y,global.Players[global.CurrentPlayer].Target.y+OffsetY-(view_hport/2),0.3)
	
}

if FollowPlayer == 1 && global.Phase == -1
{
	//Center on Enemy, good for cinematics.
	 
	x = lerp(x,global.Enemies[GM.CurrentEnemy].x+OffsetX-(view_wport/2),0.1)
	y = lerp(y,global.Enemies[GM.CurrentEnemy].y+OffsetY-(view_hport/2),0.1)
	
}

if FollowTarget == 1 && global.Phase == -1
{
	//Center on player, good for cinematics.
	 
	x = lerp(x,global.Enemies[GM.CurrentEnemy].Target.x+OffsetX-(view_wport/2),0.1)
	y = lerp(y,global.Enemies[GM.CurrentEnemy].Target.y+OffsetY-(view_hport/2),0.1)
	
}

