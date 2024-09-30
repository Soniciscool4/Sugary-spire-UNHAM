with (instance_nearest(x, y, obj_player))
{
    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && (state == (67 << 0) || state == (17 << 0) || state == (92 << 0) || state == (101 << 0) || state == (11 << 0) || state == (2 << 0) || state == (29 << 0) || state == (102 << 0) || state == (98 << 0) || state == (100 << 0) || (state == (17 << 0) && momemtum) || state == (115 << 0)))
    {
        with (other.id)
            event_user(0)
    }
    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id) || place_meeting(x, (y + vsp), other.id)) && state == (120 << 0))
    {
        with (other.id)
            event_user(0)
    }
    if (((place_meeting(x, (y + vsp), other.id) && vsp < 0) || place_meeting(x, (y - 1), other.id)) && state == (60 << 0))
    {
        with (other.id)
            event_user(0)
    }
    if (((place_meeting(x, (y + vsp), other.id) && vsp >= 0) || place_meeting(x, (y + 1), other.id)) && (state == (72 << 0) || state == (34 << 0)) && smashbodyslam > 10)
    {
        with (other.id)
            event_user(0)
    }
}
