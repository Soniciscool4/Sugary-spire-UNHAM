scr_getinput()
scr_characterspr()
scr_playerstate()
if (state != (59 << 0))
    image_blend = make_color_hsv(0, 0, 255)
if (firetrailbuffer > 0)
    firetrailbuffer -= (movespeed / 24 * 26)
if (firetrailbuffer <= 0)
{
    if (movespeed >= 12 && grounded && vsp > 0 && (state == (66 << 0) || state == (67 << 0) || state == (29 << 0)))
        instance_create(x, y, obj_flamecloud)
    firetrailbuffer = 100
}
if global.playerrotate
{
    if (grounded && vsp >= 0 && scr_slope && (!((state == (10 << 0) || state == (93 << 0) || state == (38 << 0) || state == (72 << 0) || state == (31 << 0) || state == (84 << 0) || state == (98 << 0) || state == (115 << 0)))))
    {
        if (abs(hsp) >= 8)
        {
            var targetangle = scr_slopeangle()
            var RotationStep = (abs(hsp) / 16 + abs(hsp) / 32 - 2) * -1
        }
        else
        {
            targetangle = 0
            RotationStep = (abs(hsp) / 16 - 2) * -1
        }
        draw_angle = darctan2((dsin(targetangle) + dsin(draw_angle) * RotationStep), (dcos(targetangle) + dcos(draw_angle) * RotationStep))
    }
    else
        draw_angle = lerp(draw_angle, 0, 0.5)
}
else
    draw_angle = 0
if (room == realtitlescreen || room == scootercutsceneidk)
    state = (1 << 0)
if grounded
{
    groundedcot = true
    jumpcot = 1
}
if (!(place_meeting(x, y, obj_cottonsolid)))
    incotton = 0
if (state != (48 << 0) && state != (120 << 0) && (y > (room_height + 192) || y < -192) && (!(place_meeting(x, y, obj_vertical_hallway))) && (!instance_exists(obj_fadeout)) && room != outer_room2 && room != realtitlescreen && (!instance_exists(obj_warphallway)) && (!(place_meeting(x, y, obj_greenpaint))))
{
    if (!instance_exists(obj_technicaldifficulty))
        instance_create(x, y, obj_technicaldifficulty)
    if instance_exists(obj_train)
    {
        with (obj_train)
        {
            x = xstart
            y = ystart
            movespeed = 10
            image_index = 0
            sprite_index = spr_spray
            go = false
        }
    }
    state = (70 << 0)
    alarm[8] = 60
    alarm[7] = 120
    hurted = 1
    sprite_index = spr_hurt
    movespeed = 0
    vsp = -3
    visible = false
    global.combofreeze = 60
}
if (state != (71 << 0) && state != (50 << 0) && state != (72 << 0))
    freefallsmash = 0
if ((!instance_exists(baddiegrabbedID)) && (state == (38 << 0) || (state == (34 << 0) && sprite_index != spr_piledriverland) || state == (4 << 0)))
    state = (0 << 0)
if (!((state == (38 << 0) || state == (4 << 0) || state == (34 << 0) || state == (84 << 0))))
    baddiegrabbedID = -4
