myinteract = 3;
global.msc = 0;
global.typer = 6;
global.fe = 0;
global.fc = 0;
global.interact = 1;

with (obj_darkcontroller)
    charcon = 0;

global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_11_0");

if (room == room_dark2 || room == room_dark3 || room == room_dark7)
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_400_0");

if (room == room_dark3a)
{
    global.msc = 110;
    scr_text(110);
}

if (room == room_dark_eyepuzzle)
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_411_0");

if (room == room_castle_town)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_416_0");
    
    if (read >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_419_0");
    
    with (obj_readable_room1)
        read += 1;
}

if (room == room_castle_front)
{
    global.typer = 31;
    global.fc = 2;
    global.fe = 0;
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_429_0");
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_430_0");
    global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_431_0");
    
    if (read > 0)
    {
        global.fe = 1;
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_435_0");
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_436_0");
    }
}

if (room == room_castle_outskirts)
{
    global.typer = 31;
    global.fc = 2;
    global.fe = 1;
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_446_0");
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_447_0");
}

if (room == room_field_puzzle1)
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_452_0");

if (room == room_field_shop1)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_457_0");
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_458_0");
}

if (room == room_field_checkers1 || room == room_field_checkers4 || room == room_field_checkers6)
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_465_0");

if (room == room_field_puzzletutorial)
{
    global.msc = 250;
    scr_text(global.msc);
}

if (room == room_field_checkers5)
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_476_0");

if (room == room_forest_area3)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_481_0");
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_482_0");
    global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_483_0");
    
    if (read >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_486_0");
    
    if (y >= 400)
    {
        if (x < 600)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_493_0");
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_494_0");
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_495_0");
            global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_496_0");
            
            if (read >= 1)
                global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_499_0");
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_504_0");
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_505_0");
            global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_506_0");
            
            if (x >= 1100)
            {
                global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_510_0");
                global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_511_0");
                global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_512_0");
            }
        }
        
        if (global.plot >= 75)
        {
            holecon = 999;
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_519_0");
        }
    }
}

if (room == room_forest_area5)
{
    if (x <= 340)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_530_0");
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_531_0");
    }
    
    if (x >= 600 && x <= 1300)
    {
        if (global.flag[237] == 0)
        {
            global.flag[237] = 1;
            snd_play(snd_screenshake);
            instance_create(0, 0, obj_shake);
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_540_0");
            global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_541_0");
            
            if (obj_mainchara.becamebattle == 0)
            {
                global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_544_0");
                global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_545_0");
                scr_ralface(2, 1);
                global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_547_0");
                global.msg[4] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_548_0");
            }
            
            with (obj_tempblock_room)
            {
                with (tree)
                    instance_destroy();
                
                with (block)
                    instance_destroy();
                
                with (talkto)
                    instance_destroy();
            }
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_559_0");
        }
    }
    
    if (x >= 1350)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_564_0");
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_565_0");
    }
}

if (room == room_forest_starwalker)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_571_0");
    
    if (read == 0)
    {
        snd_play(snd_item);
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_575_0");
        global.gold += 40;
    }
    
    read += 1;
}

if (room == room_field_boxpuzzle)
{
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_636_0");
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_637_0");
}

if (room == room_forest_thrashmaker)
{
    global.fc = 2;
    global.fe = 5;
    global.typer = 31;
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_647_0");
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_648_0");
    
    if (scr_havechar(2))
    {
        global.fc = 1;
        global.fe = 0;
        global.typer = 30;
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_654_0");
        scr_ralface(1, 1);
        global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_656_0");
        scr_susface(3, 2);
        global.msg[4] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_658_0");
    }
}

if (room == room_forest_area1)
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_666_0");

if (room == room_man)
{
    if (y >= 220)
    {
        if (global.flag[910] < 2)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_673_0");
        else
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_675_0");
    }
    else if (global.flag[910] >= 2)
    {
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_682_0");
    }
    else
    {
        global.msc = 600;
        scr_text(global.msc);
    }
}

mydialoguer = instance_create(0, 0, obj_dialoguer);
read += 1;
