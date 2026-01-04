global.msc = 0;
global.typer = 6;
global.fc = 0;
global.fe = 0;
global.interact = 1;
image_speed = 0.1;

global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_11_0");

if (room == room_castle_tutorial)
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_41_0");

if (room == room_field2)
{
    if (global.flag[501] == 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_48_0");
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_49_0");
    }
    
    if (global.flag[501] == 2)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_53_0");
    
    if (global.flag[501] == 3)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_57_0");
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_58_0");
    }
}

if (room == room_field2A)
{
    global.msc = 145;
    scr_text(global.msc);
}

if (room == room_field_puzzle1)
{
    global.msc = 147;
    scr_text(global.msc);
}

if (room == room_field_topchef)
{
    if (y >= 160)
    {
        image_speed = 0.166;
        normalanim = 2;
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_81_0");
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_82_0");
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_83_0");
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_84_0");
        scr_ralface(4, 8);
        global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_86_0");
        global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_87_0");
        
        if (talked >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_90_0");
        
        if (scr_havechar(2))
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_95_0");
            scr_susface(1, 2);
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_97_0");
            scr_noface(3);
            global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_99_0");
            scr_susface(5, 2);
            global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_101_0");
            
            if (talked >= 1)
            {
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_104_0");
                scr_susface(1, 0);
                global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_106_0");
                scr_ralface(3, 9);
                global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_108_0");
                scr_susface(5, 2);
                global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_110_0");
            }
        }
        
        if (scr_itemcheck(6))
        {
            global.msc = 465;
            scr_text(global.msc);
        }
        
        if (global.flag[253] == 1)
        {
            global.msc = 470;
            scr_text(global.msc);
        }
    }
    else
    {
        global.msc = 149;
        scr_text(global.msc);
    }
}

if (room == room_field_maze)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_137_0");
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_138_0");
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_139_0");
    
    if (global.plot < 37)
    {
        scr_ralface(3, 3);
        global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_143_0");
    }
    else
    {
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_147_0");
    }
    
    if (talked >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_152_0");
    
    if (scr_havechar(2))
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_157_0");
        scr_susface(1, 2);
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_159_0");
        
        if (talked >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_165_0");
    }
    
    if (x > 1600)
    {
        global.fc = 5;
        global.fe = 0;
        global.typer = 32;
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_175_0");
        scr_ralface(1, 1);
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_177_0");
        scr_lanface(3, 2);
        global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_179_0");
    }
}

if (room == room_field_shop1)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_186_0");
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_187_0");
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_188_0");
}

if (room == room_field_puzzletutorial)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_193_0");
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_194_0");
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_195_0");
    global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_196_0");
    
    if (x <= (room_width / 2))
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_200_0");
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_201_0");
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_202_0");
        
        if (talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_205_0");
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_206_0");
        }
    }
    
    if (y >= (room_height / 2))
    {
        if (x <= (room_width / 2))
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_214_0");
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_215_0");
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_216_0");
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_217_0");
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_221_0");
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_222_0");
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_223_0");
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_224_0");
        }
    }
}

if (room == room_field4)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_233_0");
    
    if (scr_havechar(3) && scr_havechar(2))
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_236_0");
        scr_ralface(1, 8);
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_238_0");
        scr_susface(3, 2);
        global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_240_0");
        scr_ralface(5, 8);
        global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_242_0");
        global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_243_0");
        
        if (talked >= 1)
        {
            scr_ralface(0, 8);
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_248_0");
            scr_susface(2, 0);
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_250_0");
            scr_ralface(4, 1);
            global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_252_0");
            scr_susface(6, 7);
            global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_254_0");
        }
    }
}

if (room == room_field_puzzletutorial)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_262_0");
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_263_0");
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_264_0");
    global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_265_0");
    
    if (talked >= 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_269_0");
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_270_0");
    }
}

if (room == room_field_checkers7)
{
    if (sprite_index == spr_npc_mrelegance)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_278_0");
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_279_0");
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_280_0");
        
        if (talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_284_0");
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_285_0");
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_286_0");
        }
    }
    else
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_292_0");
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_293_0");
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_294_0");
        
        if (talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_297_0");
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_298_0");
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_299_0");
        }
        
        if (global.plot >= 60)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_304_0");
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_305_0");
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_306_0");
        }
    }
}

