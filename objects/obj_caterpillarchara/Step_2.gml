scr_depth();
depth += 5;
nowx = x;
nowy = y;
moved = 0;
walk = 0;
runmove = 0;

if (obj_mainchara.x != remx[0])
    moved = 1;

if (obj_mainchara.y != remy[0])
    moved = 1;

if (moved == 1)
{
    blushtimer = 0;
    
    for (i = 50; i > 0; i -= 1)
    {
        remx[i] = remx[i - 1];
        remy[i] = remy[i - 1];
        facing[i] = facing[i - 1];
    }
    
    remx[0] = obj_mainchara.x;
    remy[0] = obj_mainchara.y;
    facing[0] = global.facing;
    
    if (usprite == spr_susieu_dark)
        x = remx[target] - 6;
    else
        x = remx[target] - 4;
    
    if (usprite == spr_susieu_dark)
        y = remy[target] - 16;
    else
        y = remy[target] - 12;
    
    if (abs(remx[target + 1] - remx[target]) > 2)
        runmove = 1;
    
    if (abs(remy[target + 1] - remy[target]) > 2)
        runmove = 1;
    
    dir = facing[target];
}

if (x != nowx)
    walk = 1;

if (y != nowy)
    walk = 1;

if (walk == 1)
    walkbuffer = 6;

if (walkbuffer > 3 && fun == 0)
{
    walktimer += 1.5;
    
    if (runmove == 1)
        walktimer += 1.5;
    
    if (runmove == 1)
    {
        if (walktimer >= 120)
            walktimer -= 120;
        
        if (walktimer < 20)
            image_index = 0;
        
        if (walktimer >= 20)
            image_index = 1;
        
        if (walktimer >= 40)
            image_index = 2;
        
        if (walktimer >= 60)
            image_index = 3;
        
        if (walktimer >= 80)
            image_index = 4;
        
        if (walktimer >= 100)
            image_index = 5;
    }
    else
    {
        if (walktimer >= 80)
            walktimer -= 80;
        
        if (walktimer < 20)
            image_index = 0;
        
        if (walktimer >= 20)
            image_index = 1;
        
        if (walktimer >= 40)
            image_index = 2;
        
        if (walktimer >= 60)
            image_index = 3;
    }
}

if (walkbuffer <= 0 && fun == 0)
{
    if (walktimer < 20)
        walktimer = 19;
    
    if (walktimer >= 20 && walktimer < 40)
        walktimer = 39;
    
    if (walktimer >= 40 && walktimer < 60)
        walktimer = 59;
    
    if (walktimer >= 60)
        walktimer = 79;
    
    image_index = 0;
}

walkbuffer -= 0.75;

if (x == (remx[target] - 6) || y == (remy[target] - 16))
{
    if (global.plot >= 240)
    {
        runup = spr_susierun_up;
        rundown = spr_susierun_down;
        runright = spr_susierun_right;
        runleft = spr_susierun_left;
    }
    else
    {
        runup = spr_susierun_up;
        rundown = spr_susierun_down_ch1;
        runright = spr_susierun_right_ch1;
        runleft = spr_susierun_left_ch1;
    }
}

if (fun == 0)
{
    if (facing[target] == 0)
    {
        if (runmove == 1)
            sprite_index = rundown;
        else
            sprite_index = dsprite;
    }
    
    if (facing[target] == 1)
    {
        if (runmove == 1)
            sprite_index = runright;
        else
            sprite_index = rsprite;
    }
    
    if (facing[target] == 2)
    {
        if (runmove == 1)
            sprite_index = runup;
        else
            sprite_index = usprite;
    }
    
    if (facing[target] == 3)
    {
        if (runmove == 1)
            sprite_index = runleft;
        else
            sprite_index = lsprite;
    }
}

if (dsprite == spr_ralseid && global.interact == 0 && fun == 0)
{
    distfrommcx = obj_mainchara.x - (x + 4);
    distfrommcy = obj_mainchara.y - (y + 12);
    
    if (abs(distfrommcy) <= 10 && abs(distfrommcx) <= 16)
    {
        if (distfrommcx <= 0 && global.facing == 1)
            blushtimer += 1;
        
        if (distfrommcx >= 0 && global.facing == 3)
            blushtimer += 1;
    }
    else
    {
        blushtimer = 0;
    }
    
    if (blushtimer >= 600)
    {
        if (sprite_index == dsprite)
            sprite_index = dsprite_blush;
        
        if (sprite_index == rsprite)
            sprite_index = rsprite_blush;
        
        if (sprite_index == usprite)
            sprite_index = usprite_blush;
        
        if (sprite_index == lsprite)
            sprite_index = lsprite_blush;
    }
}
else
{
    blushtimer = 0;
}
