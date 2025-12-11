function scr_mnendturn()
{
    scr_cleardatk();
    
    if (global.char[0] == 2)
        sus = 0;
    
    if (global.char[1] == 2)
        sus = 1;
    
    if (global.char[2] == 2)
        sus = 2;
    
    scr_runstatus_monster();
    techwon = 0;
    
    if (scr_monsterpop() == 0)
        techwon = 1;
    
    if (techwon == 0)
    {
        scr_battlecursor_memory_reset();
        global.mnfight = 0;
        global.myfight = 0;
        global.bmenuno = 0;
        global.charturn = 0;
        skip = 0;
        
        if (global.charmove[0] == 0 || global.charauto[global.char[0]] == 1)
            global.charturn = 1;
        
        if (global.charturn == 1)
        {
            if (global.charmove[1] == 0 || global.charauto[global.char[1]] == 1)
                global.charturn = 2;
        }
        
        if (global.charturn == 2)
        {
            if (global.charmove[2] == 0 || global.charauto[global.char[2]] == 1)
                skip = 1;
        }
        
        for (i = 0; i < 3; i += 1)
        {
            global.acting[i] = 0;
            global.temptension[i] = global.tension;
            global.charspecial[i] = 0;
            global.targeted[i] = 0;
            global.charaction[i] = 0;
            global.faceaction[i] = 0;
        }
        
        with (obj_monsterparent)
        {
            attacked = 0;
            talked = 0;
            acting = 0;
        }
        
        scr_runstatus_hero();
        
        if (skip == 1)
        {
            if (global.char[0] == 2 && global.charauto[2] == 1)
            {
                global.acting[0] = 1;
                global.myfight = 3;
            }
            
            scr_endturn();
        }
        
        for (i = 0; i < 12; i += 1)
        {
            for (j = 0; j < 3; j += 1)
                tempitem[i][j] = global.item[i];
        }
    }
    else
    {
        scr_wincombat();
    }
}

function scr_cleardatk()
{
    with (obj_darkener)
        darken = 0;
    
    with (obj_heroparent)
    {
        darkify = 0;
        darkentimer = floor(darkentimer / 6) * 3;
    }
    
    for (var _i = 0; _i < 3; _i++)
    {
        with (global.monsterinstance[_i])
        {
            if (variable_instance_exists(id, "datk_mark") && datk_mark != -4)
            {
                with (datk_mark)
                    instance_destroy();
                
                datk_mark = -4;
                visible = true;
            }
            
            if (variable_instance_exists(id, "datk_con"))
            {
                attacked = false;
                datk_con = 0;
                datk_timer = 20;
            }
        }
    }
}

function scr_runstatus_hero()
{
    var _partysize = (global.char[0] > 0) + (global.char[1] > 0) + (global.char[2] > 0);
    damagesnd = false;
    
    for (var i = 0; i < _partysize; i++)
    {
        for (h = 0; h < array_length(global.battle_effects[i]); h++)
        {
            var _eff = global.battle_effects[i][h];
            
            if (_eff.turnsleft > 0)
            {
                if (_eff.turn != -4)
                    _eff.turn();
            }
            
            _eff.turnsleft--;
            
            if (_eff.turnsleft <= 0)
            {
                if (_eff.stop != -4)
                    _eff.stop();
                
                array_delete(global.battle_effects[i], h, 1);
                h--;
            }
        }
    }
    
    if (damagesnd)
        snd_play(snd_hurt1);
}

function scr_runstatus_monster()
{
    for (var i = 0; i < 3; i++)
    {
        if (global.monster[i] > 0)
        {
            for (h = 0; h < array_length(global.monster_effects[i]); h++)
            {
                var _eff = global.monster_effects[i][h];
                
                if (_eff.turnsleft > 0)
                {
                    if (_eff.turn != -4)
                        _eff.turn();
                }
                
                _eff.turnsleft--;
                
                if (_eff.turnsleft <= 0)
                {
                    if (_eff.stop != -4)
                        _eff.stop();
                    
                    array_delete(global.monster_effects[i], h, 1);
                    h--;
                }
            }
        }
        else
        {
            global.monster_effects[i] = [];
        }
    }
}

