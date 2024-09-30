flags.do_save = false
flags.do_once = false
condition = function() //anon@58@gml_RoomCC_mines_4_0_Create
{
    return (place_meeting(x, y, obj_player) && (!instance_exists(obj_cutsceneManager)) && (!global.treat));
}

output = function() //anon@196@gml_RoomCC_mines_4_0_Create
{
    cutscene_create([cutscene_rosetteMines_prestart, cutscene_rosetteMines_start, cutscene_rosetteMines_middle, cutscene_rosetteMines_grab, cutscene_rosetteMines_end])
}

