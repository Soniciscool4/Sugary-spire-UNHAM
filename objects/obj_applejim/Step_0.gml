bashcooldown--
if (state == (3 << 0))
    movespeed = 0
if (state == (14 << 0))
    movespeed = 5
if (bashcooldown == 0)
{
    sprite_index = spr_applejim_charge
    state = (14 << 0)
    bashcooldown = 200
}
if (state == (6 << 0) && stunned > 40 && (!birdcreated))
{
    birdcreated = true
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (hp == 0)
    instance_destroy()
if (state != (6 << 0))
    birdcreated = 0
if (flash && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed
if (state != (8 << 0))
    depth = 0
instance_destroy(obj_baddiethrow)
instance_destroy(obj_swordhitbox)
instance_destroy(obj_slaphitbox)
