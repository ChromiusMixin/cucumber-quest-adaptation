btimer += 1;

if (type == 0)
{
    if (btimer >= (timermax * ratio))
    {
        btimer = 0;
        dir = 30 + random(120);
        radius = 140 + random(80);
        xx = lengthdir_x(radius, dir);
        yy = lengthdir_y(radius, dir);
        bm = instance_create(obj_heart.x + 8 + xx, obj_heart.y + 8 + yy, obj_dbullet_maker);
        
        if (bm.y < (__view_get(e__VW.YView, 0) + 40))
            bm.y = __view_get(e__VW.YView, 0) + 40;
        
        bm.damage = damage;
        bm.target = target;
    }
}

if (type == 1)
{
    if (btimer >= (18 * ratio))
    {
        btimer = 0;
        radius = 140 + random(40);
        yy = radius * side;
        xx = -100 + random(200);
        num = choose(0, 1, 2, 3);
        
        if (num == 3)
            xx = -10 + random(20);
        
        d = instance_create(obj_heart.x + 8 + xx, obj_heart.y + 8 + yy, obj_dbullet_vert);
        d.damage = damage;
        d.target = target;
    }
}

if (type == 2)
{
    if (btimer >= (40 * ratio))
    {
        xx = __view_get(e__VW.XView, 0) - 20;
        
        if (side == 1)
            xx = __view_get(e__VW.XView, 0) + 660;
        
        yy = miny + random(maxy - miny);
        bul = instance_create(xx, yy, obj_clubsbullet);
        bul.speed = 6;
        bul.damage = damage;
        bul.target = target;
        
        if (side == 1)
        {
            bul.direction = 180;
            bul.image_angle = 180;
        }
        
        btimer = 0;
    }
}

if (type == 3)
{
    if (btimer >= (40 * ratio))
    {
        btimer = 0;
        
        if (side == 1)
            dir = choose(225, 315);
        
        if (side == -1)
            dir = choose(45, 135);
        
        radius = 400;
        xx = lengthdir_x(radius, dir);
        yy = lengthdir_y(radius, dir);
        d = instance_create(obj_heart.x + 8 + xx, obj_heart.y + 8 + yy, obj_clubsbullet_dark);
        d.direction = dir + 180;
        d.speed = 10;
        d.friction = 0.25;
        d.damage = damage;
        d.target = target;
        
        with (d)
            image_angle = direction;
        
        if (side == 1)
            side = -1;
        else
            side = 1;
    }
}

if (type == 4)
{
    if (btimer >= (60 * ratio))
    {
        btimer = 0;
        
        if (side == -1)
            dir = 225;
        
        if (side == 1)
            dir = 315;
        
        radius = 400;
        xx = lengthdir_x(radius, dir);
        yy = lengthdir_y(radius, dir);
        d = instance_create(obj_heart.x + 8 + xx, obj_heart.y + 8 + yy, obj_clubsbullet_dark);
        d.damage = damage;
        d.target = target;
        d.direction = dir + 180;
        d.speed = 10;
        d.friction = 0.25;
        
        with (d)
            image_angle = direction;
        
        if (side == 1)
            side = -1;
        else
            side = 1;
    }
}

if (type == 6)
{
    xx = __view_get(e__VW.XView, 0);
    yy = __view_get(e__VW.YView, 0);
    
    if (made == 0)
    {
        d = instance_create(300 + xx, -20 + yy, obj_dicebul);
        e = instance_create(360 + xx, -60 + yy, obj_dicebul);
        d.target = target;
        d.damage = damage;
        e.target = target;
        e.damage = damage;
        made = 1;
    }
}

if (type == 7)
{
    xx = __view_get(e__VW.XView, 0);
    yy = __view_get(e__VW.YView, 0);
    
    if (made < 3 && btimer >= 30)
    {
        btimer = 0;
        mine = instance_create(300 + xx, -20 + yy, obj_dicebul);
        mine.damage = damage;
        mine.target = target;
        
        with (obj_dicebul)
        {
            gravity = 0.0375 + gravbonus;
            image_xscale = 1;
            image_yscale = 1;
        }
        
        made += 1;
    }
}

