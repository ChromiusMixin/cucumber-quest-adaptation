if (!variable_instance_exists(id, "hc"))
{
    hc = 0;
    vc = 0;
}

scr_depth();
wallcheck = 0;
nowx = x;
nowy = y;
var nopress = 0;

if (press_d == 0 && press_l == 0 && press_u == 0 && press_r == 0)
    nopress = 1;

press_l = 0;
press_r = 0;
press_d = 0;
press_u = 0;
bkx = 0;
bky = 0;
bkxy = 0;
jelly = 2;

if (global.interact == 1)
    runmove = 0;

if (global.interact == 0)
{
    if (button3_p() && threebuffer < 0)
    {
        if (global.flag[7] == 0 && battlemode == 0)
        {
            with (obj_darkcontroller)
                threebuffer = 2;
            
            with (obj_overworldc)
            {
                movenoise = 1;
                threebuffer = 2;
            }
            
            global.menuno = 0;
            global.interact = 5;
            threebuffer = 2;
            twobuffer = 2;
        }
    }
    
    if (global.flag[11] == 1)
    {
        if (button2_h() && twobuffer < 0)
            run = 0;
        else
            run = 1;
    }
    else if (button2_h() && twobuffer < 0)
    {
        run = 1;
    }
    else
    {
        run = 0;
    }
    
    if (autorun > 0)
    {
        if (autorun == 1)
        {
            run = 1;
            runtimer = 400;
        }
        
        if (autorun == 2)
        {
            run = 1;
            runtimer = 100;
        }
    }
    
    if (run == 1)
    {
        if (darkmode == 0)
        {
            wspeed = bwspeed + 0.5;
            
            if (runtimer > 20)
                wspeed = bwspeed + 1;
            
            if (runtimer > 120)
                wspeed = bwspeed + 1.5;
        }
        
        if (darkmode == 1)
        {
            wspeed = bwspeed + 1;
            
            if (runtimer > 20)
                wspeed = bwspeed + 2;
            
            if (runtimer > 120)
                wspeed = bwspeed + 2.5;
        }
    }
    
    if (run == 0)
        wspeed = bwspeed;
    
    if (left_h())
        press_l = 1;
    
    if (right_h())
        press_r = 1;
    
    if (up_h())
        press_u = 1;
    
    if (down_h())
        press_d = 1;
    
    px = 0;
    py = 0;
    pressdir = -1;
    
    if (press_r == 1)
    {
        px = wspeed;
        pressdir = 1;
    }
    
    if (press_l == 1)
    {
        px = -wspeed;
        pressdir = 3;
    }
    
    if (press_d == 1)
    {
        py = wspeed;
        pressdir = 0;
    }
    
    if (press_u == 1)
    {
        py = -wspeed;
        pressdir = 2;
    }
    
    var pdx = frac(px);
    var pdy = frac(py);
    px -= pdx;
    py -= pdy;
    hc += pdx;
    vc += pdy;
    
    if (abs(hc) >= 1)
    {
        px += hc;
        hc = 0;
    }
    
    if (abs(vc) >= 1)
    {
        py += vc;
        vc = 0;
    }
    
    if (nopress == 1 && pressdir != -1)
        global.facing = pressdir;
    
    if (global.facing == 2)
    {
        if (press_d == 1)
            global.facing = 0;
        
        if (press_u == 0 && pressdir != -1)
            global.facing = pressdir;
    }
    
    if (global.facing == 0)
    {
        if (press_u == 1)
            global.facing = 2;
        
        if (press_d == 0 && pressdir != -1)
            global.facing = pressdir;
    }
    
    if (global.facing == 3)
    {
        if (press_r == 1)
            global.facing = 1;
        
        if (press_l == 0 && pressdir != -1)
            global.facing = pressdir;
    }
    
    if (global.facing == 1)
    {
        if (press_l == 1)
            global.facing = 3;
        
        if (press_r == 0 && pressdir != -1)
            global.facing = pressdir;
    }
    
    nopress = 0;
    xmeet = 0;
    ymeet = 0;
    xymeet = 0;
    
    if (place_meeting(x + px, y, obj_solidblock))
    {
        var g = abs(py);
        
        while (g > 0)
        {
            var mvd = 0;
            
            if (press_d == 0 && !place_meeting(x + px, y - g, obj_solidblock))
            {
                y -= g;
                py = 0;
                break;
            }
            else
            {
                mvd = 1;
            }
            
            if (press_u == 0 && mvd == 0 && !place_meeting(x + px, y + g, obj_solidblock))
            {
                y += g;
                py = 0;
                break;
            }
            
            g -= 1;
        }
        
        xmeet = 1;
        bkx = 0;
        
        if (px > 0)
        {
            for (var i = px; i >= 0; i -= 1)
            {
                if (!place_meeting(x + i, y, obj_solidblock))
                {
                    px = i;
                    bkx = 1;
                    break;
                }
            }
        }
        
        if (px < 0)
        {
            for (var i = px; i <= 0; i += 1)
            {
                if (!place_meeting(x + i, y, obj_solidblock))
                {
                    px = i;
                    bkx = 1;
                    break;
                }
            }
        }
        
        if (bkx == 0)
            px = 0;
    }
    else if (place_meeting(x, y + py, obj_solidblock))
    {
        ymeet = 1;
        bky = 0;
        var g = abs(px);
        
        while (g > 0)
        {
            var mvd = 0;
            
            if (press_r == 0 && !place_meeting(x - g, y + py, obj_solidblock))
            {
                x -= g;
                px = 0;
                break;
            }
            else
            {
                mvd = 1;
            }
            
            if (mvd == 0 && press_l == 0 && !place_meeting(x + g, y + py, obj_solidblock))
            {
                x += g;
                px = 0;
                break;
            }
            
            g -= 1;
        }
        
        if (py > 0)
        {
            for (var i = py; i >= 0; i -= 1)
            {
                if (!place_meeting(x, y + i, obj_solidblock))
                {
                    py = i;
                    bky = 1;
                    break;
                }
            }
        }
        
        if (py < 0)
        {
            for (var i = py; i <= 0; i += 1)
            {
                if (!place_meeting(x, y + i, obj_solidblock))
                {
                    py = i;
                    bky = 1;
                    break;
                }
            }
        }
        
        if (bky == 0)
            py = 0;
    }
    
    if (place_meeting(x + px, y + py, obj_solidblock))
    {
        xymeet = 1;
        bkxy = 0;
        var i = px;
        var j = py;
        
        while (j != 0 || i != 0)
        {
            if (!place_meeting(x + i, y + j, obj_solidblock))
            {
                px = i;
                py = j;
                bkxy = 1;
                break;
            }
            
            if (abs(j) >= 1)
            {
                if (j > 0)
                    j -= 1;
                
                if (j < 0)
                    j += 1;
            }
            else
            {
                j = 0;
            }
            
            if (abs(i) >= 1)
            {
                if (i > 0)
                    i -= 1;
                
                if (i < 0)
                    i += 1;
            }
            else
            {
                i = 0;
            }
        }
        
        if (bkxy == 0)
        {
            px = 0;
            py = 0;
        }
    }
    
    runmove = 0;
    
    if (run == 1 && xmeet == 0 && ymeet == 0 && xymeet == 0)
    {
        if (abs(px) > 0 || abs(py) > 0)
        {
            runmove = 1;
            runtimer += 1;
        }
        else
        {
            runtimer = 0;
        }
    }
    else
    {
        runtimer = 0;
    }
    
    x += px;
    y += py;
}

