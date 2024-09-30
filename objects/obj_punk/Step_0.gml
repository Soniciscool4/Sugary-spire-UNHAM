if (state == (6 << 0) && stunned > 40 && (!birdcreated))
{
    birdcreated = true
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
    idletimer = 200
}
if (idletimer > 0)
    idletimer--
else if (state == (21 << 0))
    idletimer = 250
if (state != (6 << 0))
    birdcreated = false
if (flash && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed
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
if (obj_player.x > (x - 400) && obj_player.x < (x + 400) && y <= (obj_player.y + 60) && y >= (obj_player.y - 60) && obj_player.state != (94 << 0) && obj_player.state != (74 << 0) && obj_player.state != (95 << 0) && obj_player.state != (112 << 0))
{
    if (state != (7 << 0) && (!idletimer))
    {
        if (state == (3 << 0) || state == (0 << 0))
        {
            hsp = 0
            image_index = 0
            sprite_index = spr_candycorn_prep
            state = (21 << 0)
            if (x != obj_player.x)
                image_xscale = (-(sign(x - obj_player.x)))
            punkbuffer = 110
        }
    }
}
if ((!hitboxcreate) && sprite_index == spr_candycorn_attack && state == (21 << 0))
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_forkhitbox))
    {
        ID = other.id
        depth = -1
    }
}
if (state == (6 << 0))
    grav = 0.5
else
    grav = 0
