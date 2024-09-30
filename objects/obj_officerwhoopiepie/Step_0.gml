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
if ((!hitboxcreate) && (state == (0 << 0) || state == (3 << 0)) && obj_player.state != (67 << 0))
{
    hitboxcreate = true
    with (instance_create(x, y, obj_taserhitbox))
        ID = other.id
}
if (state == (6 << 0))
    hitboxcreate = false
if (x != obj_player.x)
{
    movespeed = 3
    image_xscale = (-(sign(x - obj_player.x)))
}
