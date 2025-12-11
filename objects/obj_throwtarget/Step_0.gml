if (con == 1)
    image_angle += 2.5;

if (con == 5)
{
    if (x < (xstart + 40))
        x += 2.5;
    
    con = 6;
}

if (con == 6)
{
    if (x > xstart)
        x -= 0.5;
}

if (con == 7)
{
    if (x < (xstart + 40))
        x += 2;
    
    con = 6;
}
