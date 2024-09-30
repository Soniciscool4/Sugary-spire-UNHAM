with (instance_nearest(x, y, obj_player))
{
    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && ((state == (85 << 0) && (sprite_index == spr_cottonattack || sprite_index == spr_cottonPizzano_drillup || sprite_index == spr_cottonPizzano_wallclimb || sprite_index == spr_cottonPizzano_fastfall || sprite_index == spr_cottonwalk)) || state == (95 << 0) || state == (103 << 0)))
    {
        with (other.id)
            instance_destroy()
    }
    if (((place_meeting(x, (y + vsp), other.id) && vsp > 0) || place_meeting(x, (y + 1), other.id)) && (state == (94 << 0) || (state == (85 << 0) && sprite_index == spr_cottonPizzano_fastfall)))
    {
        with (other.id)
            instance_destroy()
    }
    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && (state == (98 << 0) || ((state == (67 << 0) || state == (15 << 0) || state == (102 << 0)) && ischaracter == "minecart" && hsp != 0 && global.levelname == "mines")))
    {
        with (other.id)
            instance_destroy()
    }
}
