/// @description Insert description here
// You can write your code in this editor
self[$ "User"] ??= "noone"
self[$ "target"] ??= "noone"
Name = "Rude Buster"

Hittime = 25
ReadyingNormal = 0
DmgColor = User.DmgColor
Dmg = 0
DmgRdc = 0
AltTimer = 15
User.holdanim = 1

function NormalAttack()
	{

				Attacking = 1
				Hittime = 70
				global.SkillActive = 1
				with User 
					{
					if variable_instance_exists(self.Anims,"RdeBst")
						{
						ChangeAnim(Anims.RdeBst)
						}
						else
						{
						ChangeAnim(Anims.NormalAtk)
						}
					}
	}

function FireProj()
	{
		    if !instance_exists(BusterShot){
			var Projectile = instance_create_depth(x,y-50,depth,BusterShot)
			with User DmgSet(325)
			Projectile.Dmg = User.Dmg
			Projectile.Dmgcolor = DmgColor
			audio_play_sound(RudeBusterSwing,0,0)
			User.holdanim = 0
			}
	}

NormalAttack()