if (character == "P")
{
    if (anger == 0)
        angry = false
    if (anger > 0)
    {
        angry = true
        anger -= 1
    }
}
if (character == "P")
{
    if ((angry == 1 || global.combo >= 25) && sprite_index == spr_idle && global.combo < 50)
        sprite_index = spr_player_3hpidle
    else if (global.combo >= 50 && sprite_index == spr_idle)
        sprite_index = spr_playerPZ_rageidle
}
if instance_exists(obj_oneway)
{
    if instance_exists(obj_oneway.solidid)
    {
        if place_meeting((x + xscale), y, obj_oneway.solidid)
        {
            if ((state == (67 << 0) && grounded) || state == (100 << 0))
            {
                scr_sound(sound_bump)
                with (obj_camera)
                {
                    shake_mag = 20
                    shake_mag_acc = 40 / room_speed
                }
                image_speed = 0.35
                with (obj_baddie)
                {
                    if (point_in_camera(x, y, view_camera[0]) && grounded)
                    {
                        stun = 1
                        alarm[0] = 200
                        ministun = 0
                        vsp = -5
                        hsp = 0
                    }
                }
                flash = 0
                combo = 0
                scr_sound(sound_maximumspeedland)
                if (character == "N")
                    sprite_index = spr_pizzano_mach3hitwall
                else
                    sprite_index = spr_player_mach3hitwall
                state = (69 << 0)
                hsp = -2.5 * xscale
                vsp = -3
                mach2 = 0
                image_index = 0
                instance_create((x + 10 * xscale), (y + 10), obj_bumpeffect)
            }
            else if (state == (29 << 0) || (state == (66 << 0) && grounded) || (state == (64 << 0) && sprite_index == spr_player_machslide) || (state == (68 << 0) && (sprite_index == spr_machslidestart || sprite_index == spr_machslideend || sprite_index == spr_playerPZ_machslide)))
            {
                if (character == "N")
                    sprite_index = spr_pizzano_wallsplat
                else
                    sprite_index = spr_playerPZ_wallsplat
                state = (69 << 0)
                movespeed = 0
            }
            else if (state == (15 << 0))
            {
                grav = 0.5
                movespeed = 0
                state = (69 << 0)
                vsp = -4
                mach2 = 0
                image_index = 0
                machslideAnim = 1
                machhitAnim = 0
                sprite_index = spr_playerPZ_suplexbump
                instance_create((x + 10 * xscale), (y + 10), obj_bumpeffect)
                if audio_is_playing(sound_suplex1)
                    audio_stop_sound(sound_suplex1)
                scr_sound(sound_bump)
            }
            else if ((state == (67 << 0) || state == (66 << 0) || state == (111 << 0)) && (!grounded))
            {
                wallspeed = movespeed
                machhitAnim = 0
                state = (10 << 0)
            }
            else if (state == (101 << 0))
            {
                scr_sound(sound_maximumspeedland)
                with (obj_camera)
                {
                    shake_mag = 20
                    shake_mag_acc = 40 / room_speed
                }
                image_speed = 0.35
                with (obj_baddie)
                {
                    if (point_in_camera(x, y, view_camera[0]) && grounded)
                    {
                        stun = true
                        alarm[0] = 200
                        ministun = false
                        vsp = -5
                        hsp = 0
                    }
                }
                vsp = -6
                hsp = -6 * xscale
                image_index = 0
                sprite_index = spr_pizzano_mach3hitwallair
                state = (69 << 0)
            }
        }
    }
}
if (place_meeting((x + xscale), y, obj_cottonsolid) && character == "N")
{
    if ((state == (67 << 0) && grounded) || state == (100 << 0))
    {
        scr_sound(sound_bump)
        with (obj_camera)
        {
            shake_mag = 20
            shake_mag_acc = 40 / room_speed
        }
        image_speed = 0.35
        with (obj_baddie)
        {
            if (point_in_camera(x, y, view_camera[0]) && grounded)
            {
                stun = 1
                alarm[0] = 200
                ministun = 0
                vsp = -5
                hsp = 0
            }
        }
        flash = 0
        combo = 0
        scr_sound(sound_maximumspeedland)
        if (character == "N")
            sprite_index = spr_pizzano_mach3hitwall
        else
            sprite_index = spr_player_mach3hitwall
        state = (69 << 0)
        hsp = -2.5 * xscale
        vsp = -3
        mach2 = 0
        image_index = 0
        instance_create((x + 10 * xscale), (y + 10), obj_bumpeffect)
    }
    else if (state == (29 << 0) || (state == (66 << 0) && grounded) || (state == (64 << 0) && sprite_index == spr_player_machslide) || (state == (68 << 0) && (sprite_index == spr_machslidestart || sprite_index == spr_machslideend || sprite_index == spr_playerPZ_machslide)))
    {
        if (character == "N")
            sprite_index = spr_pizzano_wallsplat
        else
            sprite_index = spr_playerPZ_wallsplat
        state = (69 << 0)
        movespeed = 0
    }
    else if (state == (15 << 0))
    {
        grav = 0.5
        movespeed = 0
        state = (69 << 0)
        vsp = -4
        mach2 = 0
        image_index = 0
        machslideAnim = 1
        machhitAnim = 0
        sprite_index = spr_playerPZ_suplexbump
        instance_create((x + 10 * xscale), (y + 10), obj_bumpeffect)
        if audio_is_playing(sound_suplex1)
            audio_stop_sound(sound_suplex1)
        scr_sound(sound_bump)
    }
    else if ((state == (67 << 0) || state == (66 << 0) || state == (111 << 0) || state == (102 << 0)) && (!grounded))
    {
        wallspeed = movespeed
        machhitAnim = 0
        state = (10 << 0)
    }
    else if (state == (101 << 0))
    {
        scr_sound(sound_maximumspeedland)
        with (obj_camera)
        {
            shake_mag = 20
            shake_mag_acc = 40 / room_speed
        }
        image_speed = 0.35
        with (obj_baddie)
        {
            if (point_in_camera(x, y, view_camera[0]) && grounded)
            {
                stun = true
                alarm[0] = 200
                ministun = false
                vsp = -5
                hsp = 0
            }
        }
        vsp = -6
        hsp = -6 * xscale
        image_index = 0
        sprite_index = spr_pizzano_mach3hitwallair
        state = (69 << 0)
    }
}
scr_playersounds()
if (state == (29 << 0))
{
    if (!audio_is_playing(sound_tumble))
        scr_sound(sound_tumble)
}
else
    audio_stop_sound(sound_tumble)
