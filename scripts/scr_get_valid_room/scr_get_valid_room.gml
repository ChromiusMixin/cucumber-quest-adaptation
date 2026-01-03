function scr_get_valid_room(arg0, arg1, arg2 = 0)
{
    var chapter = arg0;
    var room_id = arg1;
    var plot = arg2;
    var current_room = new scr_valid_room(scr_get_room_by_id(room_id), plot);
    var valid_rooms;
    
    if (chapter == 1)
        valid_rooms = [new scr_valid_room(room_test_field, 0), new scr_valid_room(room_krisroom, 0), new scr_valid_room(room_dark1a, 11), new scr_valid_room(room_dark_eyepuzzle, 11), new scr_valid_room(room_castle_town, 16), new scr_valid_room(room_field_start, 33), new scr_valid_room(room_field_shop1, 42), new scr_valid_room(room_field_checkers3, 55), new scr_valid_room(room_field_checkers7, 55), new scr_valid_room(room_forest_savepoint1, 60), new scr_valid_room(room_forest_savepoint2, 75), new scr_valid_room(room_forest_savepoint_relax, 75), new scr_valid_room(room_forest_savepoint3, 120), new scr_valid_room(room_forest_fightsusie, 130), new scr_valid_room(room_field_maze, 0)];
    
    var is_valid = false;
    
    for (var i = 0; i < array_length_1d(valid_rooms); i++)
    {
        if (scr_get_id_by_room_index(current_room.room_index) == scr_get_id_by_room_index(valid_rooms[i].room_index))
        {
            is_valid = true;
            break;
        }
    }
    
    if (!is_valid)
    {
        current_room.room_index++;
        
        for (var i = 0; i < array_length_1d(valid_rooms); i++)
        {
            if (scr_get_id_by_room_index(current_room.room_index) == scr_get_id_by_room_index(valid_rooms[i].room_index))
            {
                is_valid = true;
                break;
            }
        }
    }
    
    if (!is_valid)
        current_room.room_index--;
    
    return current_room.room_index;
}

function scr_valid_room(arg0, arg1) constructor
{
    room_index = arg0;
    plot = arg1;
}

function scr_add_valid_room(arg0, arg1, arg2) constructor
{
}
