if (loaded)
{
    if (save_ready == 1 && image_alpha == 1)
    {
        scr_load();
        save_ready++;
    }
    
    if (!alpha_set)
    {
        fadespeed = 0.04;
        alpha_set = true;
        save_ready++;
    }
    
    if (save_ready == 2)
    {
        fadespeed = -0.04;
        save_ready++;
    }
}
