big = 0
image_speed = 0
image_index = choose(0, 1, 3)
depth = 0
if big
    sprite_index = spr_cutoffbig
test = 0
var i = 0
while (i < 32)
{
    if place_meeting((x + i), y, obj_tiledestroy)
    {
        with (instance_place((x + i), y, obj_tiledestroy))
            active = true
        break
    }
    else if place_meeting((x + i), (y + i), obj_tiledestroy)
    {
        with (instance_place((x + i), (y + i), obj_tiledestroy))
            active = true
        break
    }
    else if place_meeting((x - i), y, obj_tiledestroy)
    {
        with (instance_place((x - i), y, obj_tiledestroy))
            active = true
        break
    }
    else if place_meeting((x - i), (y - i), obj_tiledestroy)
    {
        with (instance_place((x + i), (y + i), obj_tiledestroy))
            active = true
        break
    }
    else if place_meeting(x, y, obj_tiledestroy)
    {
        with (instance_place(x, y, obj_tiledestroy))
            active = true
        break
    }
    else
        i++
}
if ((!(place_meeting(x, y, obj_solid))) && (!test))
    instance_destroy()
