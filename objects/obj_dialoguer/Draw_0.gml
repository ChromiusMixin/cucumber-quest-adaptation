if image_alpha < 1
	image_alpha += 0.05
if (active == 1)
{
    scr_dbox();
    
    if (!instance_exists(writer))
        instance_destroy();
}
