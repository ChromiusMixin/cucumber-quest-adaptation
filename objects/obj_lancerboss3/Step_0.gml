if (defeated == 1 && global.mnfight == 1)
{
    global.mnfight = 99;
    con = 1;
}

if (global.monster[myself] == 1 && defeated == 0)
{
    global.flag[51 + myself] = 4;
    
    if (global.mnfight == 1 && talked == 0)
    {
        scr_randomtarget();
        
        if (scr_monsterpop() == 1)
        {
            susie_revive_count += 1;
            
            if (susie_revive_count >= 3)
            {
                with (obj_susieandlancer_event)
                    s.visible = 0;
                
                global.monster[0] = 1;
                global.monsterinstance[0] = instance_create(global.monstermakex[0], global.monstermakey[0], global.monsterinstancetype[0]);
                global.monsterinstance[0].myself = 0;
                
                with (global.monsterinstance[0])
                {
                    event_user(12);
                    event_user(1);
                    
                    if (global.turntimer < 300)
                        global.turntimer = 300;
                }
                
                global.monsterhp[0] = 40;
                snd_play(snd_power);
                susie_revive_count = 0;
            }
        }
        
        attack_qual = 1;
        
        with (obj_susieenemy)
        {
            if (sleeping == 0 && global.monster[myself] == 1)
                obj_lancerboss3.attack_qual = 0;
        }
        
        if (attack_qual == 1)
        {
            scr_randomtarget();
            global.targeted[mytarget] = 1;
        }
        
        if (!instance_exists(obj_darkener))
            instance_create(0, 0, obj_darkener);
        
        global.typer = 50;
        rrrr = choose(0, 1, 2, 3);
        global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_56_0");
        
        if (rrrr == 1)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_57_0");
        
        if (rrrr == 2)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_58_0");
        
        if (rrrr == 3)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_59_0");
        
        if (lancer_hurt == 0 && global.monsterhp[myself] <= (global.monstermaxhp[myself] * 0.5))
        {
            lancer_hurt = 1;
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_64_0");
        }
        
        if (susie_act == 3)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_66_0");
        
        if (susie_act == 9)
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_67_0");
        
        if (acting == 2)
        {
            if (anythingcounter == 1)
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_70_0");
            
            if (anythingcounter == 2)
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_71_0");
            
            if (anythingcounter == 3)
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_72_0");
            
            if (anythingcounter >= 4)
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_73_0");
        }
        
        if (acting == 3)
        {
            if (anythingcounter == 1)
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_77_0");
            
            if (anythingcounter == 2)
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_78_0");
            
            if (anythingcounter == 3)
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_79_0");
            
            if (anythingcounter >= 4)
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_80_0");
        }
        
        susie_act = 0;
        lancer_act = 0;
        scr_enemyblcon(x - 235, y - 65, 3);
        talked = 1;
        talktimer = 0;
    }
    
    if (talked == 1 && global.mnfight == 1)
        scr_blconskip(30);
    
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
                var _myself = myself;
                
                with (obj_monsterparent)
                {
                    if (myself != _myself)
                    {
                        if (datk_con > 0)
                            _none = false;
                    }
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
                visible = false;
                datk_mark = scr_dark_marker(x, y, spr_lancerbike_l);
                datk_mark.image_xscale = 2;
                datk_mark.image_yscale = 2;
                datk_mark.image_speed = 0.25;
                datk_lastframe = -1;
                datk_con = 2;
                datk_timer = 20;
                ls = snd_play(snd_laz_c);
                snd_pitch(ls, 1.2);
            }
        }
        
        if (datk_con == 2)
        {
            datk_mark.hspeed = -10;
            
            if (datk_mark.x < (x - 64))
            {
                datk_mark.hspeed = 0;
                datk_con = 8;
                datk_timer = 0;
            }
        }
        
        if (datk_con >= 8)
        {
            with (datk_mark)
                x += ((other.x - x) / 10);
        }
        
        if (datk_con == 8)
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
                    _datk.sprite_index = spr_attack_hit1;
                    _datk.image_speed = 0.25;
                    _datk.image_xscale = -2;
                    _datk.maxindex = 3;
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
                            _datk.sprite_index = spr_attack_hit1;
                            _datk.image_speed = 0.25;
                            _datk.image_xscale = -2;
                            _datk.maxindex = 3;
                        }
                    }
                    
                    scr_damage_all();
                }
                
                snd_play(snd_impact);
                datk_con = 9;
                
                if (scr_islast())
                    datk_timer = 96;
                else
                    datk_timer = 63;
            }
        }
        
        if (datk_con == 9)
        {
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
            
            if (scr_monsterpop() < 2)
            {
                rr = floor(random(5));
                global.typer = 6;
                global.fc = 0;
                
                if (rr == 0)
                    global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_145_0");
                
                if (rr == 1)
                    global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_146_0");
                
                if (rr == 2)
                    global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_147_0");
                
                if (rr == 3)
                    global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_148_0");
                
                if (rr == 4)
                    global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_149_0");
            }
            
            if (scr_islast())
                scr_mnendturn();
            else
                scr_nextdatk();
        }
    }
}

