if (con == 4)
{
    htimer += 1;
    
    if (htimer >= 20)
    {
        friction = 0;
        speed = 0;
    }
    
    if (htimer >= 40)
    {
        active = 0;
        image_alpha -= 0.1;
    }
    
    if (htimer >= 50)
    {
        if (global.turntimer >= 0)
            global.turntimer = -2;
    }
}

if (con == 3)
{
    htimer += 1;
    
    if (htimer >= hmax)
    {
        direction = image_angle;
        speed = 1.25;
        friction = -0.125;
        
        if (joker == 1)
            speed = 2.5;
        
        con = 4;
        htimer = 0;
    }
}

if (con == 2)
{
    htimer += 1;
    image_angle += 12;
    
    if (htimer >= spinmax)
    {
        hmax = 38;
        
        if (joker == 1)
            hmax = 30;
        
        image_angle = 270 + (spinmax * 12);
        con = 3;
        htimer = 0;
    }
}

if (con == 1)
{
    htimer += 1;
    
    if (htimer >= 20)
    {
        spinmax = choose(52.5, 60, 67.5, 75);
        
        if (joker == 1)
            spinmax = 30 + random(30);
        
        con = 2;
        htimer = 0;
    }
}

if (con == 0)
{
    image_alpha += 0.1;
    image_xscale -= 0.1;
    image_yscale -= 0.1;
    htimer += 1;
    
    if (htimer >= 10)
    {
        con = 1;
        htimer = 0;
        active = 1;
    }
}

if (grazed == 1)
    grazetimer += 1;

if (grazetimer >= 30)
{
    grazetimer = 0;
    grazed = 0;
}
