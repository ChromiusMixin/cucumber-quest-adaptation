/// @description Insert description here
// You can write your code in this editor
if event_data[? "event_type"] == "sprite event" // or you can check "sprite event"
{
    switch (event_data[? "message"])
    {
        case "HitKris":
		if sprite_index = KrisXSlash
		{
			Target = global.TargettedEnemy
			DmgSet(158+irandom(35))
			DamageEnemy(Target,Dmg,,Slicespark,,-50,DmgColor,"DTRF",,c_black)
		}
        break;
		
		case "KrisPlayAtkSnd":
		if sprite_index = KrisXSlash || sprite_index = KrisAtk
		{
			PlayAttackSound()
		}
		break;
		
		case "KrisEndTurn":
		if sprite_index = KrisXSlash || sprite_index = KrisAtk
		{
			ChangeAnim(Idle)
			global.SkillActive = 0
			EndTurn()
			Attacking = 0
			Hittime = 25
		}
		break;
	}
}