/// @description Insert description here
// You can write your code in this editor
self[$ "User"] ??= "noone"
self[$ "target"] ??= "noone"
Name = "X Slash"

Hittime = 25
Mhit = Hittime
ReadyingNormal = 0
DmgColor = User.DmgColor
Dmg = 0
DmgRdc = 0
MaxHits = 2
CurHits = 0

function NormalAttack()
	{

		Hittime = 25
		User.holdanim = 1
		with User 
		{
			ChangeAnim(NormalEnd)
			PlayAttackSound()
		}
	}

NormalAttack()