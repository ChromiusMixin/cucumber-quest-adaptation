if (dont == 0)
{
    if (active == 0)
    {
        draw_sprite_ext(sprite_index, 0, x, y, 3 - (image_alpha * 2), 3 - (image_alpha * 2), 0, c_white, image_alpha);
        
        if (image_alpha < 1)
        {
            image_alpha += 0.05;
            
            if (type == 1)
            {
                vspeed = 1.5;
                gravity = -0.125;
            }
        }
        else
        {
            if (type == 0)
            {
                if ((obj_heart.y + 8) < y)
                {
                    vspeed = 0.5;
                    gravity = -0.05;
                }
                else
                {
                    vspeed = -1;
                    gravity = 0.25;
                }
            }
            
            active = 1;
        }
    }
    
    draw_sprite_ext(sprite_index, 0, x, y, 2 - image_alpha, 2 - image_alpha, 0, c_white, image_alpha);
    
    if (type == 0)
    {
        if (speed > 4)
            speed = 4;
    }
    
    if (y > (__view_get(e__VW.YView, 0) + 500))
        instance_destroy();
    
    if (y < (__view_get(e__VW.YView, 0) - 20))
        instance_destroy();
}

dont = 0;