function scr_applystatus_hero(arg0 = 0, arg1 = "", arg2 = 1)
{
    var _haseffect = 0;
    var _char = arg0;
    var _effecttype = string_lower(arg1);
    var _turnamt = arg2;
    var _chareffects = global.battle_effects[_char];
    var _effectID = -1;
    var _reteff = -4;
    
    for (i = 0; i < array_length(_chareffects); i++)
    {
        if (_chareffects[i].name == _effecttype)
        {
            _haseffect = 1;
            _effectID = i;
        }
    }
    
    if (!_haseffect)
    {
        _effectID = array_length(_chareffects);
        array_push(global.battle_effects[_char], new statuseff(_effecttype, _char, _turnamt));
        
        if (global.battle_effects[_char][_effectID].init)
            global.battle_effects[_char][_effectID].init();
        
        _reteff = global.battle_effects[_char][_effectID];
    }
    else
    {
        global.battle_effects[_char][_effectID].turnsleft = _turnamt;
        _reteff = global.battle_effects[_char][_effectID];
    }
    
    return _reteff;
}

function scr_checkstatus_hero(arg0 = 0, arg1 = "")
{
    var _haseffect = 0;
    var _char = arg0;
    var _effecttype = string_lower(arg1);
    var _chareffects = global.battle_effects[_char];
    
    for (i = 0; i < array_length(_chareffects); i++)
    {
        if (_chareffects[i].name == _effecttype)
            _haseffect = 1;
    }
    
    return _haseffect;
}

function scr_downstatus(arg0 = 0)
{
    var _char = arg0;
    var _chareffects = global.battle_effects[_char];
    
    for (i = 0; i < array_length(_chareffects); i++)
    {
        var _eff = global.battle_effects[_char][i];
        
        if (_chareffects[i].endwhendown)
        {
            if (_eff.stop != -4)
                _eff.stop();
            
            array_delete(global.battle_effects[_char], i, 1);
            i--;
        }
    }
}

function statuseff(arg0 = "", arg1 = 0, arg2 = 1) constructor
{
    name = arg0;
    char = arg1;
    turnsleft = arg2;
    init = -4;
    turn = -4;
    stop = -4;
    endwhendown = true;
    
    switch (name)
    {
        case "coolspell":
            init = function(arg0 = char)
            {
                var _baseAT = global.battleat_rem[arg0];
                var _baseMG = global.battlemag_rem[arg0];
                atk_inc = round((_baseAT * 1.3) + (_baseMG / 3)) - _baseAT;
                mag_inc = round((_baseMG * 1.25) + (_baseMG / 4)) - _baseMG;
                global.battleat[arg0] += atk_inc;
                global.battlemag[arg0] += mag_inc;
            };
            
            stop = function(arg0 = char)
            {
                global.battleat[arg0] -= atk_inc;
                global.battlemag[arg0] -= mag_inc;
            };
            
            break;
        
        case "poison":
            init = function(arg0 = char)
            {
                poi_amt = floor(global.maxhp[global.char[arg0]] / 6);
            };
            
            turn = function(arg0 = char)
            {
                obj_battlecontroller.damagesnd = true;
                var dmg = min(poi_amt, global.hp[global.char[arg0]] - 1);
                var ch = global.char[arg0];
                
                if (dmg > 0)
                {
                    with (global.charinstance[arg0])
                    {
                        hurt = 1;
                        hurttimer = 0;
                    }
                    
                    with (obj_dmgwriter)
                    {
                        if (delaytimer >= 1)
                            killactive = 1;
                    }
                    
                    global.hp[ch] -= dmg;
                    dmgwriter = instance_create(global.charinstance[arg0].x, (global.charinstance[arg0].y + global.charinstance[arg0].myheight) - 24, obj_dmgwriter);
                    dmgwriter.damage = dmg;
                    dmgwriter.type = -1;
                }
            };
            
            break;
    }
}