if (sprite_index == spr_player_winding && state != (0 << 0))
    windingAnim = 0
else
    audio_stop_sound(sound_superjumpcharge2)
if (state == (95 << 0) && sprite_index == spr_cotton_run)
{
    if (!audio_is_playing(sound_customdash1))
        scr_sound(sound_customdash1)
}
else
    audio_stop_sound(sound_customdash1)
if (state == (95 << 0) && sprite_index == spr_cotton_maxrun)
{
    if (!audio_is_playing(sound_customdash2))
        scr_sound(sound_customdash2)
}
else
    audio_stop_sound(sound_customdash2)
if (suplexmove && grounded)
{
    suplexmove = false
    flash = true
}
if (obj_player.state != (15 << 0) && state != (118 << 0))
    grav = 0.5
if (state != (0 << 0))
    breakdance_speed = 0.25
if (sprite_index == spr_player_idlevomit && image_index > 28 && image_index < 43)
    instance_create((x + (random_range(-5, 5))), (y + 46), obj_vomit)
if (sprite_index == spr_player_idlevomitblood && image_index > 28 && image_index < 43)
{
    with (instance_create((x + (random_range(-5, 5))), (y + 46), obj_vomit))
        sprite_index = spr_vomit2
}
if (angry && (!instance_exists(obj_angrycloud)) && obj_player.state == (0 << 0))
    instance_create(x, y, obj_angrycloud)
global.combotime = clamp(global.combotime, 0, 60)
if (global.combofreeze <= 0)
    global.combotime = approach(global.combotime, 0, 0.125)
if ((global.combo % 3) == 0 && playComboVariable != global.combo && global.combotime > 0 && global.combo > 0)
    playComboVariable = global.combo
global.combofreeze--
global.combofreeze = clamp(global.combofreeze, 0, 75)
if (global.combotime <= 0 && global.combo != 0)
{
    if (global.combo > 5)
        scr_queue_tvanim(obj_tv.happytvspr, 50)
    if (global.maxcombo < global.combo)
        global.maxcombo = global.combo
    global.savedcombo = global.combo
    with (instance_create(x, y, obj_comboend))
    {
        combo = global.savedcombo
        comboscore = global.comboscore
        comboscoremax = comboscore
        combominus = round(comboscore / 50)
    }
    global.comboscore = 0
    global.savedcombo = 0
    global.combo = 0
    playComboVariable = -4
    global.combodropped = 1
}
if (input_buffer_jump < 8)
    input_buffer_jump++
if (input_buffer_secondjump < 8)
    input_buffer_secondjump++
if (input_buffer_highjump < 8)
    input_buffer_highjump++
if (input_buffer_slap < 8)
    input_buffer_slap++
if (input_buffer_cottondown < 10)
    input_buffer_cottondown++
if (input_buffer_attack < 10)
    input_buffer_attack++
if key_particles
    instance_create(random_range((x + 25), (x - 25)), random_range((y + 35), (y - 25)), obj_keyeffect)
if (inv_frames == 0 && (!hurted))
    image_alpha = 1
