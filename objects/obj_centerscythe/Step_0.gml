if (chasecon == 1)
{
    image_alpha += 0.02;
    
    if (image_alpha >= 1)
    {
        image_alpha = 1;
        chasecon = 2;
        active = 1;
    }
}

if (chasecon == 2)
{
    if (un == 0)
    {
        if (rotspeed <= 5)
            rotspeed += 0.25;
    }
    
    if (un == 1)
    {
        if (rotspeed >= -5)
            rotspeed -= 0.25;
    }
    
    sine += sinespeed;
    dir += dirspeed;
    
    if (insanity == 1)
    {
        if (dirspeed > 0 && dirspeed < 1.5)
            dirspeed += 0.0025;
        
        if (dirspeed < 0 && dirspeed > -1.5)
            dirspeed -= 0.0025;
    }
    
    length = cos(sine / 18) * radius;
    x = centerx - lengthdir_x(length, dir);
    y = centery - lengthdir_y(length, dir);
    
    if (king == 1)
    {
        noisebuffer -= 1;
        
        if (abs(length) <= 8 && noisebuffer < 0)
        {
            snd_play(snd_swing);
            noisebuffer = 20;
        }
    }
}

if (king == 1)
{
    if (type == 1)
    {
        scythetimer += 1;
        
        if (scythetimer == 120)
        {
            snd_play(snd_spearappear);
            sbul = instance_create(centerx + (radius * scythesidex), centery + (60 * scythesidex), obj_collidebullet);
            sbul.image_xscale = 2;
            sbul.image_yscale = 2;
            sbul.image_alpha = 0;
            sbul.sprite_index = spr_joker_scythebody;
            sbul.mask_index = spr_joker_scythebody_mask;
            sbul.image_blend = c_red;
            sbul.active = 1;
            scr_bullet_inherit(sbul);
        }
        
        if (scythetimer >= 120 && scythetimer < 140)
        {
            sbul.image_angle += 5 * scythesidex;
            sbul.image_alpha += 0.05;
        }
        
        if (scythetimer >= 170 && scythetimer < 180)
        {
            if (instance_exists(sbul))
                sbul.hspeed -= 1.5 * scythesidex;
        }
        
        if (scythetimer >= 200 && scythetimer < 210)
        {
            with (sbul)
                image_alpha -= 0.1;
        }
        
        if (scythetimer >= 210)
        {
            with (sbul)
                instance_destroy();
            
            if (scythesidex == -1)
                scythesidex = 1;
            else
                scythesidex = -1;
            
            scythetimer = 118;
        }
    }
}

image_angle += rotspeed;

if (grazed == 1)
{
    grazetimer += 1;
    
    if (grazetimer >= 60)
    {
        grazed = 0;
        grazetimer = 0;
    }
}
