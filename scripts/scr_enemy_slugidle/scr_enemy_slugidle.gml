function scr_enemy_slugidle() //scr_enemy_slugidle
{
    movespeed = 0
    hsp = 0
    image_speed = 0.35
    sprite_index = spr_sluggy_idle
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_sluggy_idle)
    {
        state = (3 << 0)
        sprite_index = spr_sluggy
        movespeed = 1
        visible = 1
    }
}

