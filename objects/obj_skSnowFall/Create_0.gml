/// @description Insert description here
// You can write your code in this editor
self[$ "User"] ??= "noone"
self[$ "target"] ??= "noone"
Name = "Snowfall"

Hittime = 1200
Mhit = Hittime
ReadyingNormal = 0
DmgColor = User.DmgColor
Dmg = 0
DmgRdc = 0
MaxHits = 2
CurHits = 0
Sbox = instance_create_depth(view_get_wport(0)/2,view_get_hport(0)/2,depth,obj_SoulBox)
function NormalAttack()
	{

		Hittime = 300
		//User.holdanim = 1

	}

NormalAttack()