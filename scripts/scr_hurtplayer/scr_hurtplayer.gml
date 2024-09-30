function scr_hurtplayer(argument0) //scr_hurtplayer
{
    if (argument0 == undefined)
        argument0 = obj_player
    if (argument0.state != (90 << 0) && argument0.state != (70 << 0) && argument0.state != (120 << 0) && argument0.sprite_index != spr_player_supertaunt1 && argument0.sprite_index != spr_player_supertaunt2 && argument0.sprite_index != spr_player_supertaunt3 && argument0.sprite_index != spr_pizzano_supertaunt1 && argument0.state != (1 << 0) && argument0.state != (92 << 0))
    {
        with (argument0)
        {
            if ((state == (17 << 0) || state == (18 << 0) || state == (11 << 0) || ((state == (85 << 0) || state == (94 << 0) || state == (95 << 0)) && global.layout)) && (!cutscene))
            {
            }
            else if (sprite_index == spr_player_supertaunt1 || sprite_index == spr_player_supertaunt2 || sprite_index == spr_player_supertaunt3)
            {
            }
            else if (state == (98 << 0) || state == (115 << 0))
            {
                if (character == "N")
                    sprite_index = spr_pizzano_mach3hitwall
                else
                    sprite_index = spr_player_mach3hitwall
                state = (69 << 0)
                hsp = 2.5 * xscale
                vsp = -3
                mach2 = 0
                image_index = 0
                instance_create(x, y, obj_bombexplosionharmless)
                for (var i = 0; i < (sprite_get_number(spr_minecartdebris) - 1); i++)
                {
                    with (instance_create((x + (irandom_range(-9, 9))), (y + (irandom_range(-9, 9))), obj_debris))
                    {
                        sprite_index = spr_minecartdebris
                        image_index = i
                        vsp = floor(random_range(-5, -9))
                        hsp = floor(random_range(-5, 7))
                    }
                }
            }
            else if (state == (20 << 0) && (!hurted))
            {
            }
            else if (state == (8 << 0))
            {
            }
            else if (state == (5 << 0) || state == (7 << 0))
            {
            }
            else if (state != (70 << 0) && state != (43 << 0) && (!hurted) && (!cutscene) && state != (69 << 0) && state != (93 << 0))
            {
                scr_sound(sound_touchspike)
                global.hurtcounter += 1
                state = (70 << 0)
                alarm[8] = 60
                alarm[7] = 120
                hurted = true
                if (xscale == other.image_xscale)
                    sprite_index = spr_hurtjump
                else
                    sprite_index = spr_hurt
                movespeed = 8
                vsp = -14
                timeuntilhpback = 300
                if (character == "P")
                {
                    if chance(0.25)
                        scr_sound(sfx_voicehurt1PZ, sfx_voicehurt2PZ)
                }
                else if chance(0.25)
                    scr_sound(sfx_pizzanohurt)
                var _oldcollect = global.collect - global.comboscore
                if (_oldcollect > 0)
                {
                    global.collect -= 100
                    if ((global.collect - global.comboscore) < 0)
                        global.collect = global.comboscore
                    with (instance_create(0, 0, obj_negativenumber))
                        number = string(global.collect - global.comboscore - _oldcollect)
                }
                if (argument0.shotgunAnim && global.collect <= 0)
                    argument0.shotgunAnim = false
                instance_create(x, y, obj_spikehurteffect)
                image_index = 0
                flash = true
                global.style -= 15
                if global.layout
                    global.combotime -= 20
                repeat (5)
                    instance_create(x, y, obj_slapstar)
            }
            else if (ischaracter == "minecart")
            {
                state = (1 << 0)
                instance_create(x, y, obj_bombexplosionharmless)
                for (i = 0; i < (sprite_get_number(spr_minecartdebris) - 1); i++)
                {
                    with (instance_create((x + (irandom_range(-9, 9))), (y + (irandom_range(-9, 9))), obj_debris))
                    {
                        sprite_index = spr_minecartdebris
                        image_index = i
                        vsp = floor(random_range(-5, -9))
                        hsp = floor(random_range(-5, 7))
                    }
                }
            }
        }
    }
}