if (state == (66 << 0) || state == (4 << 0) || state == (36 << 0) || state == (17 << 0) || state == (8 << 0) || state == (5 << 0) || state == (11 << 0) || state == (18 << 0) || state == (20 << 0) || state == (27 << 0) || state == (31 << 0) || state == (27 << 0) || (state == (29 << 0) && (sprite_index == spr_playerPZ_backslideland || sprite_index == spr_playerPZ_backslide || character == "N") && movespeed >= 12) || state == (67 << 0) || state == (71 << 0) || state == (60 << 0))
    attacking = true
else
    attacking = false
if (state == (33 << 0) || state == (39 << 0) || state == (40 << 0) || state == (42 << 0) || state == (41 << 0))
    grabbing = true
else
    grabbing = false
if (state == (67 << 0) || state == (100 << 0) || state == (98 << 0) || state == (115 << 0) || state == (103 << 0) || state == (92 << 0) || state == (2 << 0) || state == (36 << 0) || state == (28 << 0) || state == (71 << 0) || state == (60 << 0) || state == (31 << 0) || state == (4 << 0) || (state == (34 << 0) && sprite_index == spr_piledriver) || (state == (34 << 0) && sprite_index == spr_player_piledriverstart) || state == (17 << 0) || state == (18 << 0) || state == (11 << 0) || state == (8 << 0) || state == (5 << 0) || state == (6 << 0) || state == (95 << 0) || (state == (85 << 0) && (sprite_index == spr_cottonPizzano_drillup || sprite_index == spr_cotton_drillup || sprite_index == spr_cottonPizzano_wallclimb || sprite_index == spr_cottonPizzano_fastfall || sprite_index == spr_cottonPizzano_jumpwall || sprite_index == spr_cottonattack || global.layout)) || state == (102 << 0) || sprite_index == spr_pizzano_spincancel || sprite_index == spr_pizzano_mach3boost || sprite_index == spr_playerPZ_machslideboost3 || (state == (57 << 0) && (sprite_index == spr_playerPZ_scooterspin || sprite_index == spr_playerPZ_scooterspinstart || sprite_index == spr_pizzano_wallclimbspin)) || (state == (10 << 0) && movespeed > 10) || (state == (29 << 0) && (sprite_index == spr_playerPZ_backslideland || sprite_index == spr_playerPZ_backslide || character == "N") && movespeed >= 12))
    instakillmove = true
else
    instakillmove = false
if (flash && alarm[0] <= 0)
    alarm[0] = 0.15 * room_speed
if (state != (67 << 0) && state != (68 << 0))
    autodash = false
if ((state != (57 << 0) && state != (63 << 0) && state != (3 << 0)) || vsp < 0)
    fallinganimation = false
if (state != (72 << 0) && state != (0 << 0) && state != (68 << 0))
    facehurt = 0
if (state != (0 << 0) && state != (68 << 0))
    machslideAnim = false
if (state != (0 << 0))
{
    idle = 0
    dashdust = false
}
if (state != (65 << 0) && state != (57 << 0) && state != (2 << 0) && state != (15 << 0) && state != (0 << 0) && state != (66 << 0) && state != (67 << 0) && state != (50 << 0) && state != (17 << 0) && state != (31 << 0) && state != (11 << 0))
    momemtum = false
if (state != (60 << 0) && state != (61 << 0))
    a = 0
if (state != (27 << 0))
    facestompAnim = false
if (state != (71 << 0) && state != (27 << 0) && state != (34 << 0) && state != (72 << 0))
    superslam = 0
if (state != (66 << 0))
    machpunchAnim = false
if (state != (57 << 0))
    ladderbuffer = 0
if (state != (57 << 0))
    stompAnim = false
if (toomuchalarm1 > 0)
    toomuchalarm1 -= 1
if (toomuchalarm1 <= 0 && (state == (67 << 0) || state == (2 << 0) || state == (66 << 0) || state == (4 << 0) || (state == (68 << 0) && mach2 >= 100) || state == (29 << 0) || state == (15 << 0) || state == (94 << 0) || state == (95 << 0) || state == (98 << 0) || state == (115 << 0) || (state == (101 << 0) && sprite_index != spr_pizzano_sjumpprepside) || state == (112 << 0) || (state == (26 << 0) && mach2 >= 100)))
{
    with (instance_create(x, y, obj_mach3effect))
    {
        playerid = other.object_index
        image_index = other.drawimage - 1
        if (other.state == (43 << 0))
            image_index = other.drawimage
        image_xscale = other.xscale * other.scale_xs
        image_yscale = other.yscale * other.scale_ys
        sprite_index = other.drawsprite
    }
    toomuchalarm1 = 6
}
if (toomuchalarm2 > 0)
    toomuchalarm2 -= 1
