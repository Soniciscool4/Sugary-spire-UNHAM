if (place_meeting((x + obj_player.hsp), y, obj_player) && obj_player.state == (15 << 0) && (!global.combomode))
{
    with (obj_player)
    {
        state = (84 << 0)
        image_index = 0
        sprite_index = choose(spr_player_suplexmash1, spr_player_suplexmash2, spr_player_suplexmash3, spr_player_suplexmash4)
    }
    if (obj_player.state == (84 << 0))
    {
        sprite_index = spr_tvturnon
        global.combomode = true
        with (obj_tv)
        {
            message = "NON STOP COMBO MODE ACTIVATED"
            showtext = true
            alarm[0] = 200
        }
    }
}
if (place_meeting((x + obj_player.hsp), y, obj_player) && obj_player.state == (15 << 0) && global.combomode)
{
    with (obj_player)
    {
        state = (84 << 0)
        image_index = 0
        sprite_index = choose(spr_player_suplexmash1, spr_player_suplexmash2, spr_player_suplexmash3, spr_player_suplexmash4)
    }
    if (obj_player.state == (84 << 0))
    {
        sprite_index = spr_tvoff
        global.combomode = false
        with (obj_tv)
        {
            message = "NORMAL COMBO MODE ACTIVATED"
            showtext = true
            alarm[0] = 200
        }
    }
}
