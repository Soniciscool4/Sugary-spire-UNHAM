function scr_player_barrelnormal() //scr_player_barrelnormal
{
    if (mask_index == spr_player_mask || mask_index == spr_crouchmask)
        mask_index = spr_player_mask
    move = key_left + key_right
    hsp = move * movespeed
    if (vsp < 12)
        vsp += grav
    if ((!grounded) && (!key_jump))
    {
        state = (76 << 0)
        image_index = 0
        hsp = 0
    }
    if ((key_down && grounded) || scr_solid(x, (y - 3)))
    {
        state = (80 << 0)
        image_index = 0
    }
    if (key_attack && grounded)
    {
        movespeed = 0
        state = (77 << 0)
        landAnim = false
    }
    if place_meeting(x, y, obj_water2)
        vsp -= 1
    movespeed = 2.5
    if (move == 0)
        sprite_index = spr_player_barrelidle
    if (move != 0)
    {
        sprite_index = spr_player_barrelmove
        xscale = move
    }
    image_speed = 0.35
}