if (toomuchalarm2 <= 0 && state == (57 << 0) && (sprite_index == spr_playerPZ_scooterspinstart || sprite_index == spr_playerPZ_scooterspin))
{
    with (instance_create(x, y, obj_wallkick_aftereffect))
    {
        playerid = other.object_index
        image_index = other.drawimage - 1
        if (other.state == (43 << 0))
            image_index = other.drawimage
        image_xscale = other.xscale * other.scale_xs
        image_yscale = other.yscale * other.scale_ys
        sprite_index = other.drawsprite
    }
    toomuchalarm2 = 6
}
if (toomuchalarm3 > 0)
    toomuchalarm3 -= 1
if (toomuchalarm3 <= 0 && (state == (86 << 0) || state == (100 << 0) || (state == (57 << 0) && sprite_index == spr_pizzano_wallclimbspin)))
{
    with (instance_create(x, y, obj_attack_aftereffect))
    {
        playerid = other.object_index
        if (other.drawimage == 0)
            image_index = other.drawimage
        else
        {
            image_index = other.drawimage - 1
            if (other.state == (43 << 0))
                image_index = other.drawimage
        }
        image_xscale = other.xscale * other.scale_xs
        image_yscale = other.yscale * other.scale_ys
        sprite_index = other.drawsprite
    }
    toomuchalarm3 = 6
}
if (mask_index == spr_player_mask || mask_index == spr_crouchmask)
{
    if (state != (69 << 0) && state != (62 << 0) && state != (8 << 0) && state != (30 << 0) && state != (93 << 0) && sprite_index != spr_player_crouchshoot && state != (61 << 0) && state != (26 << 0) && state != (29 << 0) && state != (70 << 0) && state != (95 << 0) && state != (64 << 0) && state != (63 << 0) && sprite_index != spr_pizzano_crouchslide && sprite_index != spr_pizzano_mach3slide && sprite_index != spr_pizzano_prepmach3slide)
        mask_index = spr_player_mask
    else
        mask_index = spr_crouchmask
}
if (state == (16 << 0) || sprite_index == spr_knightpep_start || sprite_index == spr_knightpep_thunder || state == (53 << 0) || state == (74 << 0) || state == (58 << 0) || state == (59 << 0) || state == (48 << 0))
    cutscene = true
else
    cutscene = false
if (state != (70 << 0))
    hurtsound = false
if (((place_meeting(x, y, obj_door) && (!(place_meeting(x, y, obj_doorblocked)))) || place_meeting(x, y, obj_cottoncreator) || (place_meeting(x, y, obj_startgate) && state != (58 << 0) && instance_place(x, y, obj_startgate).closed == 0) || place_meeting(x, y, obj_keydoorclock) || place_meeting(x, y, obj_keydoor) || (place_meeting(x, y, obj_exitgate) && global.panic)) && (!instance_exists(obj_uparrow)) && scr_solid(x, (y + 1)) && state == (0 << 0))
    instance_create(x, y, obj_uparrow)
if ((state == (66 << 0) || state == (67 << 0)) && (!instance_exists(obj_speedlines)))
    instance_create(x, y, obj_speedlines)
if (state != (43 << 0))
{
    if (supercharge > 9 && state != (43 << 0))
    {
        supertauntbuffer = 0
        supertauntcharged = true
        scr_tip("staunt")
    }
    if (supertauntcharged && room != rank_room)
    {
        if (!instance_exists(supertaunteffect))
        {
            with (instance_create(x, y, obj_supertaunteffect))
            {
                other.supertaunteffect = id
                playerid = other.id
            }
        }
    }
}
scr_collide_destructibles()
if (state != (1 << 0) && state != (74 << 0) && state != (60 << 0) && state != (59 << 0) && state != (52 << 0) && state != (53 << 0) && state != (58 << 0) && state != (12 << 0) && state != (28 << 0) && state != (16 << 0) && state != (48 << 0) && state != (74 << 0))
    scr_collide_player()
