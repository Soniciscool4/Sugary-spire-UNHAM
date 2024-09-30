if (!((state == (17 << 0) && (!grounded))))
    scr_scareenemy()
if (state == (6 << 0) && stunned > 40 && (!birdcreated))
{
    birdcreated = true
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != (6 << 0))
    birdcreated = false
if (flash && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed
if (state != (8 << 0))
    depth = 0
if (state != (6 << 0))
    thrown = false
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
if ((!hitboxcreate) && state == (17 << 0))
{
    hitboxcreate = true
    with (instance_create(x, y, obj_forkhitbox))
    {
        ID = other.id
        depth = -1
        mask_index = spr_sluggy_jumphitbox
        sprite_index = spr_sluggy_jumphitbox
    }
}
if (state != (0 << 0) && state != (9 << 0) && state != (6 << 0) && state != (8 << 0) && state != (13 << 0) && state != (17 << 0) && state != (18 << 0) && idletimer > 0)
    idletimer--
if (state != (0 << 0) && state != (9 << 0) && state != (6 << 0) && state != (8 << 0) && state != (13 << 0) && state != (17 << 0) && state != (18 << 0) && jumptimer > 0)
    jumptimer--
var _isplayerpresent = (jumptimer <= 0 && obj_player.x > (x - 250) && obj_player.x < (x + 250) && y <= (obj_player.y + 200) && y >= (obj_player.y - 16))
if (grounded && (_isplayerpresent || (scr_solid((x + image_xscale * 32), y, true) && (!(scr_solid((x + image_xscale * 32), (y - 100), true))) && (!(scr_slope_ext((x + image_xscale * 32), y))) && (!(scr_slope_ext(x, (y + 1)))))))
{
    if (state == (3 << 0))
    {
        if _isplayerpresent
            image_xscale = (-(sign(x - obj_player.x)))
        state = (17 << 0)
        jumptimer = 100
        sprite_index = spr_sluggy_jumpstart
        image_index = 0
        movespeed = 0
        hsp = 0
        vsp = 0
    }
}
