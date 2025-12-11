if (con < 2)
    draw_self();

if (con >= 2)
{
    explodedraw += 1;
    draw_set_color(c_white);
    draw_set_alpha(0.75 - (explodedraw / 20));
    draw_circle(x, y, (sprite_width / 2) + explodedraw, false);
    draw_set_alpha(1);
}
