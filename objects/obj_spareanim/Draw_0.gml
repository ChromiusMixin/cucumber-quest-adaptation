if (t >= 12 && t <= 52)
{
    afterimage += 1;
    d3d_set_fog(true, c_white, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x + (afterimage * 2), y, image_xscale, image_yscale, 0, image_blend, 0.7 - (afterimage / 50));
    draw_sprite_ext(sprite_index, image_index, x + (afterimage * 4), y, image_xscale, image_yscale, 0, image_blend, 0.4 - (afterimage / 60));
    d3d_set_fog(false, c_black, 0, 0);
}

if (t < 12)
{
    if (t < 11)
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, image_blend, 1 - (neotone / 8));
    
    d3d_set_fog(true, c_white, 0, 1);
    maxwhite = t / 10;
    
    if (maxwhite > 1)
        maxwhite = 1;
    
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, image_blend, maxwhite - (tone / 10));
    d3d_set_fog(false, c_black, 0, 0);
}

if (t >= 1 && t <= 10)
{
    for (i = 0; i < 2; i += 1)
    {
        star[starcount] = instance_create(x + random(sprite_width), y + random(sprite_height), obj_marker);
        
        with (star[starcount])
        {
            image_xscale = 2;
            image_yscale = 2;
            sprite_index = spr_sparestar_anim;
            image_alpha = 2;
            image_speed = 0.125;
            hspeed = -1.5;
            gravity = 0.125;
            gravity_direction = 0;
        }
        
        starcount += 1;
    }
}

if (t >= 10 && t <= 60)
{
    for (i = 0; i < starcount; i += 1)
    {
        with (star[i])
        {
            image_angle += 5;
            image_alpha -= 0.05;
            
            if (image_alpha <= 0)
                instance_destroy();
        }
    }
}

if (t >= 10 && t < 20)
    tone += 1;

if (t >= 18)
{
    neotone += 1;
    
    if (neotone >= 60)
    {
        for (i = 0; i < starcount; i += 1)
        {
            with (star[i])
                instance_destroy();
        }
        
        instance_destroy();
    }
}

t += 1;