if (type == 8)
{
    xx = __view_get(e__VW.XView, 0);
    yy = __view_get(e__VW.YView, 0);
    
    if (made < 4 && btimer >= 30)
    {
        btimer = 0;
        mine = instance_create(300 + xx, yy - 40, obj_dicebul);
        mine.damage = damage;
        mine.target = target;
        
        with (mine)
        {
            hspeed = 0.6 + random(0.6);
            hspeed *= choose(-1, 1);
            gravbonus = random(0.025);
            gravity = 0.0375 + gravbonus;
            image_xscale = 0.7;
            image_yscale = 0.7;
        }
        
        made += 1;
    }
}

if (type == 10)
{
    xx = __view_get(e__VW.XView, 0);
    yy = __view_get(e__VW.YView, 0);
    
    if (btimer >= 30)
    {
        btimer = 0;
        dicecomet = instance_create(choose(xx + 680, xx - 100), 0 - random(100), obj_dicebul);
        dicecomet.damage = damage;
        dicecomet.target = target;
        
        with (dicecomet)
        {
            image_xscale = 2;
            image_yscale = 2;
            
            if (x > (__view_get(e__VW.XView, 0) + 320))
                hspeed = -3 - random(0.5);
            else
                hspeed = 3 + random(0.5);
            
            vspeed = 1 + random(1);
        }
    }
}

if (type == 11)
{
    xx = __view_get(e__VW.XView, 0);
    yy = __view_get(e__VW.YView, 0);
    
    if (made < 4 && btimer >= 30)
    {
        btimer = 0;
        bb = instance_create(300 + xx, -20 + yy, obj_dicebul);
        bb.damage = damage;
        bb.target = target;
        
        with (obj_dicebul)
        {
            gravity = 0.0375 + gravbonus;
            image_xscale = 1;
            image_yscale = 1;
        }
        
        if (made == 3)
        {
            with (bb)
            {
                green = 1;
                image_blend = c_lime;
            }
        }
        
        made += 1;
    }
}

if (type == 12)
{
    xx = __view_get(e__VW.XView, 0);
    yy = __view_get(e__VW.YView, 0);
    
    if (made == 0)
    {
        db = instance_create(320 + xx, -20 + yy, obj_dicebul);
        db.image_xscale = 1;
        db.image_yscale = 1;
        db.damage = damage;
        db.target = target;
        made = 1;
    }
}

if (type == 13)
{
    xx = __view_get(e__VW.XView, 0);
    yy = __view_get(e__VW.YView, 0);
    
    if (made < 2 && btimer >= 20)
    {
        db[made] = instance_create(320 + xx, -20 + yy, obj_dicebul);
        db[made].image_xscale = 1;
        db[made].image_yscale = 1;
        db[made].damage = damage;
        db[made].target = target;
        
        if (made == 1)
        {
            with (db[1])
            {
                green = 1;
                image_blend = c_lime;
            }
            
            db[1].hspeed = -db[0].hspeed;
        }
        
        made += 1;
    }
}

if (type == 14)
{
    if (btimer >= 20)
    {
        xx = __view_get(e__VW.XView, 0) - 20;
        
        if (side == 1)
            xx = __view_get(e__VW.XView, 0) + 660;
        
        yy = miny + random(maxy - miny);
        bul = instance_create(xx, yy, obj_regularbullet);
        bul.sprite_index = spr_smallbullet;
        bul.hspeed = -4;
        bul.damage = damage;
        bul.target = target;
        
        if (side == 1)
        {
            bul.direction = 180;
            bul.image_angle = 180;
        }
        
        btimer = 0;
    }
}

if (type == 20 || type == 22)
{
    if (instance_exists(obj_lancerboss3))
    {
        if (made == 0)
        {
            snd_play(snd_lancerwhistle);
            whistletimer = 0;
            made = 1;
            
            with (obj_lancerboss3)
                idlesprite = spr_lancerbike_l;
        }
        
        if (made == 1)
        {
            whistletimer += 1;
            
            if (whistletimer >= 60)
            {
                with (obj_lancerboss3)
                    idlesprite = spr_lancerbike;
                
                made = 2;
            }
        }
    }
    
    if (type == 20)
        bmax = 16;
    
    if (type == 22)
        bmax = 12;
    
    if (btimer >= bmax)
    {
        radius = -80 + random(160) + 8;
        fallspade = instance_create(obj_heart.x + radius, __view_get(e__VW.YView, 0) - 20, obj_regularbullet);
        fallspade.damage = damage;
        fallspade.target = target;
        
        with (fallspade)
        {
            sprite_index = spr_spadebullet;
            image_angle = 270;
            gravity = 0.075;
            speed = 0;
            vspeed = 1.5;
            hspeed = -0.3 + random(0.6);
        }
        
        if (side == 1)
            side = -1;
        else
            side = 1;
        
        btimer = 0;
    }
}