if (state == (52 << 0))
    scr_collide_player()
if (state != (89 << 0))
    bushdetection = false
if (state != (62 << 0))
    crouchjumptimer = 0
if (gumbobpropellercooldown > 0)
    gumbobpropellercooldown--
if global.starrmode
{
    if (global.starrmode && state == (67 << 0))
        movespeed = 12
    else if (state == (67 << 0) && movespeed > 12)
        movespeed = 12
}
if (state == (74 << 0) || place_meeting(x, y, obj_hallway) || state == (58 << 0))
    global.roomsave = false
if (state == (84 << 0) && (!floor(image_index)) == (image_number - 1))
{
    with (instance_place(x, y, obj_baddie))
        vsp = 0
    grav = 0
}
if (state == (84 << 0) && floor(image_index) == (image_number - 0))
{
    with (instance_place(x, y, obj_baddie))
        vsp = 0.1
    grav = 0.5
}
if place_meeting(x, y, obj_molasseswater)
    grav = 0.1
else if (!(place_meeting(x, y, obj_molasseswater)))
    grav = 0.5
if place_meeting(x, (y + 1), obj_molassesGround)
{
    if (hsp != 0 && (floor(image_index) % 4) == 0 && grounded)
    {
        with (instance_create(x, (y + 43), obj_debris))
        {
            sprite_index = spr_molassesgoop
            image_index = irandom_range(0, 5)
        }
    }
    if (state == (10 << 0) && vsp < 0)
        state = (0 << 0)
    if (vsp < 0 && grounded)
    {
        vsp /= 2
        with (instance_create(x, (y + 43), obj_debris))
        {
            sprite_index = spr_molassesgoop
            image_index = irandom_range(0, 5)
        }
    }
}
if (Dashpad_buffer > 0)
    Dashpad_buffer = max((Dashpad_buffer - 1), 0)
if (sprite_index == spr_player_machpunch1 && floor(image_index) == (image_number - 1))
    sprite_index = spr_mach
if (sprite_index == spr_player_machpunch2 && floor(image_index) == (image_number - 1))
    sprite_index = spr_mach
if (character == "P")
{
    if (sprite_index == spr_mach2jump || sprite_index == spr_playerPZ_scooterspin)
    {
        if (!audio_is_playing(sfx_flip))
            scr_sound(sfx_flip)
    }
}
else if (sprite_index == spr_pizzano_spincancel || sprite_index == spr_pizzano_wallclimbspin)
{
    if (!audio_is_playing(sfx_flip))
        scr_sound(sfx_flip)
}
var _cTitle = floor(global.combo / 5)
if (oldComboTitle != _cTitle && _cTitle != 0)
{
    oldComboTitle = _cTitle
    instance_destroy(combo_title)
    combo_title = noone
    combo_title = instance_create(830, 250, obj_combotitle)
    combo_title.title = _cTitle
    combo_title.image_index = _cTitle
    scr_sound(choose(sfx_combo1, sfx_combo2, sfx_combo3))
}
if (character == "P")
{
    if (audio_is_playing(sfx_flip) && sprite_index != spr_mach2jump && sprite_index != spr_playerPZ_scooterspin)
        audio_stop_sound(sfx_flip)
}
else if (audio_is_playing(sfx_flip) && sprite_index != spr_pizzano_spincancel && sprite_index != spr_pizzano_wallclimbspin)
    audio_stop_sound(sfx_flip)
if instance_exists(obj_rudejanitor_waiting)
{
    if (place_meeting(x, y, obj_secretwall) && obj_rudejanitor_waiting.visible == false)
        obj_rudejanitor_waiting.visible = true
}
if (room == timesuproom)
{
    if (state != (28 << 0) && state != (48 << 0))
    {
        state = (28 << 0)
        sprite_index = spr_Timesup
    }
}
if instance_exists(obj_secretfound)
    global.secretroom = 1
