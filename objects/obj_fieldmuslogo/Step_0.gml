siner += 1;

if (siner <= 60)
{
    offx += (2 - (siner / 30));
    
    if (image_alpha < 1)
        image_alpha += 0.025;
}

if (siner >= 240)
{
    offx += (-8 + (siner / 30));
    image_alpha -= 0.016666666666666666;
    
    if (image_alpha <= 0)
        instance_destroy();
}
