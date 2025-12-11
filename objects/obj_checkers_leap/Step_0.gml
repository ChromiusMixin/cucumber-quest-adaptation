if (leapmode == 0)
{
    if (jumpcon == 1)
    {
        if (vspeed >= 0)
        {
            if (y >= ((obj_growtangle.y + (obj_growtangle.sprite_height / 2)) - sprite_height))
            {
                snd_play(snd_impact);
                instance_create(0, 0, obj_shake);
                y = (obj_growtangle.y + (obj_growtangle.sprite_height / 2)) - sprite_height;
                jumptimer = 0;
                vspeed = 0;
                gravity = 0;
                hspeed = 0;
                sprite_index = spr_checkers_crouch;
                jumpcon = 0;
            }
        }
    }
    
    if (jumpcon == 3)
    {
        if (vspeed >= 0)
        {
            if (y >= (floory - 2))
            {
                snd_play(snd_impact);
                instance_create(0, 0, obj_shake);
                y = floory;
                x = xstart;
                vspeed = 0;
                gravity = 0;
                hspeed = 0;
                sprite_index = spr_checkers_crouch;
                jumpcon = 4;
            }
        }
    }
    
    if (jumpcon == 0)
    {
        sprite_index = spr_checkers_crouch;
        jumptimer += 1;
        jumpmax = 40;
        
        if (amt >= 1)
            jumpmax = 20;
        
        if (jumptimer >= jumpmax)
        {
            snd_play(snd_jump);
            floory = y;
            jumptimer = 0;
            jumpcon = 1;
            amt += 1;
            sprite_index = spr_checkers_leap;
            targetx = (obj_heart.x + 8) - (sprite_width / 2);
            vspeed = -7.5;
            
            if (amt == 1)
                vspeed = -8.5;
            
            gravity = 0.25;
            hspeed = (targetx - x) / 56;
            
            if (amt >= 4)
            {
                active = 0;
                jumpcon = 3;
                targetx = xstart;
                gravity = 0.5;
                hspeed = (targetx - x) / 32;
            }
        }
    }
    
    if (jumpcon == 4)
    {
        jumptimer += 1;
        
        if (jumptimer >= 20)
        {
            global.turntimer = -1;
            
            with (obj_checkers_enemy)
                visible = 1;
            
            instance_destroy();
        }
    }
}

if (leapmode == 1)
{
    if (jumpcon == 7)
    {
        jumptimer += 1;
        
        if (jumptimer >= 20)
        {
            with (obj_regularbullet)
            {
                active = 0;
                image_alpha -= 0.05;
            }
        }
        
        if (jumptimer >= 40)
        {
            global.turntimer = -1;
            
            with (obj_checkers_enemy)
                visible = 1;
            
            instance_destroy();
        }
    }
    
    if (jumpcon == 6)
    {
        if (y >= (floory - 2))
        {
            y = floory;
            x = xstart;
            vspeed = 0;
            gravity = 0;
            hspeed = 0;
            sprite_index = spr_checkers_crouch;
            jumpcon = 7;
        }
    }
    
    if (jumpcon == 0)
    {
        sprite_index = spr_checkers_crouch;
        jumptimer += 1;
        
        if (jumptimer >= 40)
        {
            floory = y;
            jumptimer = 0;
            jumpcon = 1;
            sprite_index = spr_checkers_leap;
            targetx = (obj_heart.x + 8) - (sprite_width / 2);
            hspeed = (targetx - x) / 34;
            vspeed = -8.5;
            snd_play(snd_jump);
            gravity = 0.25;
            amt += 1;
            
            if (amt >= 3)
            {
                active = 0;
                jumpcon = 6;
                targetx = xstart;
                gravity = 0.5;
                hspeed = (targetx - x) / 32;
            }
        }
    }
    
    if (jumpcon == 1)
    {
        if (vspeed >= 0)
        {
            gravity = 0;
            vspeed = 0;
            hspeed = 0;
            jumpcon = 2;
            snd_play(snd_boost);
        }
    }
    
    if (jumpcon == 2)
    {
        image_speed = 0.125;
        jumptimer += 1;
        
        if (jumptimer >= 30)
        {
            snd_play(snd_ultraswing);
            image_speed = 0;
            image_index = 0;
            vspeed = 16;
            jumpcon = 3;
            jumptimer = 0;
        }
    }
    
    if (jumpcon == 3)
    {
        a = scr_afterimage();
        a.image_alpha = 0.7;
        
        if (y >= ((obj_growtangle.y + (obj_growtangle.sprite_height / 2)) - sprite_height))
        {
            shrapmax = 6;
            snd_play(snd_impact);
            instance_create(0, 0, obj_shake);
            
            for (i = 0; i < shrapmax; i += 1)
            {
                shrap = instance_create(((x + (sprite_width / 2)) - 15) + (i * 5), obj_growtangle.y + (obj_growtangle.sprite_height / 2), obj_regularbullet);
                shrap.image_xscale = 1.5;
                shrap.image_yscale = 1.5;
                shrap.direction = 130 - random(10) - (70 * (i / (shrapmax - 1)));
                shrap.sprite_index = spr_checkershrapnel;
                shrap.speed = 3 + random(0.5);
                shrap.gravity = 0.0625;
                shrap.target = target;
                shrap.damage = damage;
            }
            
            y = (obj_growtangle.y + (obj_growtangle.sprite_height / 2)) - sprite_height;
            vspeed = 0;
            gravity = 0;
            hspeed = 0;
            sprite_index = spr_checkers_crouch;
            jumpcon = 0;
        }
    }
}

