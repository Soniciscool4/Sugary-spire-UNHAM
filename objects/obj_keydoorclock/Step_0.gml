with (obj_player)
{
    if (place_meeting(x, y, other.id) && key_up && grounded && (state == (0 << 0) || state == (61 << 0) || state == (65 << 0) || state == (66 << 0) || state == (67 << 0)) && (!instance_exists(obj_fadeout)) && state != (74 << 0) && state != (58 << 0) && state != (59 << 0))
    {
        if (ds_list_find_index(global.saveroom, other.id) != -1)
        {
            mach2 = 0
            image_index = 0
            obj_camera.chargecamera = 0
            targetDoor = other.targetDoor
            targetRoom = other.targetRoom
            state = (74 << 0)
            global.roomsave = false
        }
        else if global.key_inv
        {
            scr_sound(sound_unlockingdoor)
            state = (58 << 0)
            image_index = 0
            obj_camera.chargecamera = 0
            targetDoor = other.targetDoor
            targetRoom = other.targetRoom
            with (other)
            {
                ds_list_add(global.saveroom, id)
                image_index = 0
                sprite_index = spr_clockdoor
                image_speed = 0.35
            }
            global.key_inv = false
            global.roomsave = false
        }
    }
}
