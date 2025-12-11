if (t <= 50)
    image_alpha += 0.02;

if (t == 50)
    active = 1;

if (t == 0)
{
    maxspeed = abs(hspeed);
    hspeed = 0;
}

t += 1;
siner += sinspeed;
sinfactor_0 = sin((siner - 1) / 20);
sinfactor = sin(siner / 20);
sinsign = sinfactor - sinfactor_0;
x = obj_battlesolid.x - (sinfactor * 150);
image_xscale = sinsign * 50;

if (image_xscale > 2)
    image_xscale = 2;

if (image_xscale < -2)
    image_xscale = -2;

if (sinsign > 0)
{
    depth = 21;
    active = 0;
    image_blend = c_gray;
}

if (sinsign < 0)
{
    depth = 0;
    
    if (image_alpha >= 1)
        active = 1;
    
    image_blend = c_white;
}

vsin += 0.5;

if (altmode == 0 || altmode == 2 || altmode == 3)
    y += (sin(vsin / 10) * 1.75);

if (altmode == 1)
    y -= (sin(vsin / 10) * 1.75);

if (altmode == 99)
{
    altsin += 0.5;
    y += cos(altsin / 20);
}

if (altmode == 99)
{
    altsin += 0.5;
    y += cos(altsin / 10);
}
