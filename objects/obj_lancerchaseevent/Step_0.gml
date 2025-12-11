if (con == 1 && obj_mainchara.x >= 1060 && global.interact == 0)
{
    global.flag[7] = 1;
    
    with (obj_mainchara)
        cutscene = 1;
    
    global.interact = 1;
    scr_pan(2, 0, 40);
    con = 2;
    alarm[4] = 60;
}

if (con == 3)
{
    global.facing = 1;
    
    with (susie)
        sprite_index = spr_susiel_dark;
    
    global.msg[0] = scr_84_get_lang_string("obj_lancerchaseevent_slash_Step_0_gml_16_0");
    global.msg[1] = scr_84_get_lang_string("obj_lancerchaseevent_slash_Step_0_gml_17_0");
    global.typer = 30;
    global.fe = 0;
    global.fc = 1;
    con = 4;
    d = instance_create(0, 0, obj_dialoguer);
    
    with (d)
        side = 0;
}

if (con == 4 && instance_exists(obj_dialoguer) == false)
{
    lancer = scr_dark_marker(1150, 370, spr_darklancer);
    global.facing = 2;
    
    with (susie)
        sprite_index = spr_susieu_dark;
    
    scr_pan(0, -4, 80);
    con = 5;
    alarm[4] = 80;
}

if (con == 6)
{
    con = 7;
    alarm[4] = 60;
}

if (con == 8)
{
    with (lancer)
        image_index = 1;
    
    snd_play(snd_break1);
    b[0] = scr_marker(lancer.x + 120, lancer.y - 20, spr_spadebullet);
    b[1] = scr_marker(lancer.x - 160, lancer.y - 20, spr_spadebullet);
    
    for (i = 0; i < 2; i += 1)
    {
        b[i].image_alpha = 0;
        bdir[i] = point_direction(b[i].x, b[0].y, susie.x + 20, susie.y + 30);
        b[i].direction = bdir[i];
        b[i].image_angle = bdir[i];
        b[i].speed = -2;
        b[i].friction = 0.03;
    }
    
    con = 9;
    alarm[4] = 80;
}

if (con == 9)
{
    with (b[0])
        image_alpha += 0.02;
    
    with (b[1])
        image_alpha += 0.02;
}

if (con == 10)
{
    with (lancer)
        image_index = 0;
    
    snd_play(snd_bigcut);
    aftercon = 1;
    
    with (b[0])
        speed = 11;
    
    with (b[1])
        speed = 11;
    
    with (b[0])
        friction = -0.25;
    
    with (b[1])
        friction = -0.25;
    
    scr_pan(0, 15.5, 20);
    con = 11;
    alarm[4] = 20;
}

if (aftercon == 1)
{
    with (b[0])
    {
        a = scr_afterimage();
        a.image_alpha = 0.6;
    }
    
    with (b[1])
    {
        a = scr_afterimage();
        a.image_alpha = 0.6;
    }
}

if (con == 11)
{
    if (__view_get(e__VW.YView, 0) >= (room_height - 480))
        __view_set(e__VW.YView, 0, room_height - 480);
}

if (con == 12)
{
    with (susie)
    {
        hspeed = 8;
        sprite_index = spr_susie_shock;
    }
    
    con = 13;
    alarm[4] = 10;
}

if (con == 14)
{
    with (susie)
        hspeed = 0;
    
    con = 14.1;
    alarm[4] = 60;
}

if (con == 15.1)
{
    with (susie)
        sprite_index = spr_susiel_dark_unhappy;
    
    scr_pan_to_obj(obj_mainchara, 10);
    con = 14.2;
    alarm[4] = 8;
}

if (con == 15.2)
{
    with (obj_panner)
        instance_destroy();
    
    with (obj_mainchara)
        cutscene = 0;
    
    con = 15;
    alarm[4] = 20;
}

if (con == 16)
{
    aftercon = 0;
    global.fe = 9;
    global.msg[0] = scr_84_get_lang_string("obj_lancerchaseevent_slash_Step_0_gml_137_0");
    instance_create(0, 0, obj_dialoguer);
    con = 17;
}

if (con == 17 && instance_exists(obj_dialoguer) == false)
{
    with (susie)
    {
        sprite_index = spr_susier_dark_unhappy;
        image_speed = 0.166;
        hspeed = 7;
    }
    
    global.interact = 0;
    con = 18;
    
    with (obj_mainchara)
    {
        cutscene = 0;
        autorun = 1;
    }
    
    global.currentsong[0] = snd_init("creepychase.ogg");
    global.currentsong[1] = mus_loop(global.currentsong[0]);
    instance_create(0, 0, obj_overworld_spademaker);
}

if (con == 19)
    con = 20;
