if place_meeting(x, (y - 1), obj_player)
{
    with (obj_player)
    {
        if (place_meeting(x, (y + 1), obj_ladder) && key_down && (state == (62 << 0) || state == (71 << 0)) && place_meeting(x, (y + 1), obj_platform) && (!(place_meeting(x, y, obj_platform))))
        {
            y += 5
            state = (56 << 0)
            x = other.x + 16
            y = floor(y)
            if ((y % 2) == 1)
                y -= 1
        }
    }
}
