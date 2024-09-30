if instance_exists(obj_cottonwitch)
{
    if (obj_cottonwitch.sprite_index == spr_cottonwitch_scarednew2)
        return;
}
if (!instance_exists(baddieID))
    instance_destroy()
if instance_exists(baddieID)
{
    x = baddieID.x
    y = baddieID.y
    image_xscale = baddieID.image_xscale
}
if (instance_exists(baddieID) && place_meeting(x, y, obj_player) && (!obj_player.cutscene) && obj_player.state != (70 << 0))
{
    if (baddieID.state != (8 << 0) && baddieID.state != (19 << 0))
    {
        with (obj_player)
        {
            if ((instakillmove || (place_meeting(x, (y + vsp), other.baddieID) && state == (111 << 0))) && other.baddieID.object_index != obj_pizzaball)
            {
                if (state == (85 << 0) || state == (94 << 0) || state == (95 << 0) || (state == (119 << 0) && (tauntstoredstate == (85 << 0) || tauntstoredstate == (94 << 0) || tauntstoredstate == (95 << 0))))
                    other.baddieID.cottoned = true
                scr_instakill()
            }
            if (instance_exists(other.baddieID) && (place_meeting(x, (y + 1), other.baddieID) || place_meeting(x, (y + vsp), other.baddieID)) && y != other.baddieID.y && (!attacking) && (state == (57 << 0) || state == (38 << 0)) && sprite_index != spr_playerPZ_scooterspin && sprite_index != spr_playerPZ_scooterspinstart && vsp > 0 && other.baddieID.vsp >= 0 && sprite_index != spr_stompprep && (object_index != obj_cottonwitch || (object_index == obj_cottonwitch && state != (9 << 0) && global.layout == 1) || (object_index == obj_cottonwitch && global.layout == 0)))
            {
                scr_sound(sound_enemyslap)
                suplexmove = false
                if (other.baddieID.object_index == obj_pizzaball)
                    global.golfhit += 1
                if (vsp > 0)
                {
                    other.baddieID.squashed = true
                    other.baddieID.squashval = 0
                    other.baddieID.stunned = 200
                    if (x != other.baddieID.x)
                        other.baddieID.image_xscale = (-(sign(other.baddieID.x - x)))
                    image_index = 0
                    if key_jump2
                    {
                        other.baddieID.vsp = -5
                        other.baddieID.hsp = (-other.baddieID.image_xscale) * 3
                        instance_create(x, (y + 50), obj_stompeffect)
                        other.baddieID.state = (6 << 0)
                        stompAnim = true
                        other.baddieID.image_index = 0
                        vsp = -14
                        if (state == (57 << 0))
                            sprite_index = spr_stompprep
                    }
                    else
                    {
                        other.baddieID.vsp = -5
                        other.baddieID.hsp = (-other.baddieID.image_xscale) * 3
                        instance_create(x, (y + 50), obj_stompeffect)
                        other.baddieID.state = (6 << 0)
                        stompAnim = true
                        other.baddieID.image_index = 0
                        vsp = -9
                        if (state == (57 << 0))
                            sprite_index = spr_stompprep
                    }
                }
            }
            if (instance_exists(other.baddieID) && (!instakillmove) && other.baddieID.vsp > 0 && (!other.baddieID.thrown) && (state == (66 << 0) || state == (29 << 0) || state == (64 << 0)))
            {
                if (other.baddieID.stuntouch <= 0)
                {
                    scr_sound(sound_bump)
                    other.baddieID.stuntouch = 16
                    other.baddieID.state = (6 << 0)
                    if (other.baddieID.stunned < 100)
                        other.baddieID.stunned = 100
                    if (x != other.baddieID.x)
                        other.baddieID.image_xscale = (-(sign(other.baddieID.x - x)))
                    other.baddieID.hsp = (-other.baddieID.image_xscale) * 2
                    other.baddieID.vsp = -5
                }
            }
            if (instance_exists(other.baddieID) && state == (65 << 0))
            {
                if (other.baddieID.object_index == obj_pizzaball)
                    global.golfhit += 1
                global.hit += 1
                global.combotime = 60
                supertauntbuffer += 1
                instance_create(other.baddieID.x, other.baddieID.y, obj_slapstar)
                instance_create(other.baddieID.x, other.baddieID.y, obj_baddiegibs)
                other.baddieID.flash = true
                other.baddieID.hp = 0
                scr_sound(sound_enemystomp)
                instance_create(x, y, obj_bumpeffect)
                other.baddieID.stunned = 200
                if (x != other.baddieID.x)
                    other.baddieID.image_xscale = (-(sign(other.baddieID.x - x)))
                other.baddieID.vsp = -5
                other.baddieID.hsp = (-other.baddieID.image_xscale) * 5
                hsp = (-xscale) * 4
                vsp = -4
                machpunchAnim = true
                if (x != other.baddieID.x)
                    other.baddieID.image_xscale = (-(sign(other.baddieID.x - x)))
                other.baddieID.state = (6 << 0)
                image_index = 0
                state = (54 << 0)
                if (other.baddieID.hp == 0 && other.baddieID.object_index != obj_boss)
                {
                    instance_destroy(other.id)
                    instance_destroy(other.baddieID)
                }
                else if (other.baddieID.hp <= 0 && other.baddieID.object_index == obj_boss)
                {
                    other.baddieID.thrown = 1
                    vsp = -5
                }
            }
            if (instance_exists(other.baddieID) && state == (101 << 0) && other.baddieID.grounded)
            {
                if (other.baddieID.object_index == obj_pizzaball)
                    global.golfhit += 1
                global.hit += 1
                global.combotime = 60
                supertauntbuffer += 1
                instance_create(other.baddieID.x, other.baddieID.y, obj_slapstar)
                instance_create(other.baddieID.x, other.baddieID.y, obj_baddiegibs)
                other.baddieID.flash = true
                other.baddieID.hp = 0
                scr_sound(sound_enemystomp)
                instance_create(x, y, obj_bumpeffect)
                other.baddieID.vsp = -10
                other.baddieID.hsp = xscale
                other.baddieID.image_index = 0
                machpunchAnim = true
                other.baddieID.stunned = 200
                other.baddieID.state = (6 << 0)
                if ((!grounded) && state != (71 << 0) && key_jump2)
                {
                    suplexmove = false
                    sprite_index = spr_mach2jump
                    vsp = -11
                }
                if (other.baddieID.hp == 0 && other.baddieID.object_index != obj_boss)
                {
                    instance_destroy(other.baddieID)
                    instance_destroy(other.id)
                }
                else if (other.baddieID.hp <= 0 && other.baddieID.object_index == obj_boss)
                {
                    other.baddieID.thrown = true
                    vsp = -5
                }
            }
            if (instance_exists(other.baddieID) && other.baddieID.state != (1 << 0) && (!attacking) && state != (54 << 0) && state != (70 << 0) && (!y) < other.baddieID.y && (!y) > other.baddieID.y && (!grabbing) && other.baddieID.state != (6 << 0) && state != (15 << 0) && state != (2 << 0) && state != (112 << 0))
            {
                if (x != other.baddieID.x)
                {
                    other.baddieID.image_xscale = (-(sign(other.baddieID.x - x)))
                    xscale = (-(sign(x - other.baddieID.x)))
                }
                hsp = (-xscale) * 8
                if (other.baddieID.object_index == obj_pizzaball)
                    global.golfhit += 1
                vsp = -4
                other.baddieID.image_xscale = (-xscale)
                other.baddieID.hsp = (-other.baddieID.image_xscale) * 4
                other.baddieID.vsp = -4
                if (other.baddieID.state == (3 << 0) || other.baddieID.state == (2 << 0))
                    other.baddieID.state = (6 << 0)
                if (other.baddieID.state == 87)
                {
                    stunned = 30
                    other.baddieID.state = (6 << 0)
                }
                image_index = 0
                state = (69 << 0)
                if (other.baddieID.state == (96 << 0))
                    other.baddieID.state = (6 << 0)
            }
        }
    }
}
if (!instance_exists(baddieID))
    instance_destroy()
