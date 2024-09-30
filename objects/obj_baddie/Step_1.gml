switch state
{
    case (0 << 0):
        scr_enemy_idle()
        break
    case (2 << 0):
        scr_enemy_turn()
        break
    case (3 << 0):
        scr_enemy_walk()
        break
    case (4 << 0):
        scr_enemy_land()
        break
    case (5 << 0):
        scr_enemy_hit()
        break
    case (1 << 0):
        scr_enemy_charge()
        break
    case (6 << 0):
        scr_enemy_stun()
        break
    case (10 << 0):
        visible = false
        hsp = 0
        vsp = 0
        x = -900
        y = -200
        if global.panic
        {
            if ((!instance_exists(escapePortal)) && point_in_rectangle(xstart, ystart, (obj_player.x - 900), (obj_player.y - 250), (obj_player.x + 900), (obj_player.y + 250)))
            {
                escapePortal = instance_create(xstart, ystart, obj_panicPortal)
                escapePortal.drawSprite = sprite_index
                escapePortal.drawXscale = image_xscale
            }
            if (instance_exists(escapePortal) && floor(escapePortal.image_index) >= 8)
            {
                instance_create(xstart, ystart, obj_poofeffect)
                visible = true
                flash = true
                state = (6 << 0)
                vsp = -5
                squashed = true
                squashval = 0
                stunned = 10
                x = xstart
                y = ystart
            }
        }
        break
    case (7 << 0):
        scr_enemy_throw()
        break
    case (8 << 0):
        scr_enemy_grabbed()
        break
    case (9 << 0):
        scr_enemy_scared()
        break
    case (11 << 0):
        scr_enemy_inhaled()
        break
    case (12 << 0):
        scr_enemy_cherrywait()
        break
    case (13 << 0):
        scr_enemy_charcherry()
        break
    case (16 << 0):
        scr_enemy_slugidle()
        break
    case (17 << 0):
        scr_enemy_slugjump()
        break
    case (18 << 0):
        scr_enemy_slugparry()
        break
    case (15 << 0):
        scr_enemy_kick()
        break
    case (14 << 0):
        scr_applejim_bash()
        break
    case (19 << 0):
        scr_enemy_prepdead()
        break
    case (20 << 0):
        scr_enemy_witchattack()
        break
    case (21 << 0):
        scr_enemy_punkattack()
        break
}

if (y > (room_height + 64))
    instance_destroy()
if (state != (9 << 0))
    ScareBuffer = 0
if (shake == 8 && obj_player.state != (43 << 0))
    instance_destroy()
