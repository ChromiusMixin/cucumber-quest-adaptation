myinteract = 0;
talked = 0;
image_speed = 0.1;
depthcancel = 0;

if (global.darkzone == 1)
{
    image_xscale = 2;
    image_yscale = 2;
}

if (room == room_dark1)
{
    sprite_index = spr_shine;
    
    if (global.time > 14400 || global.flag[10] == 1)
        instance_destroy();
}

if (room == room_field_maze)
{
    sprite_index = spr_jigsawry_clobbered;
    
    if (global.plot >= 150)
        instance_destroy();
}

if (room == room_forest_savepoint_relax)
{
    image_speed = 0.05;
    sprite_index = spr_diamond_fan;
}

if (depthcancel == 0)
    scr_depth();
