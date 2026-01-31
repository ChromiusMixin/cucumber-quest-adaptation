// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function WatchForDeath(){
if HP <= 0 && DOWN < 1
	{
		for (var i = 0; i < array_length(global.LivingPlayers); i++)
			{
			if instance_id[self] == global.Players[i]
				{
					array_delete(global.LivingPlayers,i,1)
				}
			}
		DOWN = 1
	}

if DOWN = 1
	{
		
		if sprite_index != DeathSpr
		ChangeAnim(DeathSpr)
		HP = 0
		if global.CurrentPlayer = PlayerID && global.Phase > 0 && obj_GM.Fighting = 1
			{
				EndTurn()
				if instance_exists(UI)
					{
					UI.x = global.Players[obj_GM.CurrentPlayer].x + global.Players[obj_GM.CurrentPlayer].MenuOffsetX
					UI.y = global.Players[obj_GM.CurrentPlayer].y + global.Players[obj_GM.CurrentPlayer].MenuOffsetY
					}
			}
	}



}