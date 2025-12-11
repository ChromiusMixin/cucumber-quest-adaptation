timer += 1;

if (timer >= 60)
{
    active = 0;
    image_alpha -= 0.05;
    
    if (image_alpha <= 0)
        instance_destroy();
    
    hspeed += lengthdir_x(0.1, bdir);
    vspeed += lengthdir_y(0.1, bdir);
}
