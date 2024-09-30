if (other.state != (20 << 0) && other.Dashpad_buffer <= 0)
{
    with (other)
    {
        if (state != (61 << 0) && state != (98 << 0) && state != (115 << 0) && state != (101 << 0) && state != (62 << 0) && sprite_get_bbox_bottom(mask_index) <= other.bbox_bottom)
        {
            if (state == (67 << 0) && xscale == sign(other.image_xscale))
                movespeed += 4
            movespeed = clamp(movespeed, 12, 24)
            state = (67 << 0)
            Dashpad_buffer = 25
            sprite_index = spr_dashpadboost
            xscale = sign(other.image_xscale)
            scr_sound(sfx_dashpad)
            var try_y = 0
            while (try_y <= 16)
            {
                if scr_solid(x, (other.y - try_y))
                    try_y++
                else
                {
                    y = other.y - try_y
                    break
                }
            }
            if (state != (10 << 0) && (!(scr_solid(other.x, y))))
                x = other.x
            image_index = 0
            vsp = 3
            flash = true
        }
        else if ((state == (98 << 0) || state == (115 << 0)) && sprite_get_bbox_bottom(mask_index) <= other.bbox_bottom)
        {
            movespeed++
            movespeed = clamp(movespeed, 12, 15)
            flash = true
            Dashpad_buffer = 25
            xscale = sign(other.image_xscale)
            image_index = 0
            sprite_index = spr_pl_minecartfastland
            if (state == (115 << 0))
                state = (98 << 0)
            scr_sound(sfx_dashpad)
        }
    }
}
