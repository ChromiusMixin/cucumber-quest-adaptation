/// @description Insert description here
// You can write your code in this editor


if User.y > target.y 
	{
		User.y = clamp(User.y+5,0,target.y)
	}
	
if User.y < target.y 
	{
		User.y = clamp(User.y-5,0,target.y)
	}


if User.x < target.x-MaxDist
	{
		User.x = clamp(User.x+15,0,target.x-MaxDist)
	}

if User.x = target.x-MaxDist && User.y = target.y && phase = 1
{
	NormalAttack()
	phase = 0
}

if ReadyingNormal == 0
	{
		Hittime -= 1
	}

//if instance_exists(QTE)
//	{
//		with QTE
//		{
//			image_blend = other.User.DmgColor
//		}
//	}



if Hittime = 0 && global.Phase = 1
	{
		with User DmgSet(150-other.DmgRdc)
		global.SkillActive = 0
		obj_Camera.FollowPlayer = 0
		User.holdanim = 0
		with User DamageEnemy(Target,Dmg,HitSound,Slicespark,,-50,DmgColor,"DTRF",,c_black,2)
		User.Target.state = 5
		User.Target.state = 3
		show_debug_message("Attacked!!!!!!!!!!!!")
		with User EndTurn()
		Hittime = 25
		Attacking = 0
		instance_destroy()
	}
else if Hittime = 0
	{
		with User DmgSet(random_range(65,90))
		global.SkillActive = 0
		obj_Camera.FollowPlayer = 0
		User.holdanim = 0
		with User DamageEnemy(Target,Dmg,HitSound,Slicespark,,-50,DmgColor,"DTRF",,c_black,2)
		User.Target.state = 5
		User.Target.state = 3
		show_debug_message("Attacked!!!!!!!!!!!!")
		with User EndTurn()
		Hittime = 25
		Attacking = 0
		instance_destroy()
	}