walk = 0;

if (x != nowx && nopress == 0)
    walk = 1;

if (y != nowy && nopress == 0)
    walk = 1;

if (walk == 1)
    walkbuffer = 12;

if (walkbuffer > 6 && fun == 0)
{
    walktimer += 1.5;
    
    if (runmove == 1)
        walktimer += 1.5;
    
    if (runmove == 1)
    {
        if (walktimer >= 120)
            walktimer -= 120;
        
        if (walktimer < 20)
            image_index = 0;
        
        if (walktimer >= 20)
            image_index = 1;
        
        if (walktimer >= 40)
            image_index = 2;
        
        if (walktimer >= 60)
            image_index = 3;
        
        if (walktimer >= 80)
            image_index = 4;
        
        if (walktimer >= 100)
            image_index = 5;
    }
    else
    {
        if (walktimer >= 80)
            walktimer -= 80;
        
        if (walktimer < 20)
            image_index = 0;
        
        if (walktimer >= 20)
            image_index = 1;
        
        if (walktimer >= 40)
            image_index = 2;
        
        if (walktimer >= 60)
            image_index = 3;
    }
}
else if (walkbuffer <= 0 && fun == 0)
{
    if (walktimer < 20)
        walktimer = 19;
    
    if (walktimer >= 20 && walktimer < 40)
        walktimer = 39;
    
    if (walktimer >= 40 && walktimer < 60)
        walktimer = 59;
    
    if (walktimer >= 60)
        walktimer = 78;
    
    image_index = 0;
}