if (leapmode == 2)
{
    if (jumpcon == 0)
    {
        sprite_index = spr_checkers_magnificent;
        image_speed = 0.25;
        jumpcon = 1;
        magamt = 0;
    }
    
    if (jumpcon == 1)
    {
        if (image_index == 2)
            snd_play(snd_ultraswing);
        
        if (image_index >= 4)
        {
            image_index = 4;
            image_speed = 0;
            hspeed = -2;
            gravity = -0.03;
            jumpcon = 2;
            siner = 0;
        }
    }
    
    if (jumpcon == 2)
    {
        siner += 0.5;
        y += (sin(siner / 3) * 4);
        s_timer += 1;
        
        if (s_timer == 40)
            snd_play(snd_magicsprinkle);
        
        if (s_timer >= 48)
        {
            bul = instance_create(x + random(sprite_width / 2), (y + sprite_height) - 50, obj_regularbullet);
            bul.sprite_index = spr_checkershrapnel;
            bul.vspeed = 1.5;
            bul.image_xscale = 1.5;
            bul.image_yscale = 1.5;
            bul.depth = depth + 1;
            bul.gravity_direction = 135 + random(180);
            bul.gravity = 0.015;
            bul.target = target;
            bul.damage = damage;
            
            if (magamt == 6 || magamt == 12)
            {
                with (bul)
                {
                    gravity = 0;
                    move_towards_point(obj_heart.x + 8, obj_heart.y + 8, 3);
                }
            }
            
            s_timer = 42;
            magamt += 1;
        }
        
        if (y < (__view_get(e__VW.YView, 0) - 200))
        {
            speed = 0;
            gravity = 0;
            y = ystart - 100;
            x = xstart + 300;
            hspeed = -15;
            vspeed = 5;
            jumpcon = 3;
        }
    }
    
    if (jumpcon == 3)
    {
        magamt = 0;
        jumptimer += 1;
        
        if (jumptimer >= 20)
        {
            snd_play(snd_impact);
            instance_create(0, 0, obj_shake);
            amt += 1;
            s_timer = 0;
            x = xstart;
            y = ystart;
            hspeed = 0;
            vspeed = 0;
            jumpcon = 0;
            jumpcon = 4;
            jumptimer = 0;
            sprite_index = spr_checkers_idle;
            image_index = 0;
            image_speed = 0;
        }
    }
    
    if (jumpcon == 4)
    {
        jumptimer += 1;
        
        if (jumptimer >= 40)
        {
            with (obj_regularbullet)
            {
                active = 0;
                image_alpha -= 0.05;
            }
        }
        
        if (jumptimer >= 60)
        {
            global.turntimer = -1;
            instance_destroy();
            
            with (obj_checkers_enemy)
                visible = 1;
        }
    }
}