if (room == room_forest_savepoint1)
{
    if (sprite_index == spr_npc_puzzlepiece)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_316_0");
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_317_0");
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_318_0");
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_319_0");
        
        if (global.plot >= 154)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_322_0");
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_323_0");
        }
        
        if (talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_327_0");
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_328_0");
        }
    }
    
    if (sprite_index == spr_npc_mrelegance)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_334_0");
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_335_0");
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_336_0");
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_337_0");
        
        if (global.flag[251] == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_340_0");
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_341_0");
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_342_0");
        }
        
        if (global.plot >= 154)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_346_0");
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_347_0");
        }
        
        if (talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_352_0");
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_353_0");
        }
    }
}

if (room == room_forest_area1)
{
    if (sprite_index == spr_diamond_overworld)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_365_0");
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_366_0");
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_367_0");
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_368_0");
        
        if (talked >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_372_0");
    }
}

if (room == room_forest_area2A)
{
    if (x <= (room_width / 2))
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_383_0");
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_384_0");
        
        if (global.flag[108] == 1 && global.flag[233] == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_388_0");
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_389_0");
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_390_0");
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_391_0");
        }
        
        if (global.flag[108] == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_397_0");
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_398_0");
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_399_0");
            global.flag[233] = 1;
        }
        
        if (global.flag[108] == 1 && scr_weaponcheck_inventory(9) == 0 && global.charweapon[3] != 9)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_406_0");
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_407_0");
        }
        
        if (talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_412_0");
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_413_0");
        }
    }
    
    if (x >= (room_width / 2))
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_420_0");
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_421_0");
    }
}

if (room == room_forest_area3)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_428_0");
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_429_0");
    global.flag[236] = 1;
}

if (room == room_forest_area3A)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_436_0");
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_437_0");
    
    if (talked >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_442_0");
    
    if (x >= (room_width / 2))
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_448_0");
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_449_0");
        
        if (talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_454_0");
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_455_0");
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_456_0");
        }
    }
}

if (room == room_forest_savepoint2)
{
    if (x < 800)
    {
        global.msc = 325;
        scr_text(global.msc);
    }
    
    if (x >= 800 && x <= 880)
    {
        global.msc = 327;
        scr_text(global.msc);
    }
    
    if (x >= 920)
    {
        if (global.plot < 80)
        {
            global.msc = 330;
            scr_text(global.msc);
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_486_0");
        }
    }
}

if (room == room_forest_area4)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_493_0");
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_494_0");
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_495_0");
    
    if (talked >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_498_0");
}

if (room == room_forest_starwalker)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_504_0");
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_505_0");
    global.flag[254] = 1;
}

if (room == room_forest_savepoint_relax)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_511_0");
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_512_0");
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_513_0");
    global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_514_0");
    
    if (talked >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_515_0");
    
    if (global.plot >= 90)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_519_0");
    
    if (sprite_index == spr_lancer_dark_relax)
    {
        global.fc = 2;
        global.fe = 0;
        global.typer = 31;
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_527_0");
        scr_lanface(1, 0);
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_529_0");
        scr_ralface(3, 8);
        global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_531_0");
        scr_susface(5, 0);
        global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_533_0");
        scr_ralface(7, 6);
        global.msg[8] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_535_0");
        scr_lanface(9, 1);
        global.msg[10] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_537_0");
        global.msg[11] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_538_0");
        scr_susface(12, 2);
        global.msg[13] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_540_0");
        
        if (talked >= 1)
        {
            global.fc = 5;
            global.fe = 3;
            global.typer = 32;
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_547_0");
            scr_susface(1, 2);
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_549_0");
            scr_ralface(3, "A");
            global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_551_0");
            global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_552_0");
        }
    }
    
    if (sprite_index == spr_susie_dark_relax)
    {
        global.fc = 2;
        global.fe = 6;
        global.typer = 31;
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_560_0");
        scr_susface(1, 1);
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_562_0");
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_563_0");
        global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_564_0");
        scr_lanface(5, 6);
        global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_566_0");
        global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_567_0");
        global.msg[8] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_568_0");
        scr_susface(9, 2);
        global.msg[10] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_570_0");
        
        if (talked >= 1)
        {
            global.fc = 1;
            global.fe = 1;
            global.typer = 30;
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_577_0");
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_578_0");
            scr_lanface(2, 3);
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_580_0");
        }
    }
}

if (room == room_forest_fightsusie)
{
    global.typer = 31;
    global.fe = 8;
    global.fc = 2;
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_591_0");
    scr_lanface(1, 3);
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_593_0");
    
    if (talked >= 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_597_0");
        scr_lanface(1, 3);
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_599_0");
    }
}

remanimspeed = image_speed;
myinteract = 3;
mydialoguer = instance_create(0, 0, obj_dialoguer);
talked += 1;
