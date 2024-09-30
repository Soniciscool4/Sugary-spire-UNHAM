function scr_enemy_grabbed() //scr_enemy_grabbed
{
    if (sprite_index == spr_cottonwitch_scarednew2)
        return;
    image_xscale = (-obj_player.xscale)
    stunned = 200
    obj_player.baddiegrabbedID = id
    if (obj_player.state == (21 << 0) || obj_player.state == (38 << 0) || obj_player.state == (33 << 0) || obj_player.state == (35 << 0) || obj_player.state == (4 << 0))
    {
        x = obj_player.x
        if (obj_player.sprite_index != spr_player_haulingstart)
            y = obj_player.y - 40
        else if (floor(obj_player.image_index) == 0)
            y = obj_player.y
        else if (floor(obj_player.image_index) == 1)
            y = obj_player.y - 10
        else if (floor(obj_player.image_index) == 2)
            y = obj_player.y - 20
        else if (floor(obj_player.image_index) == 3)
            y = obj_player.y - 30
        image_xscale = (-obj_player.xscale)
    }
    with (obj_player)
    {
        suplexhavetomash = other.hp - 1
        scr_getinput()
        move = key_left2 + key_right2
        if (state != (38 << 0) && state != (21 << 0) && state != (84 << 0) && state != (35 << 0) && state != (4 << 0) && state != (39 << 0) && state != (34 << 0) && state != (40 << 0) && state != (41 << 0) && state != (42 << 0) && state != (119 << 0))
        {
            other.x = x
            other.y = y
            other.state = (6 << 0)
            other.image_index = 0
        }
    }
    hsp = 0
    if (obj_player.state == (39 << 0) && floor(obj_player.image_index) == 2)
    {
        alarm[3] = 3
        global.hit += 1
        if (other.object_index == obj_pizzaball)
            global.golfhit += 1
        hp -= 1
        instance_create((x + obj_player.xscale * 30), y, obj_bumpeffect)
        alarm[1] = 5
        thrown = true
        x = obj_player.x
        vsp = 0
        y = obj_player.y
        state = (6 << 0)
        hsp = (-image_xscale) * 25
        grav = 0
        global.combotime = 60
        instance_create(x, y, obj_slapstar)
        instance_create(x, y, obj_baddiegibs)
        flash = true
        with (obj_camera)
        {
            shake_mag = 3
            shake_mag_acc = 3 / room_speed
        }
    }
    if (obj_player.state == (40 << 0) && floor(obj_player.image_index) == 2)
    {
        alarm[3] = 3
        global.hit += 1
        if (other.object_index == obj_pizzaball)
            global.golfhit += 1
        hp -= 1
        instance_create((x + (-obj_player.xscale) * 50), y, obj_bumpeffect)
        alarm[1] = 5
        thrown = true
        x = obj_player.x
        y = obj_player.y
        state = (6 << 0)
        image_xscale *= -1
        hsp = (-image_xscale) * 20
        vsp = -7
        global.combotime = 60
        instance_create(x, y, obj_slapstar)
        instance_create(x, y, obj_baddiegibs)
        flash = true
        with (obj_camera)
        {
            shake_mag = 3
            shake_mag_acc = 3 / room_speed
        }
    }
    if (obj_player.state == (42 << 0) && floor(obj_player.image_index) == 2)
    {
        global.hit += 1
        hp -= 1
        instance_create(x, (y + 20), obj_bumpeffect)
        alarm[1] = 5
        thrown = true
        x = obj_player.x
        y = obj_player.y
        state = (6 << 0)
        hsp = (-image_xscale) * 10
        vsp = -10
        global.combotime = 60
        instance_create(x, y, obj_slapstar)
        instance_create(x, y, obj_baddiegibs)
        flash = true
        with (obj_camera)
        {
            shake_mag = 3
            shake_mag_acc = 3 / room_speed
        }
    }
    if (obj_player.state == (33 << 0) && floor(obj_player.image_index) == 2)
    {
        global.hit += 1
        hp -= 1
        alarm[1] = 5
        thrown = true
        x = obj_player.x
        y = obj_player.y
        state = (6 << 0)
        hsp = (-image_xscale) * 10
        vsp = -10
    }
    if (obj_player.state == (4 << 0))
    {
        if (floor(obj_player.image_index) == 0)
        {
            depth = 0
            x = obj_player.x + obj_player.xscale * 10
            y = obj_player.y
        }
        if (floor(obj_player.image_index) == 1)
        {
            depth = 0
            x = obj_player.x + obj_player.xscale * 5
            y = obj_player.y
        }
        if (floor(obj_player.image_index) == 2)
        {
            depth = 0
            x = obj_player.x
            y = obj_player.y
        }
        if (floor(obj_player.image_index) == 3)
        {
            depth = 0
            x = obj_player.x + obj_player.xscale * -5
            y = obj_player.y
        }
        if (floor(obj_player.image_index) == 4)
        {
            depth = 0
            x = obj_player.x + obj_player.xscale * -10
            y = obj_player.y
        }
        if (floor(obj_player.image_index) == 5)
        {
            depth = -8
            x = obj_player.x + obj_player.xscale * -5
            y = obj_player.y
        }
        if (floor(obj_player.image_index) == 6)
        {
            depth = -8
            x = obj_player.x
            y = obj_player.y
        }
        if (floor(obj_player.image_index) == 7)
        {
            depth = -8
            x = obj_player.x + obj_player.xscale * 5
            y = obj_player.y
        }
    }
    if (obj_player.state == (62 << 0))
    {
        x = obj_player.x
        y = obj_player.y
    }
    if (obj_player.state == (34 << 0))
    {
        if (obj_player.character == "P")
        {
            x = obj_player.x - obj_player.xscale * 2
            y = obj_player.y - 70
        }
        else
        {
            depth = -7
            x = obj_player.x
            y = obj_player.y - 40
        }
    }
    sprite_index = grabbedspr
    image_speed = 0.35
    if (obj_player.state == (84 << 0) && (!thrown))
    {
        x = obj_player.x + 50 * obj_player.xscale
        y = obj_player.y - 5
        if (place_meeting(x, y, obj_solid) && (!(place_meeting(x, y, obj_slope))) && (!(place_meeting(x, y, obj_slopeplatform))) && ((!(place_meeting(x, y, obj_destructibles))) || place_meeting(x, y, obj_oneway)))
            x = obj_player.x
        hsp = 0
        vsp = 0
    }
}

