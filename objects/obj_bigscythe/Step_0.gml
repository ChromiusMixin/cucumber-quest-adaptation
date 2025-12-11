if (type == 0)
{
    if (x >= (obj_battlesolid.x + 100))
        hspeed -= 0.25;
    
    if (x <= (obj_battlesolid.x - 100))
        hspeed += 0.25;
}

if (type == 1)
{
    if (y >= (obj_battlesolid.y + 100))
        vspeed -= 0.25;
    
    if (y <= (obj_battlesolid.y - 100))
        vspeed += 0.25;
}

siner += 0.5;
image_angle += anglespeed;

if (image_alpha < 1)
    image_alpha += 0.05;

grazetimer += 1;

if (grazetimer >= 6)
{
    grazetimer = 0;
    grazed = 0;
}
