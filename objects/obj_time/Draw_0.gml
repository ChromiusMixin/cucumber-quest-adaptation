if (scr_debug())
{
    draw_set_font(fnt_main);
    draw_set_color(c_red);
    draw_text(__view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), string(fps) + " / " + string(room_speed) + " FPS");
    draw_text(__view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0) + 10, "Plot value: " + string(global.plot));
    draw_set_color(c_white);
}
