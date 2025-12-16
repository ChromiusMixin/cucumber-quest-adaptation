if (global.monster[myself] == 1)
{
    if (global.mnfight == 1 && talked == 0)
    {
        global.turntimer = 999999;
        scr_randomtarget();
        hb = instance_create(x - 100, y, obj_heartblcon);
        hb.sprite_index = choose(spr_heartblcon_0, spr_heartblcon_1);
        
        if (acting == 2)
            hb.sprite_index = spr_heartblcon_2;
        
        if (acting == 3)
            hb.sprite_index = spr_heartblcon_3;
        
        talked = 1;
        talktimer = 0;
    }
    
    if (talked == 1 && global.mnfight == 1)
    {
        rtimer = 0;
        
        if (button1_p() && talktimer > 30)
            talktimer = talkmax;
        
        talktimer += 1;
        
        if (talktimer >= talkmax)
        {
            with (obj_heartblcon)
                instance_destroy();
            
            global.mnfight = 2;
        }
    }
    
    if (global.mnfight == 2 && attacked == 0)
    {
        with (obj_heartblcon)
            instance_destroy();
        
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
                datk_timer = 10;
            }
            else
            {
                datk_con = -1;
                datk_timer = 9.5;
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
                datk_mark = scr_dark_marker(x, y, spr_heartenemy_spared);
                datk_mark.image_xscale = 2;
                datk_mark.image_yscale = 2;
                datk_mark.image_speed = 0.25;
                datk_lastframe = -1;
                datk_con = 2;
                datk_timer = 10;
                ls = snd_play(snd_laz_c);
                snd_pitch(ls, 1.2);
            }
        }
        
        if (datk_con == 2)
        {
            datk_mark.hspeed = -20;
            
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
                x += ((other.x - x) / 5);
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
                    datk_timer = 48;
                else
                    datk_timer = 31.5;
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
            global.typer = 6;
            global.fc = 0;
            rr = choose(0, 1, 2, 3, 4);
            
            if (rr == 0)
                global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_79_0"); // * Hathy's body beats audibly.
            
            if (rr == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_80_0"); // * Hathy smiled a darling smile.
            
            if (rr == 2)
                global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_81_0"); // * Hathy is whispering a lovely spell.
            
            if (rr == 3)
                global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_82_0"); // * Hathy has a little secret.
            
            if (rr == 4)
                global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_83_0"); // * Smells like a soft kiss.
            
            if (global.monsterstatus[myself] == 1)
                global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_84_0"); // * Hathy's beat slows.
            
            if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 3))
                global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_85_0"); // * Hathy's beat seems to stutter.
            
            if (global.mercymod[myself] >= global.mercymax[myself])
                global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_86_0"); // * Hathy is skipping beats.
            
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
        global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_127_0"); // * HATHY - AT 7 DF 0&* I am a \cYlittle kiss\cW./%
        scr_battletext_default();
    }
    
    if (acting == 2 && actcon == 0)
    {
        rr = choose(0, 1, 2);
        global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_136_0"); // * You told Hathy it has cool tentacles^1.&* It began to think about this.../%
        
        if (rr == 1)
            global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_137_0"); // * You called Hathy a sweetheart^1.&* It began to think about this.../%
        
        if (rr == 2)
            global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_138_0"); // * You told Hathy its teeth look like knives^1.&* It began to think about this.../%
        
        scr_mercyadd(myself, 100);
        scr_battletext_default();
        battlecancel = 1;
        actcon = 1;
    }
    
    if (acting == 3 && actcon == 0)
    {
        global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_147_0"); // * You ordered Ralsei to flatter all the enemies!/
        scr_ralface(1, 0);
        rr = choose(0, 1, 2);
        global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_150_0"); // * Out of anyone^1, I'm glad we randomly encountered all of you./%
        
        if (rr == 1)
            global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_151_0"); // * I'm making tea later..^1.&* Umm^1, would you like any?/%
        
        if (rr == 2)
            global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_152_0"); // * We don't need EXP^1.&* Just encountering your smile is reward enough./%
        
        scr_mercyadd(0, 100);
        scr_mercyadd(1, 100);
        scr_mercyadd(2, 100);
        actcon = 1;
        scr_battletext_default();
    }
    
    if (acting == 4 && actcon == 0)
    {
        actcon = 1;
        
        if (global.plot < 150)
        {
            global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_168_0"); // * You and Ralsei warned Hathy about Susie^1.&* The enemy went on guard./%
            
            if (scr_monsterpop() > 1)
                global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_170_0"); // * You and Ralsei  warned the enemies about Susie^1.&* Everyone went on guard./%
            
            for (i = 0; i < 3; i += 1)
            {
                global.monstercomment[i] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_173_0"); // (Warned)
                global.automiss[i] = 1;
            }
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_179_0"); // * You ordered Susie to flatter all the enemies!/
            scr_susface(1, 2);
            rr = choose(0, 1, 2);
            global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_182_0"); // * Can't believe my bozo teammates.../
            global.msg[3] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_183_0"); // \E0* ... came back here just to see YOU guys./%
            
            if (rr == 1)
                global.msg[3] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_184_0"); // \E0* ... wanted to fight someone like YOU so much./%
            
            if (rr == 2)
                global.msg[3] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_185_0"); // \E0* ... have a THING for weaklings like you./%
            
            scr_mercyadd(0, 100);
            scr_mercyadd(1, 100);
            scr_mercyadd(2, 100);
        }
        
        scr_battletext_default();
    }
    
    if (actcon == 1 && !instance_exists(obj_writer))
    {
        actcon = 0;
        scr_attackphase();
    }
    
    if (actcon == 5 && instance_exists(obj_writer) == false)
    {
        global.battleat[1] = 90;
        global.battleat[2] = 90;
        actcon = 6;
        
        with (obj_herosusie)
        {
            attacktimer = 0;
            state = 1;
            points = 100 + round(random(40));
            global.faceaction[myself] = 0;
            
            if (global.automiss[0] == 1)
                points = 0;
            
            if (global.automiss[0] == 0)
            {
                with (obj_event_manager)
                    trigger_event(UnknownEnum.Value_0, UnknownEnum.Value_22);
            }
        }
        
        alarm[4] = 100;
    }
    
    if (actcon == 7)
    {
        global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_223_0"); // * Where'd you get it^1?&* Heh heh heh heh./
        scr_ralface(1, 3);
        global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_225_0"); // * (Umm^1, Kris^1, maybe Susie shouldn't ACT anymore...)/%
        
        if (global.automiss[0] == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_228_0"); // \E7* H-hey^1, what gives!?/
            scr_ralface(1, 3);
            global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_230_0"); // * (Wow^1, that was close^1, Kris...)/
            global.msg[3] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_231_0"); // * (Maybe Susie shouldn't ACT anymore...)/%
        }
        
        scr_battletext();
        actcon = 1;
    }
}

if (global.myfight == 7)
    hspeed = 7.5;
