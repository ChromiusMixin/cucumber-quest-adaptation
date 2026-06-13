for (var i = 0; i < array_length(global.Players); ++i) {
    instance_destroy(global.Players[i])
}

for (var i = 0; i < array_length(global.PlayerIcons); ++i) {
    instance_destroy(global.PlayerIcons[i])
}
instance_destroy(cam)
instance_activate_all()
instance_destroy(OverworldPlayer.Foe)
audio_resume_sound(global.bgm)