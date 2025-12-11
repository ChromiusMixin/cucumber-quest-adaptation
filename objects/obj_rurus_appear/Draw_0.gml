if (timer >= 0)
{
    if (type == 1)
        sprite_index = spr_checkers_idle_white;
    
    timer += 1;
    xc = x + (sprite_width / 2);
    draw_set_color(c_white);
    
    if (rect_width > 1)
    {
        for (i = 3; i >= 1; i -= 1)
        {
            draw_set_alpha(((1.25 - (i / 4)) * rect_width) / 50);
            draw_rectangle(xc - (rect_width * (1 + (i / 4))), -200, xc + (rect_width * (1 + (i / 4))), y + sprite_height, false);
        }
    }
    
    draw_set_alpha(1);
    
    if (timer <= 30)
    {
        if (rect_width <= 50)
        {
            rect_width += 1;
            rect_width *= 1.125;
        }
    }
    
    if (timer >= 30)
    {
        if (type == 0)
        {
            draw_sprite_ext(sprite_index, r_index, x, (y - 32) + (r_index * 4), image_xscale, image_yscale, 0, c_white, 1);
            
            if (r_index < 8)
                r_index += 0.166;
            else
                r_index = 8;
        }
        
        if (type == 1)
        {
            draw_sprite_ext(spr_checkers_idle, 0, x, (y - 32) + (r_index * 4), image_xscale, image_yscale, 0, c_white, 1);
            draw_sprite_ext(spr_checkers_idle_white, 0, x, (y - 32) + (r_index * 4), image_xscale, image_yscale, 0, c_white, 1 - (r_index / 8));
            
            if (r_index < 8)
                r_index += 0.166;
            else
                r_index = 8;
        }
    }
    
    if (timer >= 72)
    {
        if (rect_width >= 2)
        {
            rect_width -= 0.5;
            rect_width *= 0.95;
        }
        else
        {
            rect_width = 0;
        }
    }
}
