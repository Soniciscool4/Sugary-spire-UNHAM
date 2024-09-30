with (obj_player)
{
    if (other.image_yscale == 1)
    {
        if (((key_down && (!(place_meeting(x, (y + 1), obj_destructibles))) && place_meeting(x, (y + 1), other.id) && (state == (62 << 0) || state == (29 << 0))) || ((state == (64 << 0) || state == (71 << 0) || state == (72 << 0)) && (!(place_meeting(x, (y + 1), obj_destructibles))) && place_meeting(x, (y + 1), other.id))) && (!instance_exists(obj_fadeout)) && state != (74 << 0) && state != (59 << 0))
        {
            other.depth = -10
            scr_sound(sound_box)
            obj_player.box = 1
            mach2 = 0
            obj_camera.chargecamera = 0
            x = other.x
            obj_player.targetDoor = other.targetDoor
            obj_player.targetRoom = other.targetRoom
            if (character == "N")
                sprite_index = spr_pizzano_downpizzabox
            else
                sprite_index = spr_player_downpizzabox
            image_index = 0
            state = (74 << 0)
            image_speed = 0.35
        }
    }
    if (other.image_yscale == -1)
    {
        if ((key_up || state == (60 << 0) || state == (10 << 0)) && (!(place_meeting(x, (y - 1), obj_destructibles))) && place_meeting(x, (y - 1), other.id) && (state == (57 << 0) || state == (86 << 0) || state == (60 << 0) || state == (10 << 0)) && (!(place_meeting(x, (y - 1), obj_destructibles))) && place_meeting(x, (y - 1), other.id) && (!instance_exists(obj_fadeout)))
        {
            scr_sound(sound_box)
            other.depth = -10
            obj_player.box = 1
            other.depth = -8
            mach2 = 0
            obj_camera.chargecamera = 0
            x = other.x
            obj_player.targetDoor = other.targetDoor
            obj_player.targetRoom = other.targetRoom
            if (character == "N")
                sprite_index = spr_pizzano_uppizzabox
            else
                sprite_index = spr_player_uppizzabox
            image_index = 0
            state = (74 << 0)
            image_speed = 0.35
        }
    }
}