function scr_applystatus_monster(arg0 = 0, arg1 = "", arg2 = 1)
{
    var _haseffect = 0;
    var _char = arg0;
    var _effecttype = string_lower(arg1);
    var _turnamt = arg2;
    var _chareffects = global.monster_effects[_char];
    var _effectID = -1;
    var _reteff = -4;
    
    for (i = 0; i < array_length(_chareffects); i++)
    {
        if (_chareffects[i].name == _effecttype)
        {
            _haseffect = 1;
            _effectID = i;
        }
    }
    
    if (!_haseffect)
    {
        _effectID = array_length(_chareffects);
        array_push(global.monster_effects[_char], new statuseff_monster(_effecttype, _char, _turnamt));
        
        if (global.monster_effects[_char][_effectID].init != -4)
            global.monster_effects[_char][_effectID].init();
        
        _reteff = global.monster_effects[_char][_effectID];
    }
    else
    {
        global.monster_effects[_char][_effectID].turnsleft = _turnamt;
        _reteff = global.monster_effects[_char][_effectID];
    }
    
    return _reteff;
}

function scr_checkstatus_monster(arg0 = 0, arg1 = "")
{
    var _haseffect = 0;
    var _char = arg0;
    var _effecttype = string_lower(arg1);
    var _chareffects = global.monster_effects[_char];
    
    for (i = 0; i < array_length(_chareffects); i++)
    {
        if (_chareffects[i].name == _effecttype)
            _haseffect = 1;
    }
    
    return _haseffect;
}

function statuseff_monster(arg0 = "", arg1 = 0, arg2 = 1) constructor
{
    name = arg0;
    targ = arg1;
    turnsleft = arg2;
    init = -4;
    turn = -4;
    stop = -4;
    endwhendown = true;
    
    switch (name)
    {
        case "def down":
            init = function(arg0 = targ)
            {
                var _baseDF = global.monsterdf_rem[arg0];
                
                if (_baseDF > 10)
                    df_dec = floor(_baseDF / 2);
                else
                    df_dec = 5;
                
                global.monsterdf[arg0] -= df_dec;
            };
            
            stop = function(arg0 = targ)
            {
                global.monsterdf[arg0] += df_dec;
            };
            
            break;
        
        case "poison":
            init = function(arg0 = targ)
            {
                poi_amt = floor(global.monstermaxhp[arg0] / 7);
            };
            
            turn = function(arg0 = targ)
            {
                var dmg = min(poi_amt, global.monsterhp[arg0] - 1);
                
                if (dmg > 0)
                {
                    dm = instance_create(global.monsterx[arg0], (global.monstery[arg0] + 20) - (global.hittarget[arg0] * 20), obj_dmgwriter);
                    dm.type = -1;
                    dm.damage = dmg;
                    global.monsterhp[arg0] -= dmg;
                    
                    if (dmg > 0)
                    {
                        with (global.monsterinstance[arg0])
                        {
                            shakex = 9;
                            state = 3;
                            hurttimer = 60;
                        }
                        
                        if (instance_exists(global.monsterinstance[arg0]))
                            global.monsterinstance[arg0].hurtamt = dmg;
                    }
                    
                    if (global.monsterhp[arg0] <= 0)
                    {
                        with (global.monsterinstance[arg0])
                            scr_monsterdefeat();
                    }
                }
            };
            
            break;
    }
}

function scr_statusinit()
{
    for (var i = 0; i < 3; i++)
    {
        global.battleat_rem[i] = global.battleat[i];
        global.battledf_rem[i] = global.battledf[i];
        global.battlemag_rem[i] = global.battlemag[i];
        global.monsterat_rem[i] = global.monsterat[i];
        global.monsterdf_rem[i] = global.monsterdf[i];
        global.battle_effects[i] = [];
        global.monster_effects[i] = [];
    }
}
