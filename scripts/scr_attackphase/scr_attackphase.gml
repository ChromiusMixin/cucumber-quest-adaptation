function scr_attackphase()
{
    with (obj_battlecontroller)
    {
        techwon = 0;
        
        if (scr_monsterpop() == 0)
            techwon = 1;
        
        if (techwon == 0)
        {
            fightphase = 1;
            global.charturn = 3;
            
            if (global.charaction[0] == 4 || global.charaction[0] == 2)
                fightphase = 0;
            
            if (global.charaction[1] == 4 || global.charaction[1] == 2)
                fightphase = 0;
            
            if (global.charaction[2] == 4 || global.charaction[2] == 2)
                fightphase = 0;
            
            if (global.myfight == 4)
                fightphase = 1;
            
            if (fightphase == 1)
            {
                global.myfight = 1;
                instance_create(xx + 2, yy + 365, obj_attackpress);
            }
            else
            {
                global.myfight = 4;
                instance_create(0, 0, obj_spellphase);
            }
        }
        else
        {
            scr_wincombat();
        }
    }
}

function scr_hastruehit()
{
    for (var _i = 0; _i < 3; _i++)
    {
        with (global.monsterinstance[_i])
        {
            if (variable_instance_exists(id, "datk_con"))
            {
                if (directhit_con < 10)
                    return true;
            }
        }
    }
    
    return false;
}

function scr_isfirst()
{
    global.turntimer = 999999;
    
    if (global.monster[0] >= 1)
    {
        if (myself == 0)
            return true;
    }
    else if (global.monster[1] >= 1)
    {
        if (myself == 1)
            return true;
    }
    else if (global.monster[2] >= 1)
    {
        if (myself == 2)
            return true;
    }
    
    return false;
}

function scr_islast()
{
    if (global.monster[2] == 1)
    {
        if (myself == 2)
            return true;
    }
    else if (global.monster[1] == 1)
    {
        if (myself == 1)
            return true;
    }
    else if (global.monster[0] == 1)
    {
        if (myself == 0)
            return true;
    }
    
    return false;
}

function scr_nextdatk()
{
    var _tID = myself + 1;
    
    while (_tID < 3 && global.monster[_tID] == 0)
        _tID++;
    
    if (_tID >= 3)
    {
        scr_mnendturn();
    }
    else
    {
        with (global.monsterinstance[_tID])
        {
            attacked = false;
            datk_con = 1;
            datk_timer = 1;
        }
    }
}
