with (obj_player)
{
    if (state != (85 << 0) && state != (94 << 0) && state != (74 << 0) && state != (95 << 0) && state != (112 << 0))
    {
        if (grounded && global.lvldesign == 1)
        {
            if (key_up && (state == (0 << 0) || state == (66 << 0) || state == (67 << 0) || state == (61 << 0)))
            {
                hsp = 0
                vsp = 0
                global.combofreeze = 60
                state = (85 << 0)
                if (character == "P")
                {
                    if chance(0.5)
                        scr_sound(sfx_pizzelletransfo)
                }
                scr_sound(sfx_transfo)
                sprite_index = spr_cottontransfo
                image_index = 0
                xscale = 1
                if global.realsigma
                    other.visible = true
                else
                    other.visible = false
                x = other.x - other.sprite_xoffset + other.sprite_width / 2
                image_speed = 0.35
                movespeed = 0
            }
        }
        else if (global.lvldesign == 0)
        {
            global.combofreeze = 30
            state = (85 << 0)
            scr_sound(sfx_transfo)
            instance_create(x, y, obj_poofeffect)
            instance_create(x, y, obj_poofeffectcotton)
            sprite_index = spr_cottonidle
            scr_tip("cotton")
        }
    }
}
