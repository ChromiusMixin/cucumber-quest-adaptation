/// @description Insert description here
// You can write your code in this editor
if event_data[? "event_type"] == "sprite event" // or you can check "sprite event"
{
    switch (event_data[? "message"])
    {
        case "Hit":
			audio_play_sound(AtkSnd,0,0,0.5)
			DmgSet(35)
			DamageEnemy(Target,Dmg,,Slicespark,,-50,DmgColor,"DTRF",,c_black)
        break;
		
        case "TeleportTo":
			x = Target.x + 259
			y = Target.y
        break;        
		
		case "EndTPOut":
			obj_Camera.FollowTarget = 1
			ChangeAnim(SephirothAtk)
        break;
		
		case "CastSpell":
			if Spell == 0
				{
					Target.TRKJ = clamp(Target.TRKJ-1,-3,3)
					SpawnFX(TarundaFXO,Target.x,Target.y)
					audio_play_sound(StatDown,0,0)
				}
			if Spell == 1
				{
					Target.RKJA = clamp(Target.RKJA-1,-3,3)
					SpawnFX(RakundaFXO,Target.x,Target.y)
					audio_play_sound(StatDown,0,0)
				}

			if Spell == 2
				{
					TRKJ = clamp(TRKJ+1,-3,3)
					SpawnFX(TarukajaFXO,x,y)
					audio_play_sound(StatUp,0,0)
				}
			if Spell == 3
				{
					if CHG == 1
						{
							TRKJ = clamp(TRKJ+1,-3,3)
							SpawnFX(TarukajaFXO,x,y)
							audio_play_sound(StatUp,0,0)
						}
						else
						{
						CHG = 1
						SpawnFX(ChargeFXO,x,y)
						audio_play_sound(StatUp,0,0)
						}
				}
        break;
		
		case "EndSpellCast":
		ChangeAnim(SephirothIdle)
		global.TurnCount -= 1
		TurnRemoveTimer = 35
        break;
		
		case "TeleportBack":
		obj_Camera.FollowTarget = 0
			x = xstart
			y = ystart
			ChangeAnim(SephirothTPIn)
			audio_play_sound(TP,0,0,1)
			global.TurnCount -= 1
			TurnRemoveTimer = 35
        break;
		
		
    }
}