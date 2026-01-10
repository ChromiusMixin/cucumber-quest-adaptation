/// @description Insert description here
// You can write your code in this editor
if event_data[? "event_type"] == "sprite event" // or you can check "sprite event"
{
    switch (event_data[? "message"])
    {
        //case "FalzVivisect1":
		//	Jumping = 1
		//	Target = global.TargettedEnemy
		//	Camera.FollowTarget = 1
		//	Camera.OffsetY = -120
		//	x = Target.x+20
		//	y = Target.y-Target.sprite_height+45
		//	DmgSet(158+irandom(35))
		//	DamageEnemy(Target,Dmg,,Slicespark,,-50,DmgColor,"DTRF",,c_black)
        //break;
		
		case "FalzPlayAtkSnd":
			PlayAttackSound()
        break;
		
		case "FalzEndTurn":
			x = xstart
			y = ystart
			ChangeAnim(Idle)
			global.SkillActive = 0
			EndTurn()
			Attacking = 0
			Hittime = 25
        break;
	}
}