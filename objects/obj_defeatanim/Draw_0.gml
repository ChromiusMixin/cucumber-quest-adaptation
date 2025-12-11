if (t == 0)
    draw_self();

sweat = 0;

if (g <= 10)
    sweat = 1;

if (g >= 18 && g <= 26)
    sweat = 1;

if (sweat == 1)
    draw_sprite(spr_defeatsweat, 0, x - 6, y - 6);

if (t >= 1)
{
    for (i = 0; i <= 80; i += 1)
    {
        alph = 0.4;
        draw_sprite_ext(sprite_index, image_index, x + (2 * i), y, image_xscale, image_yscale, 0, image_blend, (alph - (t / 16)) + (i / 400));
    }
    
    if (t >= 30)
        instance_destroy();
}
