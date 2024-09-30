if (global.lvldesign == 0)
{
    if obj_player.grounded
    {
        if ((!inv_frame) && obj_player.state != (17 << 0) && obj_player.state != (6 << 0) && obj_player.state != (8 << 0) && obj_player.state != (5 << 0) && obj_player.state != (18 << 0) && obj_player.state != (11 << 0) && obj_player.state != (70 << 0))
        {
            instance_destroy()
            global.key_inv = true
            obj_player.key_particles = true
            obj_player.alarm[7] = 30
        }
        if ((!global.keyget) && obj_player.state != (17 << 0) && obj_player.state != (18 << 0) && obj_player.state != (8 << 0) && obj_player.state != (5 << 0) && obj_player.state != (11 << 0))
        {
            scr_sound(sound_toppingot)
            obj_player.state = (53 << 0)
            obj_player.image_index = 0
            global.keyget = true
            with (instance_create(x, y, obj_keyfollow))
                visible = false
            if (obj_player.character == "P")
                scr_queue_tvanim(spr_pizzytv_exprcollect, 200)
            else if (obj_player.character == "N")
                scr_queue_tvanim(spr_pizzanotv_happy, 200)
        }
    }
}
else if (global.lvldesign == 1)
{
    if ((!inv_frame) && obj_player.state != (17 << 0) && obj_player.state != (6 << 0) && obj_player.state != (8 << 0) && obj_player.state != (5 << 0) && obj_player.state != (18 << 0) && obj_player.state != (11 << 0) && obj_player.state != (70 << 0))
    {
        instance_destroy()
        global.key_inv = true
        obj_player.key_particles = true
        obj_player.alarm[7] = 30
    }
    if ((!global.keyget) && obj_player.state != (17 << 0) && obj_player.state != (18 << 0) && obj_player.state != (8 << 0) && obj_player.state != (5 << 0) && obj_player.state != (11 << 0))
    {
        scr_sound(sound_toppingot)
        global.keyget = true
        with (instance_create(x, (y - 30), obj_explosioneffect))
        {
            sprite_index = spr_taunteffect
            depth = -2
        }
        global.combotime = 60
        with (instance_create(x, y, obj_spookey))
            sprite_index = spr_spookey_appear
        if (obj_player.character == "P")
            scr_queue_tvanim(spr_pizzytv_spookey, 200)
        else if (obj_player.character == "N")
            scr_queue_tvanim(spr_pizzanotv_spookey, 200)
    }
}
