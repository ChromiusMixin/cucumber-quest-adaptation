buffer++;

if (buffer < 120)
    exit;

if (button1_p() && !start_timer)
{
    fadeout = instance_create(0, 0, obj_fadeout);
    
    with (fadeout)
        fadespeed = 0.01;
    
    start_timer = true;
}

if (start_timer)
{
    snd_free_all();
    restart_timer++;
}

if (restart_timer == 400)
    game_restart();
