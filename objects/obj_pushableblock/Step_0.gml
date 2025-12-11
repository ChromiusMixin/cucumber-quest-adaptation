scr_depth();

if (movecourse == 1)
{
    if (movedir == 1)
        x += 4;
    
    if (movedir == 0)
        y += 4;
    
    if (movedir == 2)
        y -= 4;
    
    if (movedir == 3)
        x -= 4;
    
    sprite_index = spr_npc_block;
    movetimer += 1;
    
    if (movetimer >= 10)
    {
        movetimer = 0;
        global.interact = 0;
        movecourse = 0;
    }
}

if (myinteract == 3)
{
    if (instance_exists(mydialoguer) == false)
    {
        global.interact = 0;
        myinteract = 0;
        
        with (obj_mainchara)
            onebuffer = 10;
    }
}