if (type == 21 || type == 23 || type == 25)
{
    if (type == 21)
        bmax = 18;
    
    if (type == 23)
        bmax = 14;
    
    if (type == 25)
        bmax = 8;
    
    with (obj_regularbullet)
        image_alpha += 0.1;
    
    if (btimer >= bmax)
    {
        if (side == 0)
            radius = 80;
        else
            radius = 560;
        
        sidespade[side] = instance_create(__view_get(e__VW.XView, 0) + radius, (obj_growtangle.y - (obj_growtangle.sprite_height / 2)) + random(obj_growtangle.sprite_height), obj_regularbullet);
        
        if (side == 0)
            sidespade[side].direction = 0;
        
        if (side == 1)
            sidespade[side].direction = 180;
        
        sidespade[side].image_alpha = 0;
        sidespade[side].damage = damage;
        sidespade[side].target = target;
        
        with (sidespade[side])
        {
            sprite_index = spr_spadebullet;
            speed = 2.5;
            friction = -0.025;
            image_angle = direction;
        }
        
        if (side == 1)
            side = 0;
        else
            side = 1;
        
        btimer = 0;
    }
}

if (type == 24)
{
    bmax = difficulty + 10;
    
    with (obj_regularbullet)
    {
        if (instance_exists(obj_heart))
        {
            xdiff = x - (obj_heart.x + 8);
            
            if (y >= (obj_heart.y - 240) && abs(xdiff) <= 30)
            {
                if (xdiff >= 0 && hspeed < 2.5)
                    hspeed += 0.1;
                
                if (xdiff < 0 && hspeed > -2.5)
                    hspeed -= 0.1;
            }
            
            if (y >= (obj_heart.y - 100))
            {
                if (abs(xdiff) <= 60)
                {
                    if (xdiff >= 0)
                    {
                        if (hspeed < 1)
                            hspeed += 0.0625;
                        
                        if (xdiff < 10)
                            x += 1.5;
                        
                        if (xdiff < 20)
                            x += 1.5;
                        
                        if (xdiff < 30)
                            x += 1.5;
                        
                        if (xdiff < 40)
                            x += 1;
                        
                        if (xdiff < 60)
                            x += 0.5;
                    }
                    else
                    {
                        if (hspeed > -1)
                            hspeed -= 0.125;
                        
                        if (xdiff > -10)
                            x -= 1.5;
                        
                        if (xdiff > -20)
                            x -= 1.5;
                        
                        if (xdiff > -30)
                            x -= 1.5;
                        
                        if (xdiff > -40)
                            x -= 1;
                        
                        if (xdiff > -60)
                            x -= 0.5;
                    }
                }
            }
        }
    }
    
    if (btimer >= bmax)
    {
        radius = -80 + random(160) + 8;
        fallspade = instance_create(obj_heart.x + radius, -20, obj_regularbullet);
        fallspade.damage = damage;
        fallspade.target = target;
        
        with (fallspade)
        {
            sprite_index = spr_spadebullet;
            image_angle = 270;
            gravity = 0.075;
            speed = 0;
            vspeed = 1.5;
            hspeed = -0.3 + random(0.6);
        }
        
        if (side == 1)
            side = -1;
        else
            side = 1;
        
        btimer = 0;
    }
}

