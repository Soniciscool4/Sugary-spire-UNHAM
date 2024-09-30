if (point_in_circle(x, y, (obj_player.x + 75 * obj_player.xscale), obj_player.y, 125) && obj_player.inhaling && state != (11 << 0))
    state = (11 << 0)
if (state == (6 << 0) && stunned > 40 && (!birdcreated))
{
    birdcreated = true
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != (6 << 0))
    birdcreated = false
if (bombreset > 0)
    bombreset--
if (state == (20 << 0))
{
    if (waitbuffer > 0)
        waitbuffer--
}
else
    waitbuffer = 10
if (obj_player.x > (x - 400) && obj_player.x < (x + 400) && y <= (obj_player.y + 60) && y >= (obj_player.y - 60) && obj_player.state != (85 << 0) && obj_player.state != (94 << 0) && obj_player.state != (74 << 0) && obj_player.state != (95 << 0) && obj_player.state != (112 << 0) && global.layout == 0)
{
    if (state != (7 << 0) && (!bombreset) && obj_player.state != (85 << 0))
    {
        if (state == (3 << 0) || state == (0 << 0))
        {
            image_index = 0
            state = (7 << 0)
            if (x != obj_player.x)
                image_xscale = (-(sign(x - obj_player.x)))
            sprite_index = spr_throw
        }
    }
}
if (obj_player.x > (x - 200) && obj_player.x < (x + 200) && y <= (obj_player.y + 60) && y >= (obj_player.y - 60) && obj_player.state != (85 << 0) && obj_player.state != (94 << 0) && obj_player.state != (74 << 0) && obj_player.state != (95 << 0) && obj_player.state != (112 << 0) && obj_player.state != (67 << 0) && obj_player.sprite_index != spr_playerPZ_machslideboost3 && obj_player.sprite_index != spr_playerPZ_machslideboost3fall && obj_player.sprite_index != spr_pizzano_mach3boost && obj_player.sprite_index != spr_pizzano_mach3boostfall && obj_player.state != (60 << 0) && global.layout == 1)
{
    if (state != (7 << 0) && state != (9 << 0) && bombreset == 0 && global.layout == 1)
    {
        if (state == (3 << 0) || state == (0 << 0))
        {
            hsp = 0
            image_index = 0
            state = (20 << 0)
            if (x != obj_player.x)
                image_xscale = (-(sign(x - obj_player.x)))
            sprite_index = spr_cottonwitch_attack
            bombreset = 180
        }
    }
}
if ((!hitboxcreate) && waitbuffer == 0 && state == (20 << 0))
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_cottonwitch_attackhitbox))
    {
        ID = other.id
        depth = -1
    }
    scr_sound(sfx_electricity)
}
if (flash && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed
if (flash && alarm[4] <= 0)
    alarm[4] = 0.15 * room_speed
if (state != (8 << 0))
    depth = 0
if (state != (6 << 0))
    thrown = false
if ((!boundbox) && state != (11 << 0) && sprite_index != spr_cottonwitch_scarednew2)
{
    with (instance_create(x, y, obj_baddiecollisionbox))
    {
        sprite_index = other.sprite_index
        mask_index = other.mask_index
        baddieID = other.id
        other.boundbox = true
    }
}
scr_scareenemy()
