function scr_collide_destructibles() //scr_collide_destructibles
{
    if (state == (66 << 0) || state == (67 << 0) || state == (29 << 0) || (state == (85 << 0) && (sprite_index == spr_cottonattack || sprite_index == spr_cottonPizzano_wallclimb)) || (state == (57 << 0) && (sprite_index == spr_playerPZ_scooterspin || sprite_index == spr_playerPZ_scooterspinstart || sprite_index == spr_pizzano_wallclimbspin)) || state == (100 << 0) || state == (2 << 0) || state == (17 << 0) || state == (64 << 0) || state == (90 << 0) || state == (92 << 0) || state == (93 << 0) || state == (102 << 0) || state == (74 << 0) || state == (59 << 0) || state == (101 << 0) || state == (112 << 0) || state == (98 << 0) || state == (95 << 0) || state == (111 << 0) || sprite_index == spr_player_swingding || state == (115 << 0) || state == (120 << 0))
    {
        if place_meeting((x + hsp), y, obj_destructibles)
        {
            with (instance_place((x + hsp), y, obj_destructibles))
            {
                DestroyedBy = other.id
                event_user(0)
            }
            if (character == "P")
            {
                if (state == (66 << 0))
                    machpunchAnim = true
            }
        }
        if place_meeting((x + sign(hsp)), y, obj_destructibles)
        {
            with (instance_place((x + sign(hsp)), y, obj_destructibles))
            {
                DestroyedBy = other.id
                event_user(0)
            }
            if (character == "P")
            {
                if (state == (66 << 0))
                    machpunchAnim = true
            }
        }
        if place_meeting((x + xscale), y, obj_destructibles)
        {
            with (instance_place((x + xscale), y, obj_destructibles))
            {
                DestroyedBy = other.id
                event_user(0)
            }
            if (character == "P")
            {
                if (state == (66 << 0))
                    machpunchAnim = true
            }
        }
    }
    if ((state == (17 << 0) || state == (100 << 0) || state == (34 << 0) || state == (92 << 0) || state == (2 << 0) || state == (71 << 0) || state == (34 << 0)) && vsp >= 0)
    {
        if place_meeting(x, (y + vsp), obj_destructibles)
        {
            with (instance_place(x, (y + vsp), obj_destructibles))
            {
                DestroyedBy = other.id
                event_user(0)
            }
        }
    }
    if (state == (94 << 0) || (state == (57 << 0) && (sprite_index == spr_playerPZ_scooterspinstart || sprite_index == spr_playerPZ_scooterspin || sprite_index == spr_pizzano_wallclimbspin) && key_down && vsp >= 0))
    {
        if place_meeting(x, (y + vsp), obj_destructibles)
        {
            with (instance_place(x, (y + vsp), obj_destructibles))
            {
                DestroyedBy = other.id
                event_user(0)
            }
        }
        if place_meeting(x, (y + 1), obj_destructibles)
        {
            with (instance_place(x, (y + 1), obj_destructibles))
            {
                DestroyedBy = other.id
                event_user(0)
            }
        }
    }
    if (state == (10 << 0) && vsp < 0)
    {
        if place_meeting(x, (y + vsp), obj_destructibles)
        {
            with (instance_place(x, (y + vsp), obj_destructibles))
            {
                DestroyedBy = other.id
                event_user(0)
            }
        }
    }
    if (vsp >= 0 && (state == (92 << 0) || state == (71 << 0) || state == (72 << 0) || state == (34 << 0)))
    {
        if ((place_meeting(x, (y + vsp + 2), obj_metalblock) && state == (92 << 0)) || ((state == (71 << 0) || state == (72 << 0) || state == (34 << 0)) && smashbodyslam >= 10))
        {
            with (instance_place(x, (y + vsp + 2), obj_metalblock))
            {
                DestroyedBy = other.id
                event_user(0)
            }
        }
        if place_meeting(x, (y + vsp + 2), obj_destructibles)
        {
            with (instance_place(x, (y + vsp + 2), obj_destructibles))
            {
                DestroyedBy = other.id
                event_user(0)
            }
        }
    }
    if (state == (57 << 0) || state == (60 << 0) || state == (66 << 0) || state == (67 << 0) || state == (102 << 0))
    {
        if (place_meeting(x, (y + vsp), obj_destructibles) && vsp < 0)
        {
            with (instance_place(x, (y + vsp), obj_destructibles))
            {
                DestroyedBy = other.id
                event_user(0)
            }
        }
        if place_meeting(x, (y - 1), obj_destructibles)
        {
            with (instance_place(x, (y - 1), obj_destructibles))
            {
                DestroyedBy = other.id
                event_user(0)
            }
        }
    }
    if ((state == (86 << 0) || sprite_index == spr_cottonPizzano_drillup || sprite_index == spr_pizzano_wallclimbspin) && vsp <= 0)
    {
        if place_meeting(x, (y + vsp), obj_destructibles)
        {
            with (instance_place(x, (y + vsp), obj_destructibles))
            {
                DestroyedBy = other.id
                event_user(0)
            }
        }
        if place_meeting(x, (y - 1), obj_destructibles)
        {
            with (instance_place(x, (y - 1), obj_destructibles))
            {
                DestroyedBy = other.id
                event_user(0)
            }
        }
    }
    if (state == (15 << 0))
    {
        with (obj_bigdestructibles)
        {
            if place_meeting((x - obj_player.hsp), y, obj_player)
            {
                DestroyedBy = other.id
                event_user(0)
            }
        }
        with (obj_destructibles)
        {
            if place_meeting((x - obj_player.hsp), y, obj_player)
            {
                var _player = instance_nearest(x, y, obj_player)
                DestroyedBy = _player
                event_user(0)
            }
        }
        with (obj_destroyable3_hard)
        {
            if place_meeting((x - obj_player.hsp), y, obj_player)
            {
                with (obj_player)
                {
                    hsp = (-xscale) * 4
                    vsp = -4
                    mach2 = 0
                    image_index = 0
                    sprite_index = choose(spr_player_blockbreak1, spr_player_blockbreak2, spr_player_blockbreak3, spr_player_blockbreak4, spr_player_blockbreak5, spr_player_blockbreak6, spr_player_blockbreak7)
                    state = (54 << 0)
                }
            }
        }
    }
    with (obj_baddie)
    {
        if (place_meeting((x + hsp), y, obj_destructibles) && thrown)
        {
            with (instance_place((x + hsp), y, obj_destructibles))
            {
                DestroyedBy = other.id
                event_user(0)
            }
        }
        if (place_meeting((x + sign(hsp)), y, obj_destructibles) && thrown)
        {
            with (instance_place((x + sign(hsp)), y, obj_destructibles))
            {
                DestroyedBy = other.id
                event_user(0)
            }
        }
    }
    with (obj_train)
    {
        if place_meeting((x + hsp), y, obj_destructibles)
        {
            with (instance_place((x + hsp), y, obj_destructibles))
            {
                DestroyedBy = other.id
                event_user(0)
            }
        }
        if place_meeting((x + sign(hsp)), y, obj_destructibles)
        {
            with (instance_place((x + sign(hsp)), y, obj_destructibles))
            {
                DestroyedBy = other.id
                event_user(0)
            }
        }
    }
}

