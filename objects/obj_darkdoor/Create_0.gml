image_speed = 0;
open = 0;
siner = 0;
xsin = 0;
con = 0;

if (global.plot < 5)
{
    con = 1;
    
    with (obj_mainchara)
        visible = 0;
    
    k = scr_marker(290, 198, spr_krisu);
    s = scr_marker(310, 190, spr_susieu);
    global.interact = 1;
    
    with (s)
    {
        vspeed = -0.5;
        image_speed = 0.1;
    }
    
    with (k)
    {
        vspeed = -0.5;
        image_speed = 0.1;
    }
    
    alarm[4] = 180;
}
else
{
    block = instance_create(280, 100, obj_solidblock);
    block.image_xscale = 4;
    sunset = scr_marker(0, 0, spr_doorarea_sunsetoverlay);
    
    with (sunset)
    {
        image_alpha = 0.4;
        depth = 2000;
    }
}

if (global.plot == 250)
{
    with (obj_mainchara)
    {
        x = obj_markerD.x;
        y = obj_markerD.y;
    }
    
    global.interact = 1;
    con = 40;
}