else if (!instance_exists(obj_secretfound))
{
    if (global.secretroom == 1)
        global.secretroom = 0
}
if (global.panicking == 1)
{
    if (global.secretroom == 1)
    {
        if global.panic
        {
            global.panic = 0
            global.minutessaved = global.minutes
            global.secondssaved = global.seconds
            global.wavesaved = global.wave
            global.maxwavesaved = global.maxwave
        }
        if audio_is_playing(mu_escape)
            audio_pause_sound(mu_escape)
        else if audio_is_playing(mu_laplap)
            audio_pause_sound(mu_laplap)
        else if audio_is_playing(mu_pizzano_escape)
            audio_pause_sound(mu_pizzano_escape)
        else if audio_is_playing(mu_lap2Pizzano)
            audio_pause_sound(mu_lap2Pizzano)
        else if audio_is_playing(mu_lap3)
            audio_pause_sound(mu_lap3)
        var roomname = room
        with (obj_music)
        {
            if ((room == entrywaysecret_1 || room == entrywaysecret_2 || room == entrywaysecret_3) && obj_player.character == "P")
            {
                if (!audio_is_playing(mu_wafflesecret))
                    scr_music(mu_wafflesecret)
            }
            if ((room == entrywaysecret_1 || room == entrywaysecret_2 || room == entrywaysecret_3) && obj_player.character == "N")
            {
                if (!audio_is_playing(mu_pizzano_secret))
                    scr_music(mu_pizzano_secret)
            }
            if (room == steamy_secret1 || room == steamy_secret2 || room == steamy_secret3 || room == steamynew_secret1 || room == steamynew_secret2 || room == steamynew_secret3unused || room == steamynew_secret3)
            {
                if (!audio_is_playing(mu_steamysecret))
                    scr_music(mu_steamysecret)
            }
            if (room == molassessecret_1 || room == molassessecret_2 || room == molassessecret_3)
            {
                if (!audio_is_playing(mu_swampsecret))
                    scr_music(mu_swampsecret)
            }
            if (room == minessecret_1 || room == minessecret_2 || room == minessecret_3)
            {
                if (!audio_is_playing(mu_minessecret))
                    scr_music(mu_minessecret)
            }
        }
    }
    else if (instance_exists(obj_secretportalstart) && global.secretroom == 0)
    {
        global.panic = 1
        global.minutes = global.minutessaved
        global.seconds = global.secondssaved
        global.wave = global.wavesaved
        global.maxwave = global.maxwavesaved
        audio_stop_all_music()
        if audio_is_paused(mu_escape)
            audio_resume_sound(mu_escape)
        else if audio_is_paused(mu_laplap)
            audio_resume_sound(mu_laplap)
        else if audio_is_paused(mu_pizzano_escape)
            audio_resume_sound(mu_pizzano_escape)
        else if audio_is_paused(mu_lap2Pizzano)
            audio_resume_sound(mu_lap2Pizzano)
        else if audio_is_paused(mu_lap3)
            audio_resume_sound(mu_lap3)
        scr_escapebgs()
    }
}
if (state != (0 << 0))
    obj_tv.screensaverbuffer = 600
if (state != (71 << 0) && state != (34 << 0) && state != (72 << 0) && state != (105 << 0) && smashbodyslam != 0)
    smashbodyslam = 0
if (state != (118 << 0))
    drownbuffer = 0
