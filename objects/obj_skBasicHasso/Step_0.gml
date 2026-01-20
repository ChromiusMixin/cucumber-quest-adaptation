/// @description Insert description here
// You can write your code in this editor


Hittime -=1 

if Hittime = 0
	{

			with User DmgSet(random_range(150,169))
			obj_Camera.FollowPlayer = 0
			User.holdanim = 0
			with User DamageEnemy(Target,Dmg,HitSound,Slicespark,,-50,DmgColor,"DTRF",,c_black,2)
			User.Target.state = 5
			User.Target.state = 3
			show_debug_message("Attacked!!!!!!!!!!!!")
			CurHits+= 1
			Hittime = Mhit
			if CurHits != MaxHits
			{
				with User 
				{
					ChangeAnim(NormalEnd)
					PlayAttackSound()
				}
			}
			if CurHits = MaxHits
			{
				global.SkillActive = 0
				with User EndTurn()
				Hittime = 25
				Attacking = 0
				instance_destroy()
			}
	}