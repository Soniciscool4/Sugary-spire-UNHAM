function scr_pizzano_shoulderbash() //scr_pizzano_shoulderbash
{
    move = key_left + key_right
    hsp = xscale * movespeed
    landAnim = true
    jumpstop = false
    image_speed = 0.4
    if (move != 0)
    {
        if (move != xscale && movespeed > -10)
            movespeed -= 1
        else if (move == xscale && movespeed < 10)
            movespeed += 0.2
    }
    if (floor(image_index) == (image_number - 1))
    {
        switch sprite_index
        {
            case spr_pizzano_kungfu1:
            case spr_pizzano_kungfu2:
                if (move == 0 || (!key_attack))
                    state = (0 << 0)
                else if (movespeed < 12 && key_attack)
                {
                    sprite_index = spr_mach
                    state = (66 << 0)
                }
                else if (movespeed >= 12 && key_attack)
                {
                    sprite_index = spr_pizzano_mach3grounded
                    state = (67 << 0)
                }
                if (move != xscale && move != 0)
                    movespeed = 2
                break
        }

    }
    else if (((!grounded) && place_meeting((x + hsp), y, obj_solid) && (!(place_meeting((x + hsp), y, obj_destructibles))) && (!(place_meeting((x + sign(hsp)), y, obj_slope)))) || (grounded && place_meeting((x + hsp), (y - 32), obj_solid) && (!(place_meeting((x + hsp), y, obj_destructibles))) && (!(place_meeting((x + hsp), y, obj_metalblock))) && place_meeting(x, (y + 1), obj_slope)))
    {
        sprite_index = spr_pizzano_wallclimb
        wallspeed = movespeed
        state = (10 << 0)
    }
    if (key_jump2 && grounded && vsp > 0 && (!jumpstop))
    {
        state = (111 << 0)
        sprite_index = spr_pizzano_twirl
        vsp = -12
    }
}

