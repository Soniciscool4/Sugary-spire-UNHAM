with (other)
{
    if (state != (99 << 0) && other.go)
    {
        scr_hurtplayer()
        image_index = 0
        if (state == (98 << 0))
        {
            instance_create(x, y, obj_bombexplosionharmless)
            for (var i = 0; i < (sprite_get_number(spr_minecartdebris) - 1); i++)
            {
                with (instance_create((x + (irandom_range(-9, 9))), (y + (irandom_range(-9, 9))), obj_debris))
                {
                    sprite_index = spr_minecartdebris
                    image_index = i
                    vsp = floor(random_range(-5, -9))
                    hsp = floor(random_range(-5, 7))
                }
            }
        }
        state = (99 << 0)
        if (character == "N")
            sprite_index = spr_pizzano_squished
        else
            sprite_index = spr_player_squished
        image_speed = 0.35
    }
}
