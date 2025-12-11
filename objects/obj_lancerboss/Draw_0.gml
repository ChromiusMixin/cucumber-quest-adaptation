if (state == 3)
{
    hurttimer -= 1;
    
    if (hurttimer < 0)
    {
        state = 0;
    }
    else
    {
        if (global.monster[myself] == 0)
        {
            if (global.plot < 22)
                global.plot = 22;
            
            hspeed = 6;
            turnt -= 4;
            vspeed = -2;
        }
        
        hurtshake += 0.5;
        
        if (hurtshake > 1)
        {
            if (shakex > 0)
                shakex -= 1;
            
            if (shakex < 0)
                shakex += 1;
            
            shakex = -shakex;
            hurtshake = 0;
        }
        
        draw_sprite_ext(spr_lancerbike_hurt, hurttimer / 4, x + shakex, y, 2, 2, 0, image_blend, 1);
    }
}

if (state == 4)
{
    dodgetimer += 0.5;
    dodgeamt = cos((dodgetimer * 2 * pi) / 15) * 2;
    draw_sprite_ext(spr_lancerbike_l, 0, x, y, dodgeamt, 2, 0, image_blend, 1);
    
    if (dodgetimer >= 15)
        state = 0;
}

if (state == 0)
{
    siner += 0.5;
    thissprite = spr_lancerbike;
    
    if (global.mercymod[myself] >= global.mercymax[myself])
        thissprite = spr_lancerbike;
    
    draw_sprite_ext(thissprite, siner / 5, x, y, 2, 2, 0, image_blend, 1);
    
    if (flash == 1)
    {
        fsiner += 0.5;
        d3d_set_fog(true, c_white, 0, 1);
        draw_sprite_ext(thissprite, siner / 5, x, y, 2, 2, 0, image_blend, (-cos(fsiner / 5) * 0.4) + 0.6);
        d3d_set_fog(false, c_black, 0, 0);
    }
}

if (becomeflash == 0)
    flash = 0;

becomeflash = 0;
