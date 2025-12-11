timer += 1;

if (timer == 1)
    snd_free_all();

if (timer == 60)
{
    with (bg)
        instance_destroy();
    
    visible = 1;
    x = global.heartx;
    y = global.hearty;
}

if (timer == 61)
    sprite_delete(global.screenshot);

if (timer == 100)
{
    snd_play(snd_break1);
    sprite_index = spr_heartbreak;
    x -= 2;
}

if (timer == 180)
{
    snd_play(snd_break2);
    visible = 0;
    sh[0] = instance_create(x - 2, y, obj_marker);
    sh[1] = instance_create(x, y + 3, obj_marker);
    sh[2] = instance_create(x + 2, y + 6, obj_marker);
    sh[3] = instance_create(x + 8, y, obj_marker);
    sh[4] = instance_create(x + 10, y + 3, obj_marker);
    sh[5] = instance_create(x + 12, y + 6, obj_marker);
    
    for (i = 0; i < 6; i += 1)
    {
        with (sh[i])
        {
            direction = random(360);
            speed = 3.5;
            gravity_direction = 270;
            gravity = 0.05;
            sprite_index = spr_heartshards;
            image_speed = 0.1;
        }
    }
    
    if (global.tempflag[3] >= 1)
        timer += 30;
}

if (timer == 280)
    instance_create(0, 0, obj_fadeout);

if (timer >= 160 && timer < 300)
{
    if (button1_p())
        Z_COUNT += 1;
    
    if (Z_COUNT >= 4)
    {
        if (Z_COUNT == 4)
        {
            with (obj_event_manager)
                trigger_event(UnknownEnum.Value_0, UnknownEnum.Value_13);
        }
        
        scr_tempload();
    }
}

if (timer == 300)
    room_goto(PLACE_FAILURE);
