if (global.savedata_async_id >= 0)
    exit;

if (global.is_console)
{
    if (!variable_global_exists("init_prefetch"))
    {
        global.init_prefetch = true;
        scr_prefetch_textures();
    }
}

if (audio_group_is_loaded(1))
{
    menu_go = 0;
if (menu_go == 0)
    {
        scr_windowcaption("DELTARUNE [cq_adaptation_build]");
        global.tempflag[10] = 1;
        roomchoice = room_legend;
        global.plot = 0;
    }
    
    room_goto(roomchoice);
}
