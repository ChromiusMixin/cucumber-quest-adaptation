/// @description Insert description here
// You can write your code in this editor


if ReadyingNormal == 0
	{
		Hittime -= 1
	}

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