if (global.myfight == 3)
{
    xx = __view_get(e__VW.XView, 0);
    yy = __view_get(e__VW.YView, 0);
    
    if (acting == 1 && actcon == 0)
    {
        actcon = 1;
        global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_167_0");
        scr_battletext_default();
    }
    
    if (acting == 2 && actcon == 0)
    {
        actcon = 1;
        global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_176_0");
        global.msg[1] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_177_0");
        
        if (anythingcounter == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_181_0");
            global.msg[1] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_182_0");
        }
        
        if (anythingcounter == 2)
        {
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_187_0");
            global.msg[1] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_188_0");
        }
        
        if (anythingcounter >= 3)
        {
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_193_0");
            global.msg[1] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_194_0");
            
            if (ears_blocked >= 2)
            {
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_197_0");
                global.msg[1] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_198_0");
            }
            
            attack_qual = 0;
            
            if (scr_monsterpop() == 1)
                attack_qual = 1;
            
            with (obj_susieenemy)
            {
                if (sleeping == 1)
                    obj_lancerboss3.attack_qual = 1;
            }
            
            if (attack_qual == 0)
            {
                actcon = 20;
                
                with (obj_monsterparent)
                    ears_blocked += 1;
            }
            else
            {
                anythingcounter = 10;
            }
            
            if (ears_blocked >= 3)
            {
                anythingcounter = 10;
                actcon = 1;
                attack_qual = 1;
            }
        }
        
        if (anythingcounter < 4)
            anythingcounter += 1;
        
        scr_battletext_default();
    }
    
    if (acting == 3 && actcon == 0)
    {
        actcon = 1;
        global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_222_0");
        scr_ralface(1, 8);
        global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_224_0");
        scr_noface(3);
        global.msg[4] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_226_0");
        
        if (anythingcounter == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_230_0");
            scr_ralface(1, 1);
            global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_232_0");
            global.msg[3] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_233_0");
            scr_noface(4);
            global.msg[5] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_235_0");
        }
        
        if (anythingcounter == 2)
        {
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_240_0");
            scr_ralface(1, 1);
            global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_242_0");
            global.msg[3] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_243_0");
            scr_noface(4);
            global.msg[5] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_245_0");
        }
        
        if (anythingcounter >= 3)
        {
            global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_250_0");
            scr_ralface(1, 6);
            global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_252_0");
            global.msg[3] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_253_0");
            
            if (ears_blocked >= 2)
            {
                global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_256_0");
                scr_ralface(1, 0);
                global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_258_0");
                scr_noface(3);
                global.msg[4] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_260_0");
            }
            
            attack_qual = 0;
            
            if (scr_monsterpop() == 1)
                attack_qual = 1;
            
            with (obj_susieenemy)
            {
                if (sleeping == 1)
                    obj_lancerboss3.attack_qual = 1;
            }
            
            if (attack_qual == 0)
            {
                actcon = 20;
                
                with (obj_monsterparent)
                    ears_blocked += 1;
            }
            else
            {
                anythingcounter = 10;
            }
            
            if (ears_blocked >= 3)
            {
                anythingcounter = 10;
                actcon = 1;
                attack_qual = 1;
            }
        }
        
        if (anythingcounter < 4)
            anythingcounter += 1;
        
        if (instance_exists(obj_susieenemy))
        {
            obj_susieenemy.anythingxcounter = anythingcounter;
            obj_susieenemy.lancer_act = 3;
        }
        
        scr_battletext_default();
    }
    
    if (actcon == 1 && !instance_exists(obj_writer))
    {
        actcon = 0;
        
        if (anythingcounter < 10)
        {
            scr_attackphase();
        }
        else
        {
            defeated = 1;
            global.mnfight = 99;
            global.myfight = 99;
            con = 1;
            global.flag[249] = 1;
        }
    }
    
    if (actcon == 20 && !instance_exists(obj_writer))
    {
        visible = 0;
        
        with (obj_susieenemy)
            visible = 0;
        
        if (scr_monsterpop() == 1)
        {
            with (obj_susieandlancer_event)
                s.visible = 0;
        }
        
        blocklan = scr_dark_marker(x, y, spr_lancerbike_earcover);
        blocklan.depth = depth;
        snd_play(snd_bell);
        global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_314_0");
        scr_susface(1, 2);
        global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_316_0");
        scr_battletext_default();
        actcon = 21;
    }
    
    if (actcon == 21 && !instance_exists(obj_writer))
    {
        with (blocklan)
            instance_destroy();
        
        visible = 1;
        
        with (obj_susieenemy)
            visible = 1;
        
        if (scr_monsterpop() == 1)
        {
            with (obj_susieandlancer_event)
                s.visible = 1;
        }
        
        actcon = 1;
    }
}

