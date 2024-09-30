function scr_player_barrelfall() //scr_player_barrelfall
{
    if (mask_index == spr_player_mask || mask_index == spr_crouchmask)
        mask_index = spr_player_mask
    if (vsp < 12)
        vsp += grav
    if place_meeting(x, y, obj_water2)
        vsp -= 1
    if grounded
    {
        state = (80 << 0)
        image_index = 0
    }
    if place_meeting(x, y, obj_water2)
    {
        state = (79 << 0)
        image_index = 0
    }
    sprite_index = spr_player_barrelfall
    image_speed = 0.35
}

