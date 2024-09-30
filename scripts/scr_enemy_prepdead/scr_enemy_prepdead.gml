function scr_enemy_prepdead() //scr_enemy_prepdead
{
    x = hitX + (random_range(-6, 6))
    y = hitY + (random_range(-6, 6))
    hitLag--
    sprite_index = stunfallspr
    if (hitLag <= 0)
    {
        x = hitX
        y = hitY
        var _state = obj_player.state
        if (_state == (119 << 0))
            _state = obj_player.tauntstoredstate
        if (_state == (66 << 0) || _state == (93 << 0) || (_state == (68 << 0) && obj_player.sprite_index != spr_playerPZ_machslideboost3fall && obj_player.sprite_index != spr_pizzano_mach3boostfall))
            thrown = false
        else
            thrown = true
        vsp = hitvsp
        hsp = hithsp
        global.hit += 1
        if (other.object_index == obj_pizzaball)
            global.golfhit += 1
        if thrown
            global.combotime = 60
        global.heattime = 60
        alarm[1] = 5
        instance_destroy()
        stunned = 200
        state = (6 << 0)
        if (obj_player.tauntstoredstate != (39 << 0) && obj_player.tauntstoredstate != (71 << 0) && obj_player.tauntstoredstate != (34 << 0))
        {
            var f = 15
            if (obj_player.tauntstoredstate == (67 << 0))
                f = 25
            if (abs(hithsp) > abs(hitvsp))
            {
                if (abs(hithsp) < f)
                    hithsp = sign(hithsp) * f
            }
            else if (abs(hitvsp) < f)
                hitvsp = sign(hitvsp) * f
        }
        else
        {
            hithsp = 20 * (-image_xscale)
            hitvsp = -7
            hsp = hithsp
            vsp = hitvsp
            flash = false
            state = (6 << 0)
            thrown = true
        }
        if (_state == (66 << 0) || _state == (93 << 0))
            stunned *= 5
    }
}

