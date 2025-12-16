if (global.monster[myself] == 1)
{
    if (global.mnfight == 1 && talked == 0)
    {
        global.turntimer = 999999;
        scr_randomtarget();
        global.typer = 50;
        rr = choose(0, 1, 2, 3);
        
        if (rr == 0)
            global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_11_0"); // Long live&the guy&who pays us!
        
        if (rr == 1)
            global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_12_0"); // Shine,&shine
        
        if (rr == 2)
            global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_13_0"); // I'm just a&normal&person.
        
        if (rr == 3)
            global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_14_0"); // Face my&Diamond&Cutter!
        
        if (acting == 2)
            global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_24_0"); // Yeah I&guess that&makes&sense.
        
        if (acting == 3)
            global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_28_0"); // (Yawn)...&What? OK...
        
        scr_enemyblcon(x - 160, y, 3);
        talked = 1;
        talktimer = 0;
    }
    
    if (talked == 1 && global.mnfight == 1)
    {
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
                datk_mark = scr_dark_marker(x, y, spr_diamondm_spared);
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
            
            if (_endatk)
            {
                turns += 1;
                attacked = 1;
                rr = floor(random(4));
                
                if (rr == 0)
                    global.battlemsg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_77_0"); // * Rudinn is glimmering plainly.
                
                if (rr == 1)
                    global.battlemsg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_78_0"); // * Rudinn has no strong opinions one way or the other.
                
                if (rr == 2)
                    global.battlemsg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_79_0"); // * Rudinn thinks about elaborate stones.
                
                if (rr == 3)
                    global.battlemsg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_80_0"); // * Rudinn dislikes its boss^1, but doesn't care enough to quit.
                
                if (rr == 4)
                    global.battlemsg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_81_0"); // * Smells like jewelry.
                
                if (global.monsterstatus[myself] == 1)
                    global.battlemsg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_82_0"); // * Rudinn is starting to fall asleep.
                
                if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 3))
                    global.battlemsg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_83_0"); // * Rudinn's luster begins to fade.
                
                if (global.mercymod[myself] >= global.mercymax[myself])
                    global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_84_0"); // * Rudinn is alright with not fighting.
                
                if (scr_islast())
                    scr_mnendturn();
                else
                    scr_nextdatk();
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
    global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_118_0"); // Alright^1,&you convinced&me!!/%
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
        global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_154_0"); // * RUDINN - AT 6 DF 0&* This ambivalent diamond isn't any girl's best friend./%
        scr_battletext_default();
    }
    
    if (acting == 2 && actcon == 0)
    {
        if (nexttry == 1)
            global.flag[208] = 1;
        
        global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_163_0"); // * You told Rudinn to quit fighting^1.&* It was utterly swayed./%
        scr_mercyadd(myself, 100);
        scr_battletext_default();
        actcon = 1;
    }
    
    if (acting == 3 && actcon == 0)
    {
        global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_173_0"); // * You lectured the enemies on the importance of kindness./
        global.msg[1] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_174_0"); // * The enemies became \cBTIRED\cW.../%
        
        for (i = 0; i < 3; i += 1)
        {
            global.monstercomment[i] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_177_0"); // (Tired)
            global.monsterstatus[i] = 1;
        }
        
        scr_mercyadd(myself, 50);
        scr_battletext_default();
        actcon = 1;
    }
    
    if (acting == 4 && actcon == 0)
    {
        actcon = 1;
        global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_188_0"); // * You and Ralsei warned Rudinn about Susie^1.&* The enemy went on guard.../%
        
        if (scr_monsterpop() > 1)
            global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_190_0"); // * You and Ralsei warned the enemies about Susie^1.&* Everyone went on guard./%
        
        for (i = 0; i < 3; i += 1)
        {
            global.monstercomment[i] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_193_0"); // (Warned)
            global.automiss[i] = 1;
        }
        
        scr_battletext_default();
    }
    
    if (actcon == 1 && !instance_exists(obj_writer))
    {
        actcon = 0;
        scr_attackphase();
    }
    
    if (actcon == 10 && instance_exists(obj_writer) == false)
    {
        global.typer = 50;
        global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_215_0"); // You kidding?&I can't quit.&Stopping you&is my job!/%
        scr_enemyblcon(x - 160, y, 3);
        actcon = 11;
    }
    
    if (actcon == 11 && instance_exists(obj_writer) == false)
    {
        global.typer = 45;
        global.fc = 2;
        global.fe = 8;
        global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_225_0"); // * Really^1?&* What do you spend your money on?/%
        scr_battletext();
        actcon = 12;
    }
    
    if (actcon == 12 && instance_exists(obj_writer) == false)
    {
        global.typer = 50;
        global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_233_0"); // I'm a normal&person./
        global.msg[1] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_234_0"); // I spend all&my money on&RENT and&MYSTIC GEMs./%
        scr_enemyblcon(x - 160, y, 3);
        actcon = 14;
    }
    
    if (actcon == 14 && instance_exists(obj_writer) == false)
    {
        global.typer = 45;
        global.fc = 2;
        global.fe = 3;
        global.msg[0] = scr_84_get_lang_string("obj_diamondenemy_slash_Step_0_gml_244_0"); // * (Kris^1, let's try CONVINCING them again...)/%
        scr_battletext();
        nexttry = 1;
        actcon = 1;
    }
}

if (global.myfight == 7)
    hspeed = 7.5;