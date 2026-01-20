/// @description Insert description here
// You can write your code in this editor
Hittime -= 1

if User.sprite_index = User.Anims.NormalAtk && AltTimer > 0
	{
		AltTimer -= 1
	}
	
if AltTimer <= 0 && User.sprite_index = User.Anims.NormalAtk
	{
		with User 
		{
			ChangeAnim(Anims.NormalEnd)
		}
		FireProj()	
	}
if Hittime = 0
	{
		with User
			{
				Attacking = 0
				global.SkillActive = 0
				Hittime = 25
				EndTurn()
			}	
		instance_destroy()
	}

if variable_instance_exists(User.Anims,"RdeBst")
	{
		if User.sprite_index = User.Anims.RdeBst
			{
				if floor(User.image_index) = 6
				{
					FireProj()
				}
			}
	}