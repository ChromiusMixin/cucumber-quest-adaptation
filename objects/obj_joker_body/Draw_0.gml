floatsiner += floatsinerspeed;
fly = sin(floatsiner / 16) * 3 * ((floatsinerspeed * 2) - 1);
flyx = 0;

if (dancelv >= 1)
    flyx = cos(floatsiner / 16) * 3 * ((floatsinerspeed * 2) - 1);

if (dancelv == 4)
{
    flyx = 0;
    fly = 0;
}

offx = x + 20;
offy = y + 18;

if (condition == 0)
{
    if (fade == 0)
        fade_a = 1;
    
    if (fade == 1)
        fade_a = abs(sin(floatsiner / 13));
    
    if (dancelv == 0)
        draw_sprite_ext(spr_joker_main, 0, offx + flyx, offy + fly, 2, 2, 0, c_white, fade_a);
    
    if (dancelv == 1)
        draw_sprite_ext(spr_joker_dance, floatsiner / 6, offx + flyx, offy + fly, 2, 2, 0, c_white, 1);
    
    if (dancelv == 2)
        draw_sprite_ext(spr_joker_tired, 0, offx + flyx, offy + fly, 2, 2, 0, c_white, 1);
    
    if (dancelv == 3)
    {
        dancesiner += 0.5;
        
        for (i = 0; i < 7; i += 1)
        {
            if (i >= 1)
            {
                shadowx[i] += sin(i + (floatsiner / 5)) * 8 * sfactor[i];
                shadowy[i] += cos(i + (floatsiner / 5)) * 4 * sfactor[i];
            }
            
            dalpha[i] = sin(i + (dancesiner / 9));
            
            if (dalpha[i] < 0 && i >= 1)
            {
                shadowx[i] = 60 - random(120);
                shadowy[i] = 60 - random(120);
                sfactor[i] = 1.5 - random(3);
            }
            
            draw_sprite_ext(spr_joker_dance, (dancesiner / 2) + (i / 4), x + shadowx[i], y + shadowy[i], 2, 2, 0, image_blend, dalpha[i]);
        }
    }
    
    if (dancelv == 4)
        draw_sprite_ext(spr_joker_teleport, 1, offx + flyx, offy + fly, 2, 2, 0, c_white, 1);
}

if (condition == 1)
{
    if (maxdist >= 150)
        maxdist = 150;
    
    sinadd = 0.8 + (maxdist / 50);
    
    if (sinadd < 0.8)
        sinadd = 0.8;
    
    if (sinadd > 2)
        sinadd = 2;
    
    siner += sinadd;
    sinx = sin(siner / 8) * maxdist;
    siny = -abs(sin(siner / 8)) * (maxdist * 0.7);
    ji = 0;
    
    if (sinx > (maxdist / 2) && maxdist > 15)
        ji = 1;
    
    if (sinx < (-maxdist / 2) && maxdist > 15)
        ji = 2;
    
    if (maxdist < 4)
        ji = 3;
    
    for (i = 0; i < (maxchain - 1); i += 1)
        draw_sprite_ext(spr_jokerchain, ji, (offx + (sinx * (i / maxchain))) - 2, offy + 6 + ((siny - 32) * (i / maxchain)) + fly, 2, 2, 0, c_white, 1);
    
    draw_sprite_ext(spr_jokerbody, 0, offx - 42, (offy + fly) - 2, 2, 2, 0, c_white, 1);
    draw_sprite_ext(spr_jokerhead, ji, (offx + sinx) - 2, (offy + siny + fly) - 14, 2, 2, 0, c_white, 1);
    maxdist -= 0.5;
    
    if (maxdist <= 0)
    {
        maxdist = 0;
        condition = 0;
    }
}

if (condition == 2)
{
    with (obj_heroparent)
        image_alpha -= 0.125;
    
    if (sndcon == 0)
    {
        snd_play(snd_spearappear);
        sndcon = 1;
    }
    
    draw_sprite_ext(spr_joker_main, 0, offx, offy + fly, size, 2, 0, c_white, 1);
    size -= 0.25;
    
    if (size <= 0)
    {
        with (obj_heroparent)
            image_alpha = 0;
        
        sndcon = 0;
        size = 2;
        condition = 4;
    }
}

if (condition == 3)
{
    with (obj_heroparent)
        image_alpha += 0.125;
    
    if (sndcon == 0)
    {
        snd_play(snd_spearappear);
        sndcon = 1;
    }
    
    draw_sprite_ext(spr_joker_main, 0, offx, offy + fly, size, 2, 0, c_white, 1);
    size += 0.25;
    
    if (size >= 2)
    {
        with (obj_heroparent)
            image_alpha = 1;
        
        size = 2;
        condition = 0;
        sndcon = 0;
    }
}

if (condition == 4)
{
    if (global.turntimer <= 20)
    {
        timer = 0;
        condition = 3;
        size = 0;
    }
}

if (condition == 5)
{
    timer += 1;
    
    if (timer == 1)
    {
        spintimer = 0;
        s_xscale = 2;
        s_yscale = 2;
        s_sprite = spr_joker_teleport;
        s_y = 0;
        s_vspeed = 0;
        s_alpha = 1;
        snd_play(scr_84_get_sound("snd_joker_metamorphosis"));
    }
    
    if (timer >= 1 && timer <= 6)
    {
        s_xscale *= 1.15;
        s_yscale *= 0.85;
    }
    
    if (timer >= 10 && timer <= 30)
    {
        s_xscale *= 0.85;
        s_yscale *= 1.15;
    }
    
    if (timer >= 30 && timer <= 60)
    {
        spintimer += 1;
        s_xscale = sin(spintimer / 6) * 2;
        s_sprite = spr_joker_scythebody;
        s_yscale *= 0.85;
        
        if (s_xscale >= 2)
            s_xscale = 2;
        
        if (s_yscale <= 2)
            s_yscale = 2;
    }
    
    if (timer >= 60 && timer < 82)
    {
        spintimer += 1;
        s_xscale = sin(spintimer / 6) * 2;
        s_vspeed -= 1.5;
        s_y += s_vspeed;
        s_alpha -= 0.05;
    }
    
    if (timer >= 82)
    {
        if (instance_exists(obj_battlecontroller))
        {
            if (global.turntimer > 20)
            {
                timer = 0;
                condition = 4;
            }
        }
    }
    
    draw_sprite_ext(s_sprite, 0, offx, offy + s_y, s_xscale, s_yscale, 0, image_blend, s_alpha);
}

if (condition == 0 || condition == 1)
{
    if (dancelv <= 2)
    {
        draw_set_color(c_black);
        draw_rectangle(((x + (sprite_width / 2)) - 20 - fly) + flyx, (y + 80) - (fly / 2), x + (sprite_width / 2) + 30 + fly + flyx, y + 85 + (fly / 2), false);
    }
}
