con = 0;
timer = 0;
entrance = global.entrance;
rem_facing = -1;
facing_timer = 0;

if (room == room_field2 && global.plot >= 34)
    instance_destroy();

if (room == room_field2A || room == room_field_puzzle1)
{
    if (room == room_field2A)
        candyflag = 101;
    
    if (room == room_field_puzzle1)
        candyflag = 102;
    
    siner = 0;
    
    if (global.flag[candyflag] >= 2)
    {
        instance_destroy();
    }
    else
    {
        candytree = scr_dark_marker(obj_npc_room.x, obj_npc_room.y, spr_candytree_candies);
        
        with (candytree)
        {
            siner = 0;
            scr_depth();
            depth -= 5;
        }
    }
}

if (room == room_forest_savepoint3)
{
    if (global.tempflag[9] == 1)
    {
        if (global.hp[1] < 1)
            global.hp[1] = 10;
        
        if (global.hp[3] < 1)
            global.hp[3] = 10;
        
        global.fighting = 0;
        global.interact = 1;
        blackmarker = scr_dark_marker(-100, -100, spr_pixel_white);
        
        with (blackmarker)
        {
            image_blend = c_black;
            image_xscale = 600;
            image_yscale = 600;
            depth = 1000;
        }
        
        con = 10;
        alarm[4] = 30;
    }
    else
    {
        instance_destroy();
    }
}

if (room == room_field_secret1)
{
    pcon = 0;
    ptimer = 0;
    puzzle = instance_create(1000, 100, obj_suitspuzz);
    
    with (puzzle)
    {
        max_suit = 4;
        drawclue = 0;
        sol[0] = 2;
        sol[1] = 4;
        sol[2] = 3;
        sol[3] = 1;
    }
    
    spikee[0] = scr_dark_marker(1300, 240, spr_spiketile);
    spikee[1] = scr_dark_marker(1300, 280, spr_spiketile);
    
    with (spikee[0])
        depth = 900000;
    
    with (spikee[1])
        depth = 900000;
    
    spike_solid = instance_create(1300, 240, obj_soliddark);
    
    with (spike_solid)
        image_yscale = 3;
}

if (room == room_forest_beforeclover)
{
    pcon = 0;
    ptimer = 0;
    hinta = scr_dark_marker(320, 680, spr_suitsicon_fade);
    hintb = scr_dark_marker(840, 680, spr_suitsicon_fade);
    hintc = scr_dark_marker(1400, 680, spr_suitsicon_fade);
    
    with (hinta)
        depth = 800000;
    
    with (hintb)
    {
        image_index = 1;
        depth = 800000;
    }
    
    with (hintc)
    {
        image_index = 2;
        depth = 800000;
    }
    
    puzzle = instance_create(180, 140, obj_suitspuzz);
    
    with (puzzle)
    {
        max_suit = 3;
        drawclue = 0;
        sol[0] = 1;
        sol[1] = 2;
        sol[2] = 3;
    }
    
    spikee[0] = scr_dark_marker(400, 240, spr_spiketile);
    spikee[1] = scr_dark_marker(440, 240, spr_spiketile);
    
    with (spikee[0])
        depth = 900000;
    
    with (spikee[1])
        depth = 900000;
    
    spike_solid = instance_create(400, 240, obj_soliddark);
    
    with (spike_solid)
        image_xscale = 2;
    
    if (global.flag[290] == 1)
    {
        with (spikee[0])
            image_index = 1;
        
        with (spikee[1])
            image_index = 1;
        
        with (spike_solid)
            instance_destroy();
        
        with (puzzle)
            won = 1;
    }
}

if (room == room_forest_savepoint_relax)
{
    if (global.plot >= 85)
        instance_destroy();
    else
        con = 1;
}

if (room == room_forest_maze_susie)
{
    global.flag[291] = 5;
    
    if (global.plot >= 100)
    {
        instance_destroy();
    }
    else
    {
        image_speed = 0;
        visible = 1;
        scr_depth();
        con = 1;
        sprite_index = spr_susied_dark_unhappy;
    }
}

talked = 0;
timer = 0;
