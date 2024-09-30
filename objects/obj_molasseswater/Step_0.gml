if (place_meeting(x, y, obj_player) && obj_player.state != (118 << 0) && obj_player.sprite_index != obj_player.spr_candybegin && obj_player.sprite_index != obj_player.spr_candyidle && obj_player.sprite_index != obj_player.spr_candyup && obj_player.sprite_index != obj_player.spr_candytransitionup && (!instance_exists(obj_technicaldifficulty)) && obj_player.vsp > 0 && obj_player.state != (120 << 0))
{
    with (instance_place(x, y, obj_player))
    {
        state = (118 << 0)
        drownbuffer = 30
        vsp = 0
    }
}
