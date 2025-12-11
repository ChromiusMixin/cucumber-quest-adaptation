if (global.monster[myself] == 1 && defeated == 0)
{
    global.flag[51 + myself] = 4;
    event_user(1);
    
    if (talked == 1 && global.mnfight == 1)
    {
        scr_randomtarget();
        rtimer = 0;
        scr_blconskip(30);
    }
    
    if (global.mnfight == 2 && attacked == 0)
    {
        var _endatk = false;
        
        if (datk_con == -1)
        {
            if (datk_timer > 0)
            {
                datk_timer--;
            }
            else
            {
                var _none = true;
                
                with (obj_monsterparent)
                {
                    if (datk_con > -1)
                        _none = false;
                }
                
                if (_none)
                {
                    datk_con = 1;
                    datk_timer = 1;
                }
            }
        }
        
        if (datk_con == 0)
        {
            if (scr_isfirst())
            {
                datk_con = 1;
                datk_timer = 20;
            }
            else
            {
                datk_con = -1;
                datk_timer = 19;
            }
        }
        
        if (datk_con == 1)
        {
            if (datk_timer > 0)
            {
                datk_timer--;
            }
            else
            {
                rr = choose(0, 1);
                visible = false;
                
                if (rr == 0)
                {
                    datk_mark = scr_dark_marker(x, y, spr_susie_enemy_attack);
                    datk_mark.image_yscale = image_yscale;
                    datk_mark.image_speed = 0;
                    datk_mark.depth = depth;
                    datk_lastframe = sprite_get_number(datk_mark.sprite_index) - 1;
                    datk_con = 2;
                    datk_timer = 20;
                    ls = snd_play(snd_laz_c);
                    snd_pitch(ls, 0.9);
                }
                else
                {
                    datk_mark = scr_dark_marker(x, y, spr_susieb_spell);
                    datk_mark.image_xscale = -2;
                    datk_mark.image_yscale = image_yscale;
                    datk_mark.image_speed = 0;
                    datk_mark.depth = depth;
                    datk_mark.x += 70;
                    datk_lastframe = sprite_get_number(datk_mark.sprite_index) - 1;
                    datk_con = 3;
                    datk_timer = 30;
                }
            }
        }
        
        if (datk_con == 2)
        {
            datk_timer--;
            
            if (datk_mark.image_index < datk_lastframe)
            {
                datk_mark.image_index += 0.25;
            }
            else if (datk_timer <= 0)
            {
                global.inv = -1;
                target = mytarget;
                damage = global.monsterat[myself] * 5;
                var _targetall = target == 3;
                
                if (!_targetall)
                {
                    var _targetX = mean(global.charinstance[target].bbox_left, global.charinstance[target].bbox_right);
                    var _targetY = mean(global.charinstance[target].bbox_top, global.charinstance[target].bbox_bottom);
                    _datk = instance_create(_targetX + random(6), _targetY + random(6), obj_basicattack);
                    _datk.sprite_index = spr_attack_mash2;
                    _datk.image_speed = 0.25;
                    _datk.image_xscale = -2;
                    _datk.maxindex = 4;
                    scr_damage();
                }
                else
                {
                    for (var _ti = 0; _ti < 3; _ti++)
                    {
                        target = _ti;
                        
                        if (global.charcantarget[_ti] == 1)
                        {
                            var _targetX = mean(global.charinstance[target].bbox_left, global.charinstance[target].bbox_right);
                            var _targetY = mean(global.charinstance[target].bbox_top, global.charinstance[target].bbox_bottom);
                            _datk = instance_create(_targetX + random(6), _targetY + random(6), obj_basicattack);
                            _datk.sprite_index = spr_attack_mash2;
                            _datk.image_speed = 0.25;
                            _datk.image_xscale = -2;
                            _datk.maxindex = 4;
                        }
                    }
                    
                    scr_damage_all();
                }
                
                snd_play(snd_impact);
                datk_con = 9;
                
                if (scr_islast())
                    datk_timer = 60;
                else
                    datk_timer = 42;
            }
        }
        
        if (datk_con == 3)
        {
            datk_timer--;
            
            if (datk_mark.image_index < datk_lastframe)
            {
                datk_mark.image_index += 0.25;
            }
            else if (datk_timer <= 0)
            {
                global.inv = -1;
                datk_mark.visible = false;
                target = mytarget;
                damage = (global.at[2] * 4) + random_range(1, 20);
                var _targetall = target == 3;
                
                if (!_targetall)
                {
                    _datk = instance_create(datk_mark.x, datk_mark.y, obj_rudebuster_anim);
                    _datk.target = global.charinstance[target];
                    _datk.targetx = mean(global.charinstance[target].bbox_left, global.charinstance[target].bbox_right);
                    _datk.targety = mean(global.charinstance[target].bbox_top, global.charinstance[target].bbox_bottom);
                }
                
                datk_con = 9;
                
                if (scr_islast())
                    datk_timer = 160;
                else
                    datk_timer = 140;
            }
        }
        
        if (datk_con == 9)
        {
            if (instance_exists(obj_rudebuster_anim))
            {
                if (obj_rudebuster_anim.t == 56)
                    datk_mark.visible = true;
            }
            
            if (datk_timer > 0)
            {
                datk_timer--;
            }
            else
            {
                datk_con = 10;
                _endatk = true;
            }
        }
        
        if (_endatk)
        {
            turns += 1;
            attacked = 1;
            global.typer = 6;
            global.fc = 0;
            rr = choose(0, 1, 2, 3, 4);
            global.battlemsg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_79_0");
            
            if (rr == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_80_0");
            
            if (rr == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_81_0");
            
            if (rr == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_82_0");
            
            if (rr == 4)
                global.battlemsg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_83_0");
            
            if (scr_islast())
                scr_mnendturn();
            else
                scr_nextdatk();
        }
    }
    
    if (global.mnfight == 2)
    {
        if (global.turntimer <= 1)
        {
            if (battlecancel == 1)
                global.mercymod[myself] = 999;
            
            if (battlecancel == 2)
            {
                with (obj_battlecontroller)
                    noreturn = 1;
                
                con = 1;
                battlecancel = 3;
            }
        }
    }
}

if (con == 1)
{
    con = 2;
    alarm[4] = 20;
}

if (con == 3)
{
    global.typer = 50;
    global.mercymod[myself] = 999;
    global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_118_0");
    scr_enemyblcon(x - 160, y, 3);
    con = 4;
}

if (con == 4 && !instance_exists(obj_writer))
{
    hspeed = 7.5;
    con = 5;
    alarm[4] = 30;
    
    with (obj_battlecontroller)
        alarm[2] = 34;
}

if (con == 6)
{
    with (obj_battlecontroller)
        noreturn = 0;
    
    scr_monsterdefeat();
    instance_destroy();
    con = 7;
}

if (global.myfight == 3)
{
    xx = __view_get(e__VW.XView, 0);
    yy = __view_get(e__VW.YView, 0);
    
    if (acting == 1 && actcon == 0)
    {
        actcon = 1;
        _armordf = global.itemdf[2][0] + global.itemdf[2][1] + global.itemdf[2][2];
        _armorat = global.itemat[2][0] + global.itemat[2][1] + global.itemat[2][2];
        totaldf = string(global.df[2] + _armordf);
        totalat = string(global.at[2] + _armorat);
        totalhp = string(global.maxhp[2]);
        global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_159_0"), totalat, totaldf, totalhp);
        
        if (_armordf > 0)
            global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_162_0"), totalat, totaldf, totalhp);
        
        scr_battletext_default();
    }
    
    if (acting == 2 && actcon == 0)
    {
        global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_170_0");
        
        if (anythingcounter == 1)
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_171_0");
        
        if (anythingcounter == 2)
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_172_0");
        
        if (anythingcounter == 3)
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_173_0");
        
        if (anythingcounter >= 4)
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_174_0");
        
        global.msg[1] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_175_0");
        
        if (anythingcounter >= 1)
            global.msg[1] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_176_0");
        
        scr_battletext_default();
        anythingcounter += 1;
        actcon = 1;
    }
    
    if (acting == 3 && actcon == 0)
    {
        with (obj_monsterparent)
            susie_act = 3;
        
        snd_pause(global.batmusic[1]);
        
        if (lullabied == 0)
        {
            singy = snd_play(snd_ralseising1);
            
            with (object_index)
                lullabied = 1;
        }
        else
        {
            singy = snd_play(snd_ralseising2);
            
            with (object_index)
                lullabied = 0;
        }
        
        global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_197_0");
        
        with (obj_heroralsei)
            visible = 0;
        
        ralsing = scr_dark_marker(obj_heroralsei.x, obj_heroralsei.y, spr_ralseib_sing);
        
        with (ralsing)
            image_speed = 0.1;
        
        lullatimer = 0;
        scr_battletext_default();
        actcon = 10;
    }
    
    if (actcon == 10)
    {
        lullatimer += 1;
        
        if (lullatimer >= 60)
            actcon = 11;
    }
    
    if (actcon == 11 && instance_exists(obj_writer) == false)
    {
        with (ralsing)
            instance_destroy();
        
        with (obj_heroralsei)
            visible = 1;
        
        snd_stop(singy);
        snd_resume(global.batmusic[1]);
        global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_223_0");
        
        if (sleeping == 1)
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_224_0");
        
        idlesprite = spr_susie_enemy_defeat;
        sleepcounter = 0;
        sleeping = 1;
        global.monstercomment[myself] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_228_0");
        global.monsterstatus[myself] = 1;
        scr_battletext_default();
        actcon = 1;
    }
    
    if (actcon == 1 && !instance_exists(obj_writer))
    {
        actcon = 0;
        scr_attackphase();
    }
}

if (pacifycon > 0)
{
    global.spelldelay = 1999;
    
    with (obj_spellphase)
    {
        if (spelltimer > 60)
            spelltimer = 60;
    }
}

if (pacifycon == 1)
{
    if (obj_spellphase.spelltimer >= 30)
    {
        pacifytimer = 0;
        pacifycon = 2;
        
        with (obj_lancerboss3)
            visible = 0;
        
        temp_l = scr_dark_marker(x - 40, y + sprite_height, spr_lancerbike);
        temp_l.depth = depth - 2;
    }
}

if (pacifycon == 2)
{
    snd_play(snd_lancerwhistle);
    
    with (temp_l)
    {
        o = scr_oflash();
        o.flashcolor = c_blue;
    }
    
    pacifycon = 3;
}

if (pacifycon == 3)
{
    pacifytimer += 1;
    
    if (pacifytimer >= 60 && !instance_exists(obj_writer))
    {
        with (temp_l)
            instance_destroy();
        
        with (obj_lancerboss3)
            visible = 1;
        
        pacifycon = 4;
        
        with (obj_monsterparent)
            susie_act = 9;
        
        global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_283_0");
        scr_lanface(1, 3);
        global.msg[2] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_285_0");
        scr_noface(3);
        global.msg[4] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_287_0");
        
        if (tirespare == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_290_0");
            global.msg[1] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_291_0");
            global.msg[2] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_292_0");
            global.msg[3] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_293_0");
            global.msg[4] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_294_0");
        }
        
        if (tirespare >= 2)
        {
            global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_298_0");
            global.msg[1] = scr_84_get_lang_string("obj_susieenemy_slash_Step_0_gml_299_0");
        }
        
        scr_battletext_default();
        pacifycon = 5;
        tirespare += 1;
    }
}

if (pacifycon == 5 && !instance_exists(obj_writer))
{
    global.spelldelay = 40;
    
    with (obj_spellphase)
        spelltimer = 36;
    
    pacifycon = 0;
}