walkbuffer -= 0.375;

if (fun == 0)
{
    if (global.facing == 0)
    {
        if (runmove == 1)
            sprite_index = rundown;
        else
            sprite_index = dsprite;
    }
    
    if (global.facing == 1)
    {
        if (runmove == 1)
            sprite_index = runright;
        else
            sprite_index = rsprite;
    }
    
    if (global.facing == 2)
    {
        if (runmove == 1)
            sprite_index = runup;
        else
            sprite_index = usprite;
    }
    
    if (global.facing == 3)
    {
        if (runmove == 1)
            sprite_index = runleft;
        else
            sprite_index = lsprite;
    }
}

if (runmove == 0)
{
    if (stepping == 1)
    {
        if (image_index == 1 && stepped == 0)
        {
            if (global.flag[31] == 0)
            {
                snd_play(snd_step1);
                stepped = 1;
            }
        }
        else if (image_index == 0 || image_index == 2)
        {
            stepped = 0;
        }
        else if (image_index == 3 && stepped == 0)
        {
            stepped = 1;
            
            if (global.flag[31] == 0)
                snd_play(snd_step2);
        }
    }
}
else if (runmove == 1)
{
    if (stepping == 1)
    {
        if (image_index == 0 && stepped == 0)
        {
            if (global.flag[31] == 0)
            {
                snd_play(snd_step1);
                stepped = 1;
            }
        }
        else if (image_index == 1 || image_index == 2 || image_index == 4 || image_index == 5)
        {
            stepped = 0;
        }
        else if (image_index == 3 && stepped == 0)
        {
            stepped = 1;
            
            if (global.flag[31] == 0)
                snd_play(snd_step2);
        }
    }
}

