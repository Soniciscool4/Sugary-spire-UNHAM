function scr_pizzano_wallcling() //scr_pizzano_wallcling
{
    hsp = 0
    if (sprite_index == spr_pizzano_wallcling)
        vsp = 0
    else
        vsp = 3
    image_speed = 0.35
    if (sprite_index == spr_pizzano_wallcling && floor(image_index) == (image_number - 1))
        sprite_index = spr_pizzano_wallslide
    if (key_jump && (!grounded))
    {
        movespeed = 8
        vsp = -12
        xscale *= -1
        state = (111 << 0)
    }
    if grounded
        state = (0 << 0)
    if ((!(scr_solid((x - 1), y))) && (!(scr_solid((x + 1), y))))
    {
        state = (0 << 0)
        sprite_index = spr_fall
    }
}

