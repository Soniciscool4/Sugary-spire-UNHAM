function scr_pizzano_twirl() //scr_pizzano_twirl
{
    sprite_index = spr_pizzano_twirl
    move = key_left + key_right
    hsp = xscale * movespeed
    if (move == xscale && movespeed < 12)
        movespeed += 0.5
    else if (move != xscale && movespeed > 0)
        movespeed -= 0.25
    if (grounded && (!key_attack))
    {
        state = (0 << 0)
        image_index = 0
        mach2 = 0
        jumpstop = false
    }
    else if (grounded && key_attack)
    {
        state = (66 << 0)
        image_index = 0
        sprite_index = spr_mach
        jumpstop = false
        if (move != 0)
            xscale = move
    }
    if (key_down && (!grounded))
    {
        vsp = 10
        state = (29 << 0)
        input_buffer_jump = 8
    }
    if ((!key_jump) && (((!grounded) && place_meeting((x + hsp), y, obj_solid) && (!(place_meeting((x + hsp), y, obj_destructibles))) && (!(place_meeting((x + sign(hsp)), y, obj_slope))) && (!(place_meeting((x + sign(hsp)), y, obj_slopeplatform)))) || (grounded && place_meeting((x + hsp), (y - 32), obj_solid) && (!(place_meeting((x + hsp), y, obj_destructibles))) && (!(place_meeting((x + hsp), y, obj_metalblock))) && (place_meeting(x, (y + 1), obj_slope) || place_meeting(x, (y + 1), obj_slopeplatform)))))
    {
        wallspeed = movespeed
        state = (10 << 0)
        hsp = 0
    }
    if (input_buffer_slap < 8 && character == "N" && charged && (!key_up))
    {
        flash = true
        state = (101 << 0)
        sprite_index = spr_pizzano_sjumpprepside
        image_index = 0
        movespeed = 0
        mach2 = 0
        charged = false
        input_buffer_slap = 8
    }
    if (character == "N" && input_buffer_slap < 8 && (!key_down) && (!suplexmove) && (!shotgunAnim) && global.cane != true && obj_player.character != "G")
    {
        scr_sound(sound_suplex1)
        instance_create(x, y, obj_slaphitbox)
        suplexmove = true
        vsp = 0
        instance_create(x, y, obj_jumpdust)
        image_index = 0
        sprite_index = choose(spr_pizzano_kungfu1, spr_pizzano_kungfu2)
        state = (102 << 0)
        if (movespeed < 10)
            movespeed = 10
        input_buffer_slap = 8
    }
    if (input_buffer_slap < 8 && key_up)
    {
        movespeed = hsp
        grounded = false
        vsp = -16
        state = (86 << 0)
        suplexmove = true
        sprite_index = spr_pizzano_uppercutbegin
        image_index = 0
        scr_sound(sound_jump)
        scr_sound(sound_rollgetup)
        scr_sound(sound_suplex1)
        with (instance_create(x, y, obj_playeruppercut_hitbox))
            playerID = other.id
        input_buffer_slap = 8
    }
    if key_taunt2
    {
        taunttimer = 20
        tauntstoredmovespeed = movespeed
        tauntstoredsprite = sprite_index
        tauntstoredstate = state
        tauntstoredvsp = vsp
        state = (43 << 0)
        if (supertauntcharged && key_up)
        {
            image_index = 0
            if (character == "N")
                sprite_index = spr_pizzano_supertaunt1
            else
                sprite_index = choose(spr_player_supertaunt1, spr_player_supertaunt2, spr_player_supertaunt3)
        }
        else
        {
            image_index = irandom_range(0, sprite_get_number(spr_player_taunt))
            sprite_index = spr_player_taunt
        }
        if (sprite_index == spr_player_supertaunt1 || sprite_index == spr_player_supertaunt2 || sprite_index == spr_player_supertaunt3 || sprite_index == spr_pizzano_supertaunt1)
        {
            with (instance_create(x, y, obj_taunteffect))
                scr_sound(sfx_supertaunt)
        }
        else
            instance_create(x, y, obj_taunteffect)
    }
}

