if (type == 0)
{
    if (con == 0)
    {
        ux += 30;
        dx -= 30;
        lx += 30;
        rx -= 30;
        con = 0.4;
    }
    
    if (con == 0.4)
    {
        minitimer += 1;
        
        if (minitimer >= 24)
            con = 0.5;
    }
    
    if (con == 0.5 && speed < 2.3)
        speed += 0.05;
    
    if (con == 0.5 && speed >= 2.3)
    {
        timer += 1;
        
        if (timer >= 340)
            con = 1;
    }
    
    if (con == 1)
    {
        speed -= 0.1;
        
        if (speed <= 0.05)
            event_user(2);
    }
}

if (type == 1)
{
    if (con == 0)
    {
        direction += (random(20) - random(20));
        con = 0.5;
    }
    
    if (con == 0.5 && speed < 2.6)
        speed += 0.05;
    
    if (hspeed >= 2.1)
    {
        if (vspeed > 0)
        {
            vspeed += 0.025;
            hspeed -= 0.025;
        }
        else
        {
            vspeed -= 0.025;
            hspeed -= 0.025;
        }
    }
    
    if (hspeed <= -2.1)
    {
        if (vspeed > 0)
        {
            vspeed += 0.025;
            hspeed += 0.025;
        }
        else
        {
            vspeed -= 0.025;
            hspeed += 0.025;
        }
    }
    
    if (vspeed >= 2.1)
    {
        if (hspeed > 0)
        {
            hspeed += 0.025;
            vspeed -= 0.025;
        }
        else
        {
            hspeed -= 0.025;
            vspeed -= 0.025;
        }
    }
    
    if (vspeed <= -2.1)
    {
        if (hspeed > 0)
        {
            hspeed += 0.025;
            vspeed += 0.025;
        }
        else
        {
            hspeed -= 0.025;
            vspeed += 0.025;
        }
    }
    
    if (con == 0.5 && speed >= 2.6)
    {
        timer += 1;
        
        if (timer >= 180)
            con = 1;
    }
    
    if (con == 1)
    {
        speed -= 0.2;
        
        if (speed <= 0.05)
            event_user(2);
    }
}

if (type == 2)
{
    if (con == 0)
    {
        direction += (random(20) - random(20));
        con = 0.5;
        ux += 50;
        dx -= 50;
        lx += 50;
        rx -= 50;
    }
    
    if (con == 0.5 && speed < 2.6)
        speed += 0.05;
    
    if (con == 0.5 && speed >= 2.6)
    {
        timer += 1;
        
        if (timer >= 140)
            con = 1;
    }
    
    if (con == 1)
    {
        speed -= 0.25;
        
        if (speed <= 0.05)
            event_user(2);
    }
}

if (type == 3)
{
    if (con == 0)
    {
        direction += (random(20) - random(20));
        con = 0.4;
        ux += 50;
        dx -= 50;
        lx += 50;
        rx -= 50;
    }
    
    if (con == 0.4)
    {
        minitimer += 1;
        
        if (minitimer >= 28)
            con = 0.5;
    }
    
    if (con == 0.5 && speed < 2.2)
        speed += 0.05;
    
    if (con == 0.5 && speed >= 2.2)
    {
        timer += 1;
        
        if (timer >= 340)
            con = 1;
    }
    
    if (con == 1)
    {
        speed -= 0.25;
        
        if (speed <= 0.05)
            event_user(2);
    }
}

if (type == 4)
{
    if (con == 0)
    {
        direction += (random(10) - random(10));
        con = 0.5;
        ux += 50;
        dx -= 50;
        lx += 50;
        rx -= 50;
    }
    
    if (con == 0.5 && speed < 3.5)
        speed += 0.05;
    
    if (con == 0.5 && speed >= 3.5)
    {
        timer += 1;
        
        if (timer >= 180)
            con = 1;
    }
    
    if (con == 1)
    {
        speed -= 0.25;
        
        if (speed <= 0.05)
        {
            active = 0;
            event_user(2);
        }
    }
}

if (type == 5)
{
    if (con == 0)
    {
        ux += 30;
        dx -= 30;
        lx += 30;
        rx -= 30;
        con = 0.4;
    }
    
    if (con == 0.4)
    {
        minitimer += 1;
        
        if (minitimer >= 24)
            con = 0.5;
    }
    
    if (con == 0.5 && speed < 2)
        speed += 0.05;
    
    if (con == 0.5 && speed >= 2)
    {
        timer += 1;
        
        if (timer >= 340)
            con = 1;
    }
    
    if (con == 1)
    {
        speed -= 0.1;
        
        if (speed <= 0.05)
            event_user(2);
    }
}

if (instance_exists(obj_growtangle))
{
    obj_growtangle.x = x;
    obj_growtangle.y = y;
    lborder = x - (sprite_width / 2);
    rborder = x + (sprite_width / 2);
    uborder = y - (sprite_height / 2);
    dborder = y + (sprite_height / 2);
    
    if (lborder < lx && hspeed < 0)
    {
        hspeed = -hspeed;
        bumpnoise = 1;
    }
    
    if (rborder > rx && hspeed > 0)
    {
        hspeed = -hspeed;
        bumpnoise = 1;
    }
    
    if (uborder < ux && vspeed < 0)
    {
        vspeed = -vspeed;
        bumpnoise = 1;
    }
    
    if (dborder > dx && vspeed > 0)
    {
        vspeed = -vspeed;
        bumpnoise = 1;
    }
    
    if (bumpnoise == 1)
    {
        snd_play(snd_bump);
        snd_play(snd_screenshake);
        bumpnoise = 0;
        
        if (!instance_exists(obj_shake))
            instance_create(0, 0, obj_shake);
    }
}

if (grazed == 1)
{
    if (timerbonus == 0)
    {
        timer += 1;
        timerbonus = 1;
    }
    
    grazetimer += 1;
    
    if (grazetimer >= 30)
    {
        timerbonus = 0;
        grazetimer = 0;
        grazed = 0;
    }
}
