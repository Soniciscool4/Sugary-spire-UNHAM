if (state == (6 << 0) && stunned > 100 && (!birdcreated))
{
    birdcreated = true
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != (6 << 0))
    birdcreated = false
if (state == (3 << 0) && y > ystart && (!(scr_solid(x, (y - 1)))))
    y--
if (state == (3 << 0) && y < ystart && (!(scr_solid(x, (y + 1)))))
    y++
if (state == (6 << 0))
    grav = 0.5
else
{
    grav = 0
    vsp = 0
}
if (flash && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed
if (state != (8 << 0))
    depth = 0
if (obj_player.x > (x - 400) && obj_player.x < (x + 400) && y <= (obj_player.y + 60) && y >= (obj_player.y - 60))
{
}
if ((!hitboxcreate) && state == (1 << 0) && sprite_index == spr_swed_charge)
{
    hitboxcreate = true
    with (instance_create(x, y, obj_forkhitbox))
    {
        ID = other.id
        image_xscale = other.image_xscale
        x = other.x
        y = other.y
        depth = -1
    }
}
if (sprite_index == spr_swed_chargestart && floor(image_index) == (image_number - 1))
{
    sprite_index = spr_swed_charge
    movespeed = 10
}
if (bombreset > 0)
    bombreset--
if ((!obj_player.bushdetection) && obj_player.x > (x - 400) && obj_player.x < (x + 400) && y <= (obj_player.y + 60) && y >= (obj_player.y - 60) && state == (3 << 0) && (!bombreset))
{
    if (state != (1 << 0) || state != (6 << 0))
        state = (1 << 0)
    if (state == (1 << 0) && sprite_index != spr_swed_charge && sprite_index != scaredspr)
    {
        sprite_index = spr_swed_chargestart
        image_xscale = (-(sign(x - obj_player.x)))
        bombreset = 250
    }
}
if (state == (1 << 0) && place_meeting((x + 1), y, obj_solid) && vsp < -18)
{
    state = (6 << 0)
    vsp++
    sprite_index = stunfallspr
    stunned = 100
}
if (state == (6 << 0) || state == (3 << 0))
    movespeed = 0
if (state != (6 << 0))
    thrown = 0
if (!boundbox)
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
