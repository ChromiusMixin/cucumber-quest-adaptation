siner += 0.75;

if (t >= 800)
{
    rs += 0.25;
    draw_set_color(c_white);
    i = 1;
    
    while (i < 12)
    {
        draw_set_alpha((rs / 16) - (i / 12));
        draw_rectangle(320 - (i * i) - (rs * i), 0, 320 + (i * i) + (rs * i), 500, 0);
        i += 0.5;
    }
    
    draw_set_alpha(1);
}

draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, siner / 8);
draw_sprite_ext(sprite_index, image_index, x, y, siner / 4, siner / 4, 0, c_white, 1.6 - (siner / 16));
draw_sprite_ext(sprite_index, image_index, x, y, siner / 8, siner / 8, 0, c_white, 1.6 - (siner / 24));
t += 1;

if (t >= 40)
{
    if (soundcon == 0)
    {
        soundcon = 1;
        audio_play_sound(snd_usefountain, 50, 0);
    }
}

if (t >= 140 && t <= 480)
{
    with (obj_darkfountain)
    {
        adjust = 1;
        eyebody *= 0.49;
    }
    
    y -= 0.5;
}

if (t >= 480 && t < 490)
{
    with (obj_darkfountain)
        adjust = 2;
    
    t = 600;
}

if (t >= 780 && t < 790)
{
    t = 800;
    siner = 1.5;
    
    if (soundcon == 1)
    {
        soundcon = 2;
        audio_play_sound(snd_revival, 50, 0);
    }
}

if (t >= 900)
{
    ds2 += 0.01;
    draw_set_alpha(ds2);
    draw_set_color(c_white);
    draw_rectangle(-10, -10, 999, 999, false);
    draw_set_alpha(1);
}

if (t >= 1040)
{
    ds3 += 0.005;
    draw_set_alpha(ds3);
    draw_set_color(c_black);
    draw_rectangle(-10, -10, 999, 999, false);
    draw_set_alpha(1);
}

if (t >= 1300)
{
    global.entrance = 0;
    global.interact = 1;
    scr_become_light();
    snd_free_all();
    instance_create(0, 0, obj_persistentfadein);
    room_goto(room_school_unusedroom);
}
