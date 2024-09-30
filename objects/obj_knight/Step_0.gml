if (point_in_circle(x, y, (obj_player.x + 75 * obj_player.xscale), obj_player.y, 125) && obj_player.inhaling && state != (11 << 0))
    state = (11 << 0)
if (state == (6 << 0) && stunned > 40 && (!birdcreated))
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != (6 << 0))
    birdcreated = false
if (flash && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed
if ((!hitboxcreate) && state == (3 << 0))
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_forkhitbox))
    {
        ID = other.id
        depth = -1
    }
}
if (state != (8 << 0))
    depth = 0
if (state != (6 << 0))
    thrown = false
if ((!boundbox) && state != (11 << 0))
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
