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
scr_scareenemy()
var targetplayer = instance_nearest(x, y, obj_player)
if (x != targetplayer.x && grounded)
{
    if (targetplayer.x > (x - 400) && targetplayer.x < (x + 400) && y <= (targetplayer.y + 20) && y >= (targetplayer.y - 20))
    {
        if (state == (3 << 0))
        {
            state = (1 << 0)
            movespeed = 0
            image_xscale = (-(sign(x - obj_player.x)))
            sprite_index = spr_banana_chargestart
            image_index = 0
        }
    }
}
if (sprite_index == spr_banana_chargestart && floor(image_index) == (image_number - 1))
    sprite_index = spr_banana_charge
if ((!hitboxcreate) && state == (1 << 0) && sprite_index == spr_banana_charge)
{
    hitboxcreate = true
    with (instance_create(x, y, obj_forkhitbox))
    {
        ID = other.id
        image_xscale = other.image_xscale
        x = other.x
        y = other.y
        depth = -1
        sprite_index = spr_chargershitbox
        mask_index = spr_chargershitbox
    }
}
if (state == (3 << 0))
{
    movespeed = 0
    hsp = 0
}
