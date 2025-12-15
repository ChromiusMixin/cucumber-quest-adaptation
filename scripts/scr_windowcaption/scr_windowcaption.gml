function scr_windowcaption(arg0)
{
    if (global.tempflag[10] == 1)
        window_set_caption("DELTARUNE [cq_adaptation_build]");
    else
        window_set_caption(arg0);
}
