if (con == 1)
{
    waketimer += 1;
    canclick = 0;
    
    if (waketimer < 100)
        canclick = 1;
    
    if (waketimer < 220 && waketimer > 130)
        canclick = 1;
    
    if (waketimer > 250 && waketimer < 340)
        canclick = 1;
    
    if (canclick == 1)
    {
        if (left_p())
            waketimer += 2;
        
        if (right_p())
            waketimer += 2;
        
        if (down_p())
            waketimer += 2;
        
        if (up_p())
            waketimer += 2;
    }
    
    if (waketimer == 120 || waketimer == 124)
    {
        with (k)
        {
            sprite_index = spr_kris_fallen_dark;
            x = xstart + choose(-2, 2);
            y = ystart + choose(-2, 2);
        }
    }
    
    if (waketimer == 126)
    {
        with (k)
        {
            x = xstart;
            y = ystart;
        }
    }
    
    if (waketimer == 240 || waketimer == 242 || waketimer == 244 || waketimer == 246)
    {
        with (k)
        {
            x = xstart + choose(-2, 2, 0);
            y = ystart + choose(-2, 2, 0);
        }
    }
    
    if (waketimer >= 360 && waketimer <= 368)
    {
        with (k)
        {
            x = xstart + choose(-2, 2, 0);
            y = ystart + choose(-2, 2, 0);
        }
    }
    
    if (waketimer == 370)
    {
        with (k)
            instance_destroy();
        
        with (obj_mainchara)
            visible = 1;
        
        global.interact = 0;
        con = 2;
        
        if (global.plot < 11)
            global.plot = 11;
        
        scr_tempsave();
        instance_destroy();
    }
}
