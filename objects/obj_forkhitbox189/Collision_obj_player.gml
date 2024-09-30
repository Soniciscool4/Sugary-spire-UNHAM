with (obj_player)
{
    if ((state == (17 << 0) || state == (18 << 0) || state == (11 << 0)) && (!cutscene))
    {
    }
    else if (state == (20 << 0) && (!hurted))
    {
    }
    else if (state == (8 << 0))
    {
    }
    else if (state == (5 << 0) || state == (7 << 0))
    {
    }
    else if (state != (70 << 0) && (!hurted) && (!cutscene) && state != (69 << 0) && state != (93 << 0))
    {
        scr_sound(sound_touchspike)
        global.hurtcounter += 1
        alarm[8] = 60
        alarm[7] = 120
        hurted = true
        if (xscale == other.image_xscale)
            sprite_index = spr_hurtjump
        else
            sprite_index = spr_hurt
        movespeed = 8
        vsp = -5
        timeuntilhpback = 300
        if (global.collect > 100)
            global.collect -= 100
        else
            global.collect = 0
        if (global.collect != 0)
        {
            instance_create(x, y, obj_pizzaloss)
            instance_create(x, y, obj_pizzaloss)
            instance_create(x, y, obj_pizzaloss)
            instance_create(x, y, obj_pizzaloss)
            instance_create(x, y, obj_pizzaloss)
            instance_create(x, y, obj_pizzaloss)
            instance_create(x, y, obj_pizzaloss)
            instance_create(x, y, obj_pizzaloss)
            instance_create(x, y, obj_pizzaloss)
            instance_create(x, y, obj_pizzaloss)
            instance_create(x, y, obj_pizzaloss)
            instance_create(x, y, obj_pizzaloss)
        }
        else if obj_player.shotgunAnim
            obj_player.shotgunAnim = false
        instance_create(x, y, obj_spikehurteffect)
        state = (70 << 0)
        image_index = 0
        flash = true
        global.style -= 15
    }
}
with (instance_nearest(x, y, obj_sluggy))
{
    if (obj_sluggy.state != (18 << 0))
    {
        state = (18 << 0)
        sprite_index = spr_sluggy_parry
        image_index = 0
        movespeed = -8
        flash = true
        image_xscale = (-(sign(x - obj_player.x)))
        scr_sound(sound_parry)
    }
}
