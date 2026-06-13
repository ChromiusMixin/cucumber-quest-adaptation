


function AddExp(Member = 0, Amt){
global.Party[Member].NEXTEXP = global.Party[Member].LV*100*1.25
global.Party[Member].EXP += Amt
if global.Party[Member].EXP >= global.Party[Member].NEXTEXP
	{
		if instance_exists(obj_Victory)
			{
				if audio_is_playing(snd_LvUp)
				{
				audio_stop_sound(snd_LvUp)
				}
				audio_play_sound(snd_LvUp,0,0)
			}
		global.Party[Member].LV += 1
		global.Party[Member].EXP -=	global.Party[Member].NEXTEXP
		global.Party[Member].NEXTEXP = global.Party[Member].LV*100*1.25

	}
}