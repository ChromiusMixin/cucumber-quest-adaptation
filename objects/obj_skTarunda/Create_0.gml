/// @description Insert description here
// You can write your code in this editor
self[$ "User"] ??= "noone"
self[$ "target"] ??= "noone"
Name = "Tarunda"

Hittime = 25
ReadyingNormal = 0
DmgColor = User.DmgColor
Dmg = 0
DmgRdc = 0

function NormalAttack()
	{

				Attacking = 1
				Hittime = 25
				global.SkillActive = 1
				with User ChangeAnim(Cast)
				audio_play_sound(UTSpell,0,0)		
	}

NormalAttack()