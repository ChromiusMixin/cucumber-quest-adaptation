if (walkcon == 1)
{
    visible = 0;
    wings = scr_dark_marker(x + 92, y + 74, spr_starwalker_wings);
    wings.image_index = image_index;
    
    with (wings)
    {
        image_speed = 0.1;
        depth = 1010;
        hspeed = 2.5;
        vspeed = -0.5;
        gravity_direction = 90;
        gravity = 0.05;
    }
    
    body = scr_dark_marker(x + 70, y + 52, spr_starwalker_walk);
    
    with (body)
    {
        depth = 1000;
        image_speed = 0;
        vspeed = 4;
        image_speed = 0;
    }
    
    walkcon = 2;
}

if (walkcon == 2)
{
    with (body)
        scr_depth();
    
    walktimer += 1;
    
    if (walktimer >= 40)
    {
        hspeed = 3.5;
        
        with (body)
        {
            vspeed = 0;
            hspeed = 3.5;
            image_speed = 0.125;
        }
        
        bodycheck = instance_create(body.x, body.y + 20, obj_readable_room1);
        bodycheck.image_xscale = 2;
        bodycheck.image_yscale = 2;
        
        with (bodycheck)
            hspeed = 3.5;
        
        walkcon = 3;
        walktimer = 0;
    }
}
