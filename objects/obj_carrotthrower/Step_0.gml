buffer += 1;

if (buffer == 38)
{
    gravity = 0;
    vspeed = 0;
    hspeed = 2 * dir;
    depth = -10;
}

if (buffer >= 38)
{
    y = obj_battlesolid.y - (obj_battlesolid.sprite_height / 2);
    
    if (x <= ((obj_battlesolid.x - (obj_battlesolid.sprite_width / 2)) + 20))
    {
        x += 2;
        
        if (hspeed < 0)
            hspeed = -hspeed;
    }
    
    if (x <= ((obj_battlesolid.x - (obj_battlesolid.sprite_width / 2)) + 20))
    {
        x += 2;
        
        if (hspeed < 0)
            hspeed = -hspeed;
    }
    
    if (x >= ((obj_battlesolid.x + (obj_battlesolid.sprite_width / 2)) - 20))
    {
        x -= 2;
        
        if (hspeed > 0)
            hspeed = -hspeed;
    }
    
    if (buffer >= 40 && con == 0 && abs(x - (obj_heart.x + 10)) < 30)
        con = 5;
    
    if (con == 5)
    {
        image_speed = 0.25;
        con = 6;
    }
    
    if (con == 6)
    {
        if (image_index >= 2 && throw_n == 0)
        {
            throw_n = 1;
            carrot = instance_create(x, y, obj_collidebullet);
            scr_bullet_inherit(carrot);
            
            with (carrot)
            {
                speedmax = 3.5;
                
                if (scr_monsterpop() == 2)
                    speedmax = 3;
                
                if (scr_monsterpop() == 3)
                    speedmax = 2.5;
                
                active = 1;
                image_xscale = 2;
                image_yscale = 2;
                vspeed = speedmax;
                image_speed = 0.125;
                sprite_index = spr_carrotbullet;
            }
        }
        
        if (image_index >= 3)
        {
            throw_n = 0;
            image_speed = 0;
            con = 7;
            alarm[4] = 30;
            
            if (scr_monsterpop() == 2)
                alarm[4] = 44;
            
            if (scr_monsterpop() == 3)
                alarm[4] = 60;
        }
    }
    
    if (con == 8)
    {
        image_index = 0;
        con = 0;
    }
}