if (type == 26)
{
    with (obj_regularbullet)
    {
        if (sprite_index == spr_blockbullet)
            image_alpha += 0.05;
    }
    
    timer = 70;
    
    if (scr_monsterpop() == 2)
        timer = 105;
    
    if (scr_monsterpop() == 3)
        timer = 154;
    
    if (btimer >= timer)
    {
        x_c = __view_get(e__VW.XView, 0) + 300;
        y_c = __view_get(e__VW.YView, 0) + 140;
        x_o = 200;
        y_o = -60;
        y_o_o = -80 + random(160);
        y_o += y_o_o;
        v_s = -y_o_o / 160;
        h_s = -2;
        
        for (i = 0; i < 2; i += 1)
        {
            upallow = choose(0, 1, 2);
            rightallow = choose(0, 1, 2);
            
            for (j = 0; j < 2; j += 1)
            {
                bul[i][j] = instance_create(x_c + x_o + (i * 80), y_c + y_o + (j * 80), obj_regularbullet);
                scr_bullet_inherit(bul[i][j]);
                
                if (j == upallow)
                    bul[i][j].y += choose(0, 40);
                
                if (i == 1 && j == 1)
                {
                    bul[i][j].x += choose(0, -40);
                    bul[i][j].y = y_c + y_o + choose(0, 40) + (j * 80);
                }
                
                bul[i][j].hspeed = h_s / 2;
                bul[i][j].vspeed = v_s / 2;
                bul[i][j].friction = -0.0175;
                
                if (scr_monsterpop() >= 2)
                    bul[i][j].friction = -0.025;
                
                bul[i][j].sprite_index = spr_blockbullet;
                bul[i][j].image_alpha = 0;
            }
        }
        
        btimer = 0;
    }
}

if (type == 27)
{
    timer = 30;
    
    if (scr_monsterpop() == 2)
        timer = 51;
    
    if (scr_monsterpop() == 3)
        timer = 69;
    
    lx = (obj_battlesolid.x - (obj_battlesolid.sprite_width / 2)) + 8;
    ly = (obj_battlesolid.y + (obj_battlesolid.sprite_height / 2)) - 15;
    
    if (btimer >= timer)
    {
        prevmade = made;
        made = choose(0, 1, 2, 3);
        
        if (made == prevmade)
            made = choose(0, 1, 2, 3);
        
        btimer = 0;
        block = instance_create(100, 100, obj_blockbullet_fall);
        block.xpos = made;
        scr_bullet_inherit(block);
        testblock = collision_point(lx + (made * block.sprite_width) + 8, ly - (block.sprite_height * 3) - 10, obj_blockbullet_fall, false, true);
        
        if (testblock > 1)
        {
            if (testblock.halt == 1)
            {
                with (block)
                    instance_destroy();
            }
        }
    }
    
    legoa = collision_point(lx + 15, ly, obj_blockbullet_fall, false, true);
    legob = collision_point(lx + 15 + 34, ly, obj_blockbullet_fall, false, true);
    legoc = collision_point(lx + 15 + 68, ly, obj_blockbullet_fall, false, true);
    legod = collision_point(lx + 15 + 102, ly, obj_blockbullet_fall, false, true);
    
    if (legoa > 1 && legob > 1 && legoc > 1 && legod > 1)
    {
        with (legoa)
            con = 3;
        
        with (legob)
            con = 3;
        
        with (legoc)
            con = 3;
        
        with (legod)
            con = 3;
    }
}

if (type == 30)
{
    bmax = 68;
    
    if (scr_monsterpop() == 2)
        bmax = 92;
    
    if (scr_monsterpop() == 3)
        bmax = 120;
    
    if (btimer >= bmax)
    {
        rab = instance_create(obj_battlesolid.x + obj_battlesolid.sprite_width, obj_battlesolid.y, obj_rabbitbullet);
        scr_bullet_inherit(rab);
        btimer = 0;
    }
}

if (type == 32)
{
    skiprab = 0;
    
    if (instance_exists(obj_carrotthrower))
    {
        skiprab = 1;
        type = 30;
    }
    
    if (made == 0 && skiprab == 0)
    {
        made = 1;
        rab = instance_create(obj_battlesolid.x, obj_battlesolid.y, obj_carrotthrower);
        scr_bullet_inherit(rab);
        instance_destroy();
    }
}

if (type >= 80 && type <= 84)
{
    maxtimer = 80;
    
    if (type == 81)
        maxtimer = 60;
    
    if (type == 82)
        maxtimer = 52;
    
    if (type == 83)
        maxtimer = 38;
    
    if (type == 84)
        maxtimer = 28;
    
    if (btimer >= maxtimer)
    {
        btimer = 0;
        lx = obj_battlesolid.x;
        ly = obj_battlesolid.y;
        side = choose(0, 1);
        
        if (type == 81 || type == 84)
        {
            side = made;
            
            if (made == 0)
                made = 1;
            else
                made = 0;
        }
        
        if (side == 0)
        {
            puzz1 = instance_create(obj_heart.x + 8, ly - 150, obj_jigsawbullet);
            puzz1.side = 3;
            puzz2 = instance_create(obj_heart.x + 8, ly + 150, obj_jigsawbullet);
            puzz2.side = 1;
            
            if (type == 82)
                puzz1.timer = 20;
            
            if (type == 82)
                puzz2.timer = 20;
            
            if (type == 83 || type == 84)
                puzz1.timer = 30;
            
            if (type == 83 || type == 84)
                puzz2.timer = 30;
            
            scr_bullet_inherit(puzz1);
            scr_bullet_inherit(puzz2);
        }
        
        if (side == 1)
        {
            puzz1 = instance_create(lx + 150, obj_heart.y + 8, obj_jigsawbullet);
            puzz1.side = 2;
            puzz2 = instance_create(lx - 150, obj_heart.y + 8, obj_jigsawbullet);
            puzz2.side = 0;
            
            if (type == 82)
                puzz1.timer = 20;
            
            if (type == 82)
                puzz2.timer = 20;
            
            if (type == 83)
                puzz1.timer = 30;
            
            if (type == 83)
                puzz2.timer = 30;
            
            scr_bullet_inherit(puzz1);
            scr_bullet_inherit(puzz2);
        }
        
        if (type == 83)
        {
            with (obj_jigsawbullet)
                joker = 1;
        }
    }
}

if (type == 85)
{
    if (made == 0)
    {
        cheer = 0;
        cheertimer = 0;
        remhp[0] = global.hp[global.char[0]];
        remhp[1] = global.hp[global.char[1]];
        
        with (obj_susieenemy)
            visible = 0;
        
        with (obj_lancerboss3)
            visible = 0;
        
        fakelan = instance_create(__view_get(e__VW.XView, 0) + 580, obj_battlesolid.y + 160, obj_bulletparent);
        
        with (fakelan)
        {
            depth += 1;
            image_xscale = 2;
            image_yscale = 2;
            visible = 1;
            sprite_index = spr_lancerbike;
            active = 0;
            image_speed = 0.1;
        }
        
        fakesus = instance_create(__view_get(e__VW.XView, 0) + 530, obj_battlesolid.y - 40, obj_bulletparent);
        
        with (fakesus)
        {
            image_xscale = 2;
            image_yscale = 2;
            visible = 1;
            sprite_index = spr_susie_enemy_attack;
            active = 0;
            image_speed = 0;
        }
        
        made = 1;
    }
    
    if (made == 1)
    {
        if (instance_exists(fakelan))
        {
            if (cheer == 0)
            {
                if (global.inv > 20)
                {
                    cheer = 1;
                    snd_play(snd_lancerwhistle);
                    
                    with (fakelan)
                        sprite_index = spr_lancerbike_l;
                }
            }
            
            if (cheer == 1)
            {
                cheertimer += 1;
                
                if (cheertimer >= 60)
                {
                    cheertimer = 0;
                    
                    with (fakelan)
                        sprite_index = spr_lancerbike;
                    
                    cheer = 0;
                }
            }
        }
        
        if (instance_exists(fakesus))
        {
            with (fakesus)
            {
                if (image_index < 5)
                    image_index += 0.166;
            }
        }
    }
    
    if (made == 1 && global.turntimer <= 20)
    {
        with (fakesus)
            visible = 0;
        
        with (fakelan)
            visible = 0;
        
        with (obj_susieenemy)
            visible = 1;
        
        with (obj_lancerboss3)
            visible = 1;
    }
    
    if (btimer >= 54 && instance_exists(obj_battlesolid) && global.turntimer > 20)
    {
        with (fakesus)
        {
            image_index = 0;
            snd_play(snd_laz_c);
        }
        
        for (i = 0; i < 1; i += 1)
        {
            axe[i] = instance_create(__view_get(e__VW.XView, 0) + 540, obj_battlesolid.y, obj_axebullet);
            scr_bullet_inherit(axe[i]);
        }
        
        btimer = 0;
    }
}
