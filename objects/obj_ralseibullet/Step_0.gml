if (image_xscale <= 1)
{
    image_yscale += 0.1;
    image_xscale += 0.1;
    image_alpha += 0.1;
    
    if (image_xscale >= 1)
        active = 1;
}

scr_destroyoutside();
