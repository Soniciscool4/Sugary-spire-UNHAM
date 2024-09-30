flags.do_once_per_save = true
condition = function() //anon@43@gml_RoomCC_mines_4_6_Create
{
    return (ds_list_find_index(global.saveroom, 107313) != -1 && (!global.minesProgress));
}

output = function() //anon@250@gml_RoomCC_mines_4_6_Create
{
    global.minesProgress = true
    obj_music.fadeoff = 0
    audio_stop_all_music()
}