if (key_shoot && character == "N" && state != (96 << 0) && state != (85 << 0) && state != (94 << 0) && state != (95 << 0) && state != (53 << 0) && sprite_index != spr_pizzano_candybegin && sprite_index != spr_pizzano_candyidle && sprite_index != spr_pizzano_candytransitionup && sprite_index != spr_pizzano_candyup && room != rm_credits && room != realtitlescreen && room != rm_verify && room != rank_room && room != palroom && room != scootercutsceneidk && room != spireintro && sprite_index != spr_pizzano_sleep && sprite_index != spr_pizzano_sleepend && sprite_index != spr_pizzano_taunt && sprite_index != spr_pizzano_supertaunt1 && sprite_index != spr_pizzano_bodyslamprep && sprite_index != spr_pizzano_bodyslamfall && sprite_index != spr_pizzano_superjumpland && sprite_index != spr_pizzano_mach3hitwallair && sprite_index != spr_pizzano_minecartspin && sprite_index != spr_pizzano_minecartjump && sprite_index != spr_pizzano_djump && sprite_index != spr_pizzano_eatdonut && sprite_index != spr_pizzano_sleepstart && sprite_index != spr_pizzano_fireass && sprite_index != spr_pizzano_fireassend && state != (86 << 0) && state != (102 << 0) && state != (74 << 0) && state != (56 << 0) && state != (118 << 0) && (!instance_exists(obj_titlecard)) && (!instance_exists(obj_layoutselect)))
{
    if (!audio_is_playing(sfx_pizzanoscreamstart))
    {
        if (screambuffer > 0)
            scr_sound(sfx_pizzanoscreamstart)
    }
    if (screambuffer > 0)
        screambuffer--
    else if (!audio_is_playing(sfx_pizzanoscream))
    {
        scr_sound(sfx_pizzanoscream)
        audio_stop_sound(sfx_pizzanoscreamstart)
    }
}
else
{
    if audio_is_playing(sfx_pizzanoscreamstart)
        audio_stop_sound(sfx_pizzanoscreamstart)
    if audio_is_playing(sfx_pizzanoscream)
        audio_stop_sound(sfx_pizzanoscream)
    screambuffer = 30
}
if (global.key_inv && global.lvldesign == 1 && (!instance_exists(obj_spookey)))
{
    with (instance_create(x, (y - 30), obj_explosioneffect))
    {
        sprite_index = spr_taunteffect
        depth = -2
    }
    with (instance_create(x, y, obj_spookey))
        sprite_index = spr_spookey_appear
    global.combotime = 60
    scr_queue_tvanim(obj_tv.spookeytvspr, 200)
}
if (!global.realsigma)
{
    drawsprite = sprite_index
    drawimage = image_index
}
else if (spr_sigma == -4)
{
    drawsprite = spr_noclip
    drawimage = image_index
}
else if (state == (1 << 0))
{
    drawsprite = spr_null
    drawimage = image_index
}
else
{
    drawsprite = spr_sigma
    drawimage += image_speed
    if (floor(drawimage) == (sprite_get_number(drawsprite) - 1))
        drawimage = frac(drawimage)
}
switch global.secretfound
{
    case 1:
        global.secretfound1 = true
        break
    case 2:
        global.secretfound1 = true
        global.secretfound2 = true
        break
    case 3:
        global.secretfound1 = true
        global.secretfound2 = true
        global.secretfound3 = true
        break
    default:
        global.secretfound1 = false
        global.secretfound2 = false
        global.secretfound3 = false
        break
}

if (scale_xs < 1 && tonormalxscale)
{
    scale_ys = approach(scale_ys, 1, 0.2)
    scale_xs = approach(scale_xs, 1, 0.2)
}
else if tonormalxscale
    tonormalxscale = false
if (!global.realsigma)
{
    ischaracter = "normal"
    spr_sigma = -4
    if (mask_index != spr_player_mask && mask_index != spr_crouchmask)
        mask_index = spr_player_mask
}
if key_jump
    input_buffer_jump = 0
if key_slap2
    input_buffer_slap = 0
if (state != (64 << 0) && state != (29 << 0) && tauntstoredstate != (64 << 0) && tauntstoredstate != (29 << 0))
    input_buffer_crouch = 0
if (key_down2 && (state == (85 << 0) || tauntstoredstate == (85 << 0)))
{
    input_buffer_cottondown = 0
    key_down2 = false
}
if key_attack2
    input_buffer_attack = 0
if (state != (85 << 0) && tauntstoredstate != (85 << 0))
    input_buffer_cottondown = 10
if (state != (85 << 0) && tauntstoredstate != (85 << 0) && state != (95 << 0) && tauntstoredstate != (95 << 0))
    cottonrollgetup = 0
if ((state != (10 << 0) && tauntstoredstate != (10 << 0)) || character != "N")
    wallbuffer = 0
if place_meeting(x, y, obj_cottonsolid)
    obj_cottonvisible.cottonalpha = approach(obj_cottonvisible.cottonalpha, 0.5, 0.1)
else
    obj_cottonvisible.cottonalpha = approach(obj_cottonvisible.cottonalpha, 1, 0.1)
if (state != (85 << 0) && state != (94 << 0) && tauntstoredstate != (85 << 0) && tauntstoredstate != (94 << 0))
    cottonuppercut = 0
if (paletteselect != 17)
    global.green = false