if (onebuffer < 0)
{
    if (global.interact == 0)
    {
        if (button1_p())
        {
            thisinteract = 0;
            d = global.darkzone + 1;
            
            if (global.facing == 1)
            {
                if (collision_rectangle(x + (sprite_width / 2), y + (6 * d) + (sprite_height / 2), x + sprite_width + (13 * d), y + sprite_height, obj_interactable, false, true))
                    thisinteract = 1;
                
                if (collision_rectangle(x + (sprite_width / 2), y + (6 * d) + (sprite_height / 2), x + sprite_width + (13 * d), y + sprite_height, obj_interactablesolid, false, true))
                    thisinteract = 2;
            }
            
            if (thisinteract > 0)
            {
                if (thisinteract == 1)
                    interactedobject = collision_rectangle(x + (sprite_width / 2), y + (6 * d) + (sprite_height / 2), x + sprite_width + (13 * d), y + sprite_height, obj_interactable, false, true);
                
                if (thisinteract == 2)
                    interactedobject = collision_rectangle(x + (sprite_width / 2), y + (6 * d) + (sprite_height / 2), x + sprite_width + (13 * d), y + sprite_height, obj_interactablesolid, false, true);
                
                if (interactedobject != -4)
                {
                    with (interactedobject)
                        facing = 3;
                    
                    with (interactedobject)
                        scr_interact();
                }
            }
            
            thisinteract = 0;
            
            if (global.facing == 3)
            {
                if (collision_rectangle(x + (sprite_width / 2), y + (6 * d) + (sprite_height / 2), x - (13 * d), y + sprite_height, obj_interactable, false, true))
                    thisinteract = 1;
                
                if (collision_rectangle(x + (sprite_width / 2), y + (6 * d) + (sprite_height / 2), x - (13 * d), y + sprite_height, obj_interactablesolid, false, true))
                    thisinteract = 2;
            }
            
            if (thisinteract > 0)
            {
                if (thisinteract == 1)
                    interactedobject = collision_rectangle(x + (sprite_width / 2), y + (6 * d) + (sprite_height / 2), x - (13 * d), y + sprite_height, obj_interactable, false, true);
                
                if (thisinteract == 2)
                    interactedobject = collision_rectangle(x + (sprite_width / 2), y + (6 * d) + (sprite_height / 2), x - (13 * d), y + sprite_height, obj_interactablesolid, false, true);
                
                if (interactedobject != -4)
                {
                    with (interactedobject)
                        facing = 1;
                    
                    with (interactedobject)
                        scr_interact();
                }
            }
            
            thisinteract = 0;
            
            if (global.facing == 0)
            {
                if (collision_rectangle(x + (4 * d), y + (28 * d), (x + sprite_width) - (4 * d), y + sprite_height + (15 * d), obj_interactable, false, true))
                    thisinteract = 1;
                
                if (collision_rectangle(x + (4 * d), y + (28 * d), (x + sprite_width) - (4 * d), y + sprite_height + (15 * d), obj_interactablesolid, false, true))
                    thisinteract = 2;
            }
            
            if (thisinteract > 0)
            {
                if (thisinteract == 1)
                    interactedobject = collision_rectangle(x + (4 * d), y + (28 * d), (x + sprite_width) - (4 * d), y + sprite_height + (15 * d), obj_interactable, false, true);
                
                if (thisinteract == 2)
                    interactedobject = collision_rectangle(x + (4 * d), y + (28 * d), (x + sprite_width) - (4 * d), y + sprite_height + (15 * d), obj_interactablesolid, false, true);
                
                if (interactedobject != -4)
                {
                    with (interactedobject)
                        facing = 2;
                    
                    with (interactedobject)
                        scr_interact();
                }
            }
            
            thisinteract = 0;
            
            if (global.facing == 2)
            {
                if (collision_rectangle(x + 3, (y + sprite_height) - (5 * d), (x + sprite_width) - (5 * d), y + (5 * d), obj_interactable, false, true))
                    thisinteract = 1;
                
                if (collision_rectangle(x + 3, (y + sprite_height) - (5 * d), (x + sprite_width) - (5 * d), y + (5 * d), obj_interactablesolid, false, true))
                    thisinteract = 2;
            }
            
            if (thisinteract > 0)
            {
                if (thisinteract == 1)
                    interactedobject = collision_rectangle(x + (3 * d), (y + sprite_height) - (5 * d), (x + sprite_width) - (5 * d), y + (5 * d), obj_interactable, false, true);
                
                if (thisinteract == 2)
                    interactedobject = collision_rectangle(x + (3 * d), (y + sprite_height) - (5 * d), (x + sprite_width) - (5 * d), y + (5 * d), obj_interactablesolid, false, true);
                
                if (interactedobject != -4)
                {
                    with (interactedobject)
                        facing = 0;
                    
                    with (interactedobject)
                        scr_interact();
                }
            }
        }
    }
}

onebuffer -= 1;
twobuffer -= 1;
threebuffer -= 1;

with (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_doorparent, 0, 0))
    event_user(9);

if (battlemode == 1)
{
    global.inv -= 1;
    
    if (global.inv < 0 && global.interact != 3)
    {
        with (collision_rectangle(x + 12, y + 40, x + 27, y + 49, obj_overworldbulletparent, 1, 0))
            event_user(5);
        
        with (collision_line(x + 12, y + 49, x + 19, y + 57, obj_overworldbulletparent, 1, 0))
            event_user(5);
        
        with (collision_line(x + 26, y + 49, x + 19, y + 57, obj_overworldbulletparent, 1, 0))
            event_user(5);
    }
}
