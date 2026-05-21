/// @description Insert description here
// You can write your code in this editor
self[$ "User"] ??= "noone"
self[$ "target"] ??= "noone"
Name = "X Slash"

Hittime = 300
Mhit = Hittime
ReadyingNormal = 0
DmgColor = User.DmgColor
Dmg = 0
DmgRdc = 0
MaxHits = 2
CurHits = 0

function NormalAttack()
	{

		Hittime = 300
		User.holdanim = 1
		with User 
		{
			ChangeAnim(Anims.SwdDrop)
		}
	}

NormalAttack()