if (leapmode == 3)
{
    with (obj_regularbullet)
    {
        image_xscale += 0.005;
        image_yscale += 0.005;
    }
    
    if (jumpcon == 0)
    {
        sprite_index = spr_checkers_leg;
        image_index = 0;
        image_speed = 0.25;
        jumpcon = 1;
    }
    
    if (jumpcon == 1)
    {
        if (image_index == 3)
        {
            snd_play(snd_swing);
            snd_play(snd_magicsprinkle);
            
            for (i = 0; i < 4; i += 1)
            {
                bul = instance_create(x - 40, y + 100, obj_regularbullet);
                bul.sprite_index = spr_checkershrapnel;
                bul.direction = (point_direction(bul.x, bul.y, obj_heart.x + 8, obj_heart.y + 8) - (10 * i)) + random(i * 20);
                bul.speed = 1.75 + random(0.9);
                bul.target = target;
                bul.damage = damage;
            }
        }
        
        if (image_index >= 5)
        {
            image_index = 5;
            image_speed = 0;
            jumpcon = 2;
        }
    }
    
    if (jumpcon == 2)
    {
        jumptimer += 1;
        
        if (jumptimer >= 20)
        {
            sprite_index = spr_checkers_idle;
            image_index = 0;
        }
        
        if (jumptimer >= 40)
        {
            jumptimer = 0;
            jumpcon = 0;
            amt += 1;
            
            if (amt >= 4)
            {
                jumpcon = 3;
                jumptimer = 0;
            }
        }
    }
    
    if (jumpcon == 3)
    {
        jumptimer += 1;
        
        if (jumptimer >= 40)
        {
            with (obj_regularbullet)
            {
                image_alpha -= 0.05;
                active = 0;
            }
        }
        
        if (jumptimer >= 60)
        {
            global.turntimer = -1;
            instance_destroy();
            
            with (obj_checkers_enemy)
                visible = 1;
        }
    }
}

if (leapmode == 4)
{
    if (jumpcon == 1)
    {
        if (y >= (floory - 2))
        {
            y = floory;
            vspeed = 0;
            gravity = 0;
            hspeed = 0;
            sprite_index = spr_checkers_crouch;
            jumpcon = 0;
            jumptimer = 20;
        }
    }
    
    if (jumpcon == 3)
    {
        if (y >= (floory - 2))
        {
            y = floory;
            x = xstart;
            vspeed = 0;
            gravity = 0;
            hspeed = 0;
            sprite_index = spr_checkers_crouch;
            jumpcon = 4;
        }
    }
    
    if (jumpcon == 0)
    {
        jumptimer += 1;
        
        if (jumptimer >= 32)
        {
            floory = y;
            jumptimer = 0;
            jumpcon = 1;
            sprite_index = spr_checkers_leap;
            targetx = (obj_heart.x + 8) - (sprite_width / 2);
            vspeed = -6;
            gravity = 0.25;
            hspeed = (targetx - x) / 48;
            amt += 1;
            
            if (amt >= 4)
            {
                active = 0;
                jumpcon = 3;
                jumptimer = 0;
                targetx = xstart;
                gravity = 0.5;
                hspeed = (targetx - x) / 24;
            }
        }
    }
    
    if (jumpcon == 4)
    {
        jumptimer += 1;
        
        if (jumptimer >= 20)
        {
            global.turntimer = -1;
            
            with (obj_checkers_enemy)
                visible = 1;
            
            instance_destroy();
        }
    }
}

if (grazed == 1)
{
    grazetimer += 1;
    
    if (grazetimer >= 20)
    {
        grazetimer = 0;
        grazed = 0;
    }
}
