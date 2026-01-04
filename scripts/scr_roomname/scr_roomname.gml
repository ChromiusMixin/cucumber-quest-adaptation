function scr_roomname(arg0)
{
    roomname = " ";
    
    if (arg0 == 0)
        roomname = "---";

    if (arg0 == room_dark1a)
        roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_4_0");
    
    if (arg0 == room_dark_eyepuzzle)
        roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_5_0");
    
    if (arg0 == room_castle_town)
        roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_6_0");
    
    if (arg0 == room_field_start)
        roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_7_0");
    
    if (arg0 == room_field_shop1)
        roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_8_0");
    
    if (arg0 == room_field_checkers3)
        roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_9_0");
    
    if (arg0 == room_field_checkers7)
        roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_10_0");
    
    if (arg0 == room_forest_savepoint1)
        roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_11_0");
    
    if (arg0 == room_forest_savepoint2)
        roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_12_0");
    
    if (arg0 == room_forest_savepoint_relax)
        roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_13_0");
    
    if (arg0 == room_forest_savepoint3)
        roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_14_0");
    
    if (arg0 == room_forest_fightsusie)
        roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_15_0");
    
	if (arg0 == room_test_field)
        roomname = "Debug Kingdom - Test"
    
    if (arg0 == 56)
    {
        if (global.lang == "en")
            roomname = "Field - Maze of Death";
        
        if (global.lang == "ja")
            roomname = "平原 - 死の迷路";
    }
    
    return roomname;
}
