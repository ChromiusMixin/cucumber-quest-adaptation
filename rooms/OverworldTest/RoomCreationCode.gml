global.bgm = Nature52
if !audio_is_playing(global.bgm)
	{
	audio_stop_all()
	audio_play_sound(global.bgm,0,1)
	}