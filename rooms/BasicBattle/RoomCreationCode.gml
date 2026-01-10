global.bgm = LSA
global.volume = 0.35 // 0.35
audio_stop_sound(global.bgm)
audio_play_sound(global.bgm,3,1,global.volume)

		
layer_set_visible("UI", 1)
layer_set_visible("UI2", 1)

if font_add_get_enable_aa()
{
    font_add_enable_aa(false);
}

gpu_set_texfilter(false);

font_enable_effects(HPFont, true, {
    outlineEnable: true,
    outlineDistance: 1,
    outlineColour: c_green
});

font_enable_effects(MPFont, true, {
    outlineEnable: true,
    outlineDistance: 1,
    outlineColour: c_blue
});


