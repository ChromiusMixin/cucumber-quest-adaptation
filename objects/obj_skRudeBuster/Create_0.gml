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
			var Projectile = instance_create_depth(x,y-50,depth,BusterShot,{Target: User.Target})
			with User 
			{
				if Teamside = 1
				{
					DmgSet(325)
				}
				else
				{
					DmgSet(125)
				}
			}
			Projectile.Dmg = User.Dmg
			Projectile.Dmgcolor = DmgColor
			audio_play_sound(RudeBusterSwing,0,0)
			User.holdanim = 0
			if global.Phase = -1
				{
					Projectile.direction = 160
				}
				
			}
	}

NormalAttack()