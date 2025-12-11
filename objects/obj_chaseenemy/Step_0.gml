scr_depth();
targetx = (obj_mainchara.x + (obj_mainchara.sprite_width / 2)) - (sprite_width / 2);
targety = (obj_mainchara.y + (obj_mainchara.sprite_height / 2)) - (sprite_height / 2);

if (global.interact == 0)
    frozen = 0;

if (scr_outside_camera(200) && offscreen_frozen == 1)
    frozen = 1;
else
    frozen = 0;

if (global.interact != 0)
    frozen = 1;

if (frozen == 1)
{
    if (hadfrozen == 0)
    {
        remspeed = speed;
        speed = 0;
        hadfrozen = 1;
    }
}

if (frozen == 0)
{
    if (hadfrozen == 1)
    {
        if (speed == 0)
            speed = remspeed;
        
        hadfrozen = 0;
    }
    
    if (pacecon == 0)
    {
        pacetimer += 1;
        
        if (pacetype == 0)
        {
        }
        
        if (pacetype == 1)
        {
            if (pacetimer == 20)
                hspeed = 1;
            
            if (pacetimer == 68)
                hspeed = 0;
            
            if (pacetimer == 100)
                hspeed = -1;
            
            if (pacetimer == 148)
                hspeed = 0;
            
            if (pacetimer == 160)
                pacetimer = 0;
        }
        
        if (pacetype == 2)
        {
            hspeed = sin(pacetimer / 24) * 2;
            vspeed = cos(pacetimer / 24) * 2;
        }
        
        if (pacetype == 5)
        {
            if (pacetimer == 1)
                vspeed = 3;
            
            if (pacetimer == 50)
                vspeed = -3;
            
            if (y < ystart)
                pacetimer = 0;
        }
        
        if (pacetype == 6)
        {
            cancelwalk = 1;
            walk_index += 0.125;
        }
        
        if (pacetype == 7)
            hspeed = -sin(pacetimer / 60) * 5;
        
        if (pacetype == 7.5)
            hspeed = sin(pacetimer / 60) * 5;
        
        if (pacetype == 8)
            vspeed = -sin(pacetimer / 50) * 6.25;
        
        if (pacetype == 9)
        {
            hspeed = sin(pacetimer / (pacespeed * 30)) * (moveradius / 40);
            pacespeed = 1.6;
        }
        
        if (pacetype == 10)
        {
            if (pacecon2 == 0)
            {
                if (vspeed > 0)
                    vspeed *= 0.95;
                
                if (vspeed <= 0.25 && pacecon2 == 0)
                    pacecon2 = 1;
            }
            
            if (pacecon2 == 1)
                move_towards_point(obj_mainchara.x, obj_mainchara.y, 2);
        }
    }
    
    if (alertcon == 0)
    {
        alerttimer += 1;
        
        if (alerttimer >= 12)
        {
            alerttimer -= 6;
            
            if (distance_to_point(targetx + (sprite_width / 2), targety + (sprite_height / 2)) <= radius)
            {
                speed = 0;
                pacecon = 1;
                alerttimer = 0;
                alertcon = 1;
                snd_play(snd_b);
                instance_create(x + (sprite_width / 2), y - 20, obj_excblcon);
                alarm[4] = 40;
            }
        }
    }
    
    if (alertcon == 2)
    {
        if (chasetype == 0)
        {
            if (speed < 2)
                speed = 2;
            
            if (speed < 3.5)
                speed += 0.125;
            
            move_towards_point(targetx, targety, speed);
        }
        
        if (chasetype == 1)
        {
            if (alerttimer == 0)
                move_towards_point(targetx, targety, 5);
            
            alerttimer += 1;
            
            if (alerttimer >= 40)
                speed *= 0.375;
            
            if (alerttimer >= 50)
                speed = 0;
            
            if (alerttimer >= 54)
                alerttimer = 0;
        }
        
        if (chasetype == 2)
        {
            if (alerttimer == 0)
            {
                xnext = 0;
                ynext = 0;
                
                if (right_h())
                    xnext = 132;
                
                if (left_h())
                    xnext = -132;
                
                if (down_h())
                    ynext = 132;
                
                if (up_h())
                    ynext = -132;
                
                move_towards_point(targetx + xnext, targety + ynext, 5);
            }
            
            alerttimer += 1;
            
            if (alerttimer >= 40)
                speed *= 0.375;
            
            if (alerttimer >= 50)
                speed = 0;
            
            if (alerttimer >= 54)
                alerttimer = 0;
        }
        
        if (chasetype == 3)
        {
            if (speed < 1)
                speed = 1;
            
            if (speed < 2)
                speed += 0.125;
            
            move_towards_point(targetx, targety, speed);
        }
        
        if (chasetype == 4)
        {
            if (speed < 3)
                speed = 3;
            
            if (speed < 7)
                speed += 0.125;
            
            move_towards_point(targetx, targety, speed);
        }
    }
    
    facetimer += 1;
    
    if (facetimer >= 20)
    {
        if (hspeed <= -0.1 && facing == 1)
        {
            facing = 0;
            facetimer = 0;
        }
        
        if (hspeed >= 0.1 && facing == 0)
        {
            facing = 1;
            facetimer = 0;
        }
    }
    
    if (cancelwalk == 0)
    {
        walk_index += (speed / 20);
        
        if (speed == 0)
            walk_index = 0;
    }
}
