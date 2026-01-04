function scr_get_room_by_id(arg0)
{
    var room_id = arg0;
    var rooms = scr_get_room_list();
    
    if (room_id < 10000)
    {
        room_index = room_id;
        var room_offset = room_index;
        
        if (room_index < 281)
            room_offset = 281 + room_index;
        
        room_id = room_offset;
        room_id += (global.chapter * 10000);
    }
    
    var room_index = 0;
    
    for (var i = 0; i < array_length_1d(rooms); i++)
    {
        if (rooms[i].room_id == room_id)
        {
            room_index = rooms[i].room_index;
            break;
        }
    }
    
    return room_index;
}

function scr_get_id_by_room_index(arg0)
{
    var room_index = arg0;
    var rooms = scr_get_room_list();
    var room_id = ROOM_INITIALIZE;
    
    for (var i = 0; i < array_length_1d(rooms); i++)
    {
        if (rooms[i].room_index == room_index)
        {
            room_id = rooms[i].room_id;
            break;
        }
    }
    
    return room_id;
}

function scr_room(arg0, arg1) constructor
{
    room_index = arg0;
    room_id = arg1;
}

function scr_get_room_list()
{
    var idsarr = [new scr_room(room_dark1, 10284), new scr_room(room_dark1a, 10285), new scr_room(room_dark2, 10286), new scr_room(room_dark3, 10287), new scr_room(room_dark3a, 10288), new scr_room(room_dark_wobbles, 10289), new scr_room(room_dark_eyepuzzle, 10290), new scr_room(room_dark7, 10291), new scr_room(room_dark_chase1, 10292), new scr_room(room_dark_chase2, 10293), new scr_room(room_castle_outskirts, 10294), new scr_room(room_castle_town, 10295), new scr_room(room_castle_front, 10296), new scr_room(room_castle_tutorial, 10297), new scr_room(room_castle_darkdoor, 10298), new scr_room(room_field_start, 10299), new scr_room(room_field_forest, 10300), new scr_room(room_field1, 10301), new scr_room(room_field2, 10302), new scr_room(room_field2A, 10303), new scr_room(room_field_topchef, 10304), new scr_room(room_field_puzzle1, 10305), new scr_room(room_field_maze, 10306), new scr_room(room_field_puzzle2, 10307), new scr_room(room_field_getsusie, 10308), new scr_room(room_field_shop1, 10309), new scr_room(room_field_puzzletutorial, 10310), new scr_room(room_field3, 10311), new scr_room(room_field_boxpuzzle, 10312), new scr_room(room_field4, 10313), new scr_room(room_field_secret1, 10314), new scr_room(room_field_checkers4, 10315), new scr_room(room_field_checkers2, 10316), new scr_room(room_field_checkers6, 10317), new scr_room(room_field_checkers3, 10318), new scr_room(room_field_checkers1, 10319), new scr_room(room_field_checkers5, 10320), new scr_room(room_field_checkers7, 10321), new scr_room(room_field_checkersboss, 10322), new scr_room(room_forest_savepoint1, 10323), new scr_room(room_forest_area0, 10324), new scr_room(room_forest_area1, 10325), new scr_room(room_forest_area2, 10326), new scr_room(room_forest_area2A, 10327), new scr_room(room_forest_puzzle1, 10328), new scr_room(room_forest_beforeclover, 10329), new scr_room(room_forest_area3A, 10330), new scr_room(room_forest_area3, 10331), new scr_room(room_forest_savepoint2, 10332), new scr_room(room_forest_smith, 10333), new scr_room(room_forest_area4, 10334), new scr_room(room_forest_dancers1, 10335), new scr_room(room_forest_secret1, 10336), new scr_room(room_forest_thrashmaker, 10337), new scr_room(room_forest_starwalker, 10338), new scr_room(room_forest_area5, 10339), new scr_room(room_forest_savepoint_relax, 10340), new scr_room(room_forest_maze1, 10341), new scr_room(room_forest_maze_deadend, 10342), new scr_room(room_forest_maze_susie, 10343), new scr_room(room_forest_maze2, 10344), new scr_room(room_forest_maze_deadend2, 10345), new scr_room(room_forest_savepoint3, 10346), new scr_room(room_forest_fightsusie, 10347), new scr_room(room_forest_afterthrash2, 10348), new scr_room(room_forest_afterthrash3, 10349), new scr_room(room_forest_afterthrash4, 10350), new scr_room(room_forest_castleview, 10351), new scr_room(room_forest_chase1, 10352), new scr_room(room_forest_chase2, 10353), new scr_room(room_forest_castlefront, 10354), new scr_room(room_empty, 10355), new scr_room(room_man, 10356), new scr_room(room_test_field, 10357)];
    return idsarr;
}