if (con == 1)
{
    alarm[4] = 10;
    con = 2;
}

if (con == 3)
{
    with (obj_susieenemy)
        idlesprite = spr_susie_enemy;
    
    global.typer = 46;
    global.fe = 4;
    global.fc = 5;
    global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_348_0");
    scr_susface(1, 9);
    global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_350_0");
    global.msg[3] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_351_0");
    global.msg[4] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_352_0");
    scr_lanface(5, 2);
    global.msg[6] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_354_0");
    global.msg[7] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_355_0");
    scr_susface(8, 0);
    global.msg[9] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_357_0");
    scr_ralface(10, 6);
    global.msg[11] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_359_0");
    
    if (global.flag[249] == 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_363_0");
        scr_susface(1, 0);
        global.msg[2] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_365_0");
        scr_lanface(3, 4);
        global.msg[4] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_367_0");
        global.msg[5] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_368_0");
        global.msg[6] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_369_0");
        scr_susface(7, 0);
        global.msg[8] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_371_0");
        global.msg[9] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_372_0");
        global.msg[10] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_373_0");
        global.msg[11] = scr_84_get_lang_string("obj_lancerboss3_slash_Step_0_gml_374_0");
    }
    
    con = 4;
    scr_battletext();
}

if (con == 4 && !instance_exists(obj_writer))
{
    con = 5;
    alarm[4] = 4;
    
    with (obj_battlecontroller)
    {
        noreturn = 0;
        alarm[2] = 8;
    }
}

if (con == 6)
{
    with (obj_susieandlancer_event)
        l.visible = 1;
    
    with (obj_monsterparent)
        scr_monsterdefeat();
    
    instance_destroy();
    con = 7;
}
