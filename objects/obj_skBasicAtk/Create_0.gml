/// @description Insert description here
// You can write your code in this editor
self[$ "User"] ??= "noone"
self[$ "target"] ??= "noone"
Name = "DR Style Basic Atk (Kris)"

Hittime = 25
ReadyingNormal = 0
DmgColor = User.DmgColor
Dmg = 0
DmgRdc = 0

function SpawnQTE()
	{
		QTE = instance_create_layer(x+200,y-125,"UI2",KrisTiming)
	}

function NormalAttack()
	{

		Hittime = 25
		User.holdanim = 1
		ReadyingNormal = 1
		SpawnQTE()
		QTE.State = QTE.StateOpen
		with User ChangeAnim(NormalAtk)
		show_debug_message("Readying Swing")
	}

function TrueAtk()
	{
		with User PlayAttackSound()
		QTE.State = QTE.StateClose
		Attacking = 1
		with User
			{
				holdanim = 0
				ChangeAnim(NormalEnd)
			}
	}
NormalAttack()