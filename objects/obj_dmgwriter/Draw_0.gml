if (delaytimer < delay)
{
    with (obj_dmgwriter)
        killtimer = 0;
}

delaytimer += 1;

if (delaytimer == delay)
{
    vspeed = -2.5 - random(1);
    hspeed = 5;
    vstart = vspeed * 2;
    flip = 90;
}

if (delaytimer >= delay)
{
    draw_set_color(c_white);
    
    if (type == 0)
        draw_set_color(lightb);
    
    if (type == 1)
        draw_set_color(lightf);
    
    if (type == 2)
        draw_set_color(lightg);
    
    if (type == 3)
        draw_set_color(c_lime);
    
    if (type == 4)
        draw_set_color(c_red);
    
    message = specialmessage;
    
    if (damage == 0)
        message = 1;
    
    if (type == 4)
        message = 2;
    
    draw_set_font(global.damagefont);
    
    if (hspeed > 0)
        hspeed -= 0.25;
    
    if (hspeed < 0)
        hspeed += 0.25;
    
    if (abs(hspeed) < 0.5)
        hspeed = 0;
    
    if (message == 0)
    {
        draw_set_alpha(1 - kill);
        draw_set_halign(fa_right);
        
        if (spec == 0)
            draw_text_transformed(x + 30, y, string_hash_to_newline(string(damage)), 2 - stretch, stretch + kill, 0);
        
        if (spec == 1)
            draw_text_transformed(x + 30, y, string_hash_to_newline(string(damage)), 2 - stretch, stretch + kill, 90);
        
        draw_set_halign(fa_left);
        draw_set_alpha(1);
    }
    else
    {
        if (message == 1)
            draw_sprite_ext(spr_battlemsg, 0, x + 30, y, 2 - stretch, stretch + kill, 0, draw_get_color(), 1 - kill);
        
        if (message == 2)
            draw_sprite_ext(spr_battlemsg, 1, x + 30, y, 2 - stretch, stretch + kill, 0, c_red, 1 - kill);
        
        if (message == 3)
            draw_sprite_ext(spr_battlemsg, 2, x + 30, y, 2 - stretch, stretch + kill, 0, c_lime, 1 - kill);
        
        if (message == 4)
            draw_sprite_ext(spr_battlemsg, 3, x + 30, y, 2 - stretch, stretch + kill, 0, c_lime, 1 - kill);
    }
    
    if (bounces < 2)
        vspeed += 0.5;
    
    if (y > ystart && bounces < 2 && killactive == 0)
    {
        y = ystart;
        vspeed = vstart / 1.5;
        bounces += 1;
    }
    
    if (bounces >= 2 && killactive == 0)
    {
        vspeed = 0;
        y = ystart;
    }
    
    if (stretchgo == 1)
        stretch += 0.2;
    
    if (stretch >= 1.2)
    {
        stretch = 1;
        stretchgo = 0;
    }
    
    killtimer += 1;
    
    if (killtimer > 70)
        killactive = 1;
    
    if (killactive == 1)
    {
        kill += 0.04;
        y -= 2;
    }
    
    if (kill > 1)
        instance_destroy();
}
