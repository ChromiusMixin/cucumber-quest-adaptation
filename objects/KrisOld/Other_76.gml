/// @description Insert description here
// You can write your code in this editor
if event_data[? "event_type"] == "sprite event" // or you can check "sprite event"
{
    switch (event_data[? "message"])
    {
        case "HitKris":
			DmgSet(158+irandom(35))
			DamageEnemy(Target,Dmg,,Slicespark,,-50,DmgColor,Deltarune,,c_black)
        break;
		
		case "KrisPlayAtkSnd":
			PlayAttackSound()
        break;
		
		case "KrisEndTurn":
			ChangeAnim(Idle)
			global.SkillActive = 0
			EndTurn()
			Attacking = 0
			Hittime = 25
        break;
	}
}