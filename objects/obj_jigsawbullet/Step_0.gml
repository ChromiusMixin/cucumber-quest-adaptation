if (init == 0 && image_alpha < 1)
{
    image_alpha += 0.05;
    
    if (image_alpha >= 1)
    {
        init = 1;
        active = 1;
    }
}

if (tracking == 1)
{
    if (instance_exists(obj_heart))
    {
        if (side == 1 || side == 3)
        {
            if (((obj_heart.x + 10) - x) >= 10)
                x += 1.5;
            
            if (((obj_heart.x + 10) - x) <= -10)
                x -= 1.5;
        }
        
        if (side == 0 || side == 2)
        {
            if (((obj_heart.y + 10) - y) >= 10)
                y += 1.5;
            
            if (((obj_heart.y + 10) - y) <= -10)
                y -= 1.5;
        }
    }
}

timer += 1;

if (timer >= 60 && con == 0)
{
    tracking = 0;
    direction = (side * 90) + 180;
    speed = 2;
    gravity_direction = side * 90;
    gravity = 0.3;
    
    if (joker == 1)
    {
        gravity = 0.4;
        speed = 3;
    }
    
    con = 1;
}

if (timer >= 80)
    gravity = 0;

if (locked == 1)
{
    ltimer += 1;
    
    if (ltimer >= 24)
    {
        image_alpha -= 0.1;
        active = 0;
    }
    
    if (ltimer >= 34)
        instance_destroy();
}
