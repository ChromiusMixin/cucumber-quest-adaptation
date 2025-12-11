if (os_type == os_macosx)
    draw_screen = skiptimer < 38;

if (draw_screen)
{
    if (con == 1)
    {
        textimer += 1;
        
        if (textimer == 12)
        {
            global.typer = 41;
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_13_0");
            w = instance_create(40, 160, obj_writer);
            w.depth = -10;
        }
        
        if (textimer == 440)
        {
            with (obj_writer)
                instance_destroy();
            
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_21_0");
            w = instance_create(40, 160, obj_writer);
            w.depth = -10;
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_24_0");
            w = instance_create(220, 160, obj_writer);
            w.depth = -10;
        }
        
        if (textimer == 680)
        {
            with (obj_writer)
                instance_destroy();
            
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_32_0");
            w = instance_create(40, 160, obj_writer);
            w.depth = -10;
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_35_0");
            w = instance_create(220, 160, obj_writer);
            w.depth = -10;
        }
        
        if (textimer == 920)
        {
            with (obj_writer)
                instance_destroy();
            
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_43_0");
            w = instance_create(80, 160, obj_writer);
            w.depth = -10;
        }
        
        draw_sprite(pic, 0, 60, 48 + yoff);
        ytimer += 1;
        
        if (ytimer >= 4 && yoff > -260)
        {
            ytimer = 0;
            yoff -= 1;
        }
        
        if (yoff <= -260)
        {
            contimer += 1;
            
            if (subsubcon == 0)
            {
                var dopause = false;
                
                if (os_type == os_ps4 || os_type == os_ps5)
                {
                    var trackpos = audio_sound_get_track_position(global.currentsong[1]);
                    var beginSil = 17.934;
                    var endSil = 19.612;
                    
                    if (trackpos >= beginSil && trackpos <= endSil)
                    {
                        scr_debug_print(string("trackpos=" + string(trackpos)));
                        dopause = true;
                    }
                }
                else if (contimer >= 80)
                {
                    dopause = true;
                }
                
                if (dopause)
                {
                    subsubcon = 1;
                    
                    with (obj_switchAsyncHelper)
                        docheck = false;
                    
                    audio_pause_sound(global.currentsong[1]);
                }
            }
            
            if (contimer >= 200)
            {
                con = 2;
                contimer = 0;
                chunkfade = 1;
                alarm[4] = 180;
            }
        }
    }
    
    if (con == 2)
    {
        draw_sprite(pic, 0, 60, 48 + yoff);
        contimer += 1;
        
        if (contimer == 80)
        {
            with (obj_writer)
                instance_destroy();
        }
    }
    
    if (con == 3)
    {
        pic = spr_introimage1;
        audio_sound_set_track_position(global.currentsong[1], 19.656);
        audio_resume_sound(global.currentsong[1]);
        
        with (obj_switchAsyncHelper)
            docheck = true;
        
        con = 4;
        contimer = 0;
        chunkfade = 0;
        global.typer = 40;
        global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_98_0");
        global.msg[1] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_99_0");
        w = instance_create(40, 160, obj_writer);
    }
    
    if (con == 4)
    {
        draw_sprite(pic, 0, 60, 28);
        contimer += 1;
        
        if (contimer == 520)
        {
            with (obj_writer)
                instance_destroy();
            
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_113_0");
            w = instance_create(70, 160, obj_writer);
        }
        
        if (contimer >= 552)
        {
            c_chunkamt = 0;
            contimer = 0;
            con = 5;
        }
    }
    
    if (con == 5)
    {
        if (contimer <= 400)
            draw_sprite(pic, 0, 60, 28);
        
        con_alph = 0;
        c_chunkamt += 0.025;
        
        if (c_chunkamt >= 0.125)
            con_alph = 0.125;
        
        if (c_chunkamt >= 0.25)
            con_alph = 0.25;
        
        if (c_chunkamt >= 0.375)
            con_alph = 0.375;
        
        if (c_chunkamt >= 0.5)
            con_alph = 0.5;
        
        if (c_chunkamt >= 0.625)
            con_alph = 0.625;
        
        if (c_chunkamt >= 0.75)
            con_alph = 0.75;
        
        if (c_chunkamt >= 0.875)
            con_alph = 0.875;
        
        if (c_chunkamt >= 1)
            con_alph = 1;
        
        if (contimer <= 400)
            draw_sprite_ext(pic, 1, 60, 28, 1, 1, 0, c_white, con_alph);
        
        contimer += 1;
        
        if (contimer == 240)
            chunkfade = 1;
        
        if (contimer == 260)
        {
            with (obj_writer)
                instance_destroy();
            
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_151_0");
            w = instance_create(40, 80, obj_writer);
        }
        
        if (contimer == 420)
        {
            chunkfade = 0;
            fadespeed = 0.1;
        }
        
        if (contimer == 460)
        {
            chunkfade = 1;
            fadespeed = 0.015;
            fadecolor = c_white;
        }
        
        if (contimer == 550)
        {
            with (obj_writer)
                instance_destroy();
            
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_170_0");
            w = instance_create(80, 185, obj_writer);
            fadespeed = 0.025;
            con = 6;
            chunkfade = 0;
            contimer = 0;
            border = 0;
            c_chunkamt = 0;
            pic = spr_introimage2;
        }
    }
    
    if (con == 6)
    {
        draw_sprite(pic, 0, 0, 0);
        con_alph = 0;
        
        if (contimer >= 552)
            c_chunkamt += 0.025;
        
        if (c_chunkamt >= 0.125)
            con_alph = 0.125;
        
        if (c_chunkamt >= 0.25)
            con_alph = 0.25;
        
        if (c_chunkamt >= 0.375)
            con_alph = 0.375;
        
        if (c_chunkamt >= 0.5)
            con_alph = 0.5;
        
        if (c_chunkamt >= 0.625)
            con_alph = 0.625;
        
        if (c_chunkamt >= 0.75)
            con_alph = 0.75;
        
        if (c_chunkamt >= 0.875)
            con_alph = 0.875;
        
        if (c_chunkamt >= 1)
            con_alph = 1;
        
        draw_sprite_ext(pic, 1, 0, 0, 1, 1, 0, c_white, con_alph);
        contimer += 1;
        
        if (contimer == 276)
        {
            with (obj_writer)
                instance_destroy();
            
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_205_0");
            w = instance_create(80, 185, obj_writer);
        }
        
        if (contimer == 552)
        {
            with (obj_writer)
                instance_destroy();
            
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_212_0");
            w = instance_create(60, 185, obj_writer);
        }
        
        if (contimer == 828)
        {
            with (obj_writer)
                instance_destroy();
            
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_219_0");
            w = instance_create(80, 185, obj_writer);
        }
        
        if (contimer == 1040)
        {
            fadespeed = 0.02;
            fadecolor = c_black;
            chunkfade = 1;
        }
        
        if (contimer == 1102)
        {
            with (obj_writer)
                instance_destroy();
            
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_233_0");
            w = instance_create(40, 185, obj_writer);
            contimer = 0;
            c_chunkamt = 0;
            chunkfade = 0;
            con = 7;
            c_chunkamt = 0;
            pic = spr_introimage3;
        }
    }
    
    if (con == 7)
    {
        draw_sprite(pic, 0, 0, 0);
        
        if (contimer == 276)
        {
            with (obj_writer)
                instance_destroy();
            
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_253_0");
            w = instance_create(80, 185, obj_writer);
        }
        
        con_alph = 0;
        
        if (contimer >= 276)
            c_chunkamt += 0.025;
        
        if (c_chunkamt >= 0.125)
            con_alph = 0.125;
        
        if (c_chunkamt >= 0.25)
            con_alph = 0.25;
        
        if (c_chunkamt >= 0.375)
            con_alph = 0.375;
        
        if (c_chunkamt >= 0.5)
            con_alph = 0.5;
        
        if (c_chunkamt >= 0.625)
            con_alph = 0.625;
        
        if (c_chunkamt >= 0.75)
            con_alph = 0.75;
        
        if (c_chunkamt >= 0.875)
            con_alph = 0.875;
        
        if (c_chunkamt >= 1)
            con_alph = 1;
        
        draw_sprite_ext(pic, 1, 0, 0, 1, 1, 0, c_white, con_alph);
        contimer += 1;
        
        if (contimer == 492)
        {
            fadespeed = 0.02;
            fadecolor = c_black;
            chunkfade = 1;
        }
        
        if (contimer >= 554)
        {
            with (obj_writer)
                instance_destroy();
            
            contimer = 0;
            c_chunkamt = 0;
            chunkfade = 0;
            con = 8;
            c_chunkamt = 0;
            pic = spr_introimage4;
        }
    }
    
    if (con == 8)
    {
        draw_sprite(pic, 0, 0, 0);
        con_alph = 0;
        
        if (contimer == 8)
        {
            with (obj_writer)
                instance_destroy();
            
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_301_0");
            w = instance_create(20, 185, obj_writer);
        }
        
        if (contimer == 138)
        {
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_309_0");
            w = instance_create(110, 185, obj_writer);
        }
        
        if (contimer == 276)
        {
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_317_0");
            w = instance_create(200, 185, obj_writer);
        }
        
        if (contimer >= 138 && contimer <= 276)
        {
            c_chunkamt += 0.025;
            
            if (c_chunkamt >= 0.125)
                con_alph = 0.125;
            
            if (c_chunkamt >= 0.25)
                con_alph = 0.25;
            
            if (c_chunkamt >= 0.375)
                con_alph = 0.375;
            
            if (c_chunkamt >= 0.5)
                con_alph = 0.5;
            
            if (c_chunkamt >= 0.625)
                con_alph = 0.625;
            
            if (c_chunkamt >= 0.75)
                con_alph = 0.75;
            
            if (c_chunkamt >= 0.875)
                con_alph = 0.875;
            
            if (c_chunkamt >= 1)
                con_alph = 1;
            
            if (c_chunkamt > 1)
                c_chunkamt = 1;
        }
        
        if (contimer >= 276)
        {
            con_alph = 1;
            c_chunkamt += 0.025;
            
            if (c_chunkamt >= 1.125)
                con_alph = 1.125;
            
            if (c_chunkamt >= 1.25)
                con_alph = 1.25;
            
            if (c_chunkamt >= 1.375)
                con_alph = 1.375;
            
            if (c_chunkamt >= 1.5)
                con_alph = 1.5;
            
            if (c_chunkamt >= 1.625)
                con_alph = 1.625;
            
            if (c_chunkamt >= 1.75)
                con_alph = 1.75;
            
            if (c_chunkamt >= 1.875)
                con_alph = 1.875;
            
            if (c_chunkamt >= 2)
                con_alph = 2;
        }
        
        draw_sprite_ext(pic, 1, 0, 0, 1, 1, 0, c_white, con_alph);
        draw_sprite_ext(pic, 2, 0, 0, 1, 1, 0, c_white, con_alph - 1);
        contimer += 1;
        
        if (contimer == 492)
        {
            fadespeed = 0.02;
            fadecolor = c_black;
            chunkfade = 1;
        }
        
        if (contimer >= 554)
        {
            with (obj_writer)
                instance_destroy();
            
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_356_0");
            w = instance_create(40, 185, obj_writer);
            contimer = 0;
            c_chunkamt = 0;
            chunkfade = 0;
            con = 9;
            pic = spr_introimage5;
        }
    }
    
    if (con == 9)
    {
        draw_sprite(pic, 0, 0, 0);
        con_alph = 0;
        
        if (contimer >= 552)
            c_chunkamt += 0.025;
        
        if (c_chunkamt >= 0.125)
            con_alph = 0.125;
        
        if (c_chunkamt >= 0.25)
            con_alph = 0.25;
        
        if (c_chunkamt >= 0.375)
            con_alph = 0.375;
        
        if (c_chunkamt >= 0.5)
            con_alph = 0.5;
        
        if (c_chunkamt >= 0.625)
            con_alph = 0.625;
        
        if (c_chunkamt >= 0.75)
            con_alph = 0.75;
        
        if (c_chunkamt >= 0.875)
            con_alph = 0.875;
        
        if (c_chunkamt >= 1)
            con_alph = 1;
        
        draw_sprite_ext(pic, 1, 0, 0, 1, 1, 0, c_white, con_alph);
        contimer += 1;
        
        if (contimer == 276)
        {
            with (obj_writer)
                instance_destroy();
            
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_387_0");
            w = instance_create(40, 185, obj_writer);
        }
        
        if (contimer == 552)
        {
            with (obj_writer)
                instance_destroy();
            
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_394_0");
            w = instance_create(80, 185, obj_writer);
        }
        
        if (contimer == 828)
        {
            with (obj_writer)
                instance_destroy();
            
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_401_0");
            w = instance_create(80, 185, obj_writer);
            fadespeed = 0.02;
            fadecolor = c_black;
            chunkfade = 1;
        }
        
        if (contimer >= 1104)
        {
            xoff = 0;
            yoff = 0;
            fadespeed = 0.01;
            contimer = 0;
            c_chunkamt = 0;
            chunkfade = 0;
            con = 10;
            c_chunkamt = 0;
            pic = spr_introimage6;
            border = 1;
            ytimer = 0;
            xtimer = 0;
            
            with (obj_writer)
                instance_destroy();
            
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_426_0");
            w = instance_create(40, 160, obj_writer);
        }
    }
    
    if (con == 10)
    {
        draw_sprite(pic, 0, 60 + xoff, 28 + yoff);
        ytimer += 1;
        
        if (ytimer >= 4 && yoff > -110)
        {
            ytimer = 0;
            yoff -= 1;
        }
        
        contimer += 1;
        
        if (contimer == 276)
        {
            with (obj_writer)
                instance_destroy();
            
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_451_0");
            w = instance_create(80, 160, obj_writer);
        }
        
        if (contimer == 552)
        {
            with (obj_writer)
                instance_destroy();
            
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_459_0");
            w = instance_create(80, 160, obj_writer);
        }
        
        if (contimer == 888)
        {
            with (obj_writer)
                instance_destroy();
            
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_466_0");
            w = instance_create(40, 160, obj_writer);
        }
        
        if (contimer == 1280)
        {
            with (obj_writer)
                instance_destroy();
            
            global.msg[0] = scr_84_get_lang_string("obj_legend_slash_Draw_0_gml_473_0");
            w = instance_create(40, 160, obj_writer);
        }
        
        if (contimer >= 888)
        {
            xtimer += 1;
            
            if (xoff > -60 && xtimer >= 4)
            {
                xtimer = 0;
                xoff -= 1;
            }
        }
        
        if (contimer == 1520)
        {
            fadespeed = 0.01;
            chunkfade = 1;
        }
        
        if (contimer == 1760 && skipped == 0)
        {
            snd_free(global.currentsong[0]);
            global.flag[6] = 0;
            f = instance_create(0, 0, obj_fadeout);
            f.fadespeed = 0.01;
        }
        
        if (contimer == 1920 && skipped == 0)
        {
            if (global.plot == 20)
            {
                instance_create(0, 0, obj_persistentfadein);
                room_goto(room_castle_front);
            }
            else
            {
                room_goto(PLACE_LOGO);
            }
        }
    }
    
    if (border == 1)
    {
        draw_set_color(c_black);
        draw_rectangle(-10, -10, 330, 27, false);
        draw_rectangle(-10, -10, 59, 300, false);
        draw_rectangle(400, -10, 260, 300, false);
        draw_rectangle(-10, 400, 330, 138, false);
    }
    
    if (chunkfade == 0 && chunkamt > 0)
        chunkamt -= fadespeed;
    
    if (chunkfade == 1 && chunkamt < 1)
        chunkamt += fadespeed;
    
    draw_set_color(fadecolor);
    alph = 0;
    
    if (chunkamt >= 0.125)
        alph = 0.125;
    
    if (chunkamt >= 0.25)
        alph = 0.25;
    
    if (chunkamt >= 0.375)
        alph = 0.375;
    
    if (chunkamt >= 0.5)
        alph = 0.5;
    
    if (chunkamt >= 0.625)
        alph = 0.625;
    
    if (chunkamt >= 0.75)
        alph = 0.75;
    
    if (chunkamt >= 0.875)
        alph = 0.875;
    
    if (chunkamt >= 1)
        alph = 1;
    
    draw_set_alpha(alph);
    draw_rectangle(-10, -10, 330, 330, false);
}

draw_set_alpha(1);

if (ingame == 0)
{
    if (skip_buffer > 0)
    {
        if (!button1_p())
            skip_buffer--;
        
        exit;
    }
    
    if (!variable_instance_exists(id, "presscount"))
        presscount = 0;
    
    if (button1_p())
        presscount++;
    
    if (!skipped)
    {
        if ((button1_p() && textimer > 60) || presscount >= 2)
        {
            skipped = 1;
            skiptimer = 0;
            f = instance_create(0, 0, obj_fadeout);
            f.fadespeed = 0.04;
            mus_volume(global.currentsong[1], 0, 30);
        }
    }
    
    if (skipped == 1)
        skiptimer += 1;
    
    if (skiptimer == 38)
    {
        snd_free(global.currentsong[0]);
        global.flag[6] = 0;
    }
    
    if (skiptimer == 40)
        room_goto(PLACE_LOGO);
}
