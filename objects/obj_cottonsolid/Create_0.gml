can_collide = function(argument0) //anon@14@gml_Object_obj_cottonsolid_Create_0
{
    if (argument0 == undefined)
        argument0 = obj_player
    if (argument0 == obj_player)
    {
        if (argument0.state == (85 << 0) || argument0.state == (94 << 0) || argument0.state == (95 << 0))
            return false;
        return true;
    }
    else
        return true;
}

with (instance_create(x, y, obj_cottonplatform))
{
    sprite_index = spr_wall
    image_xscale = other.image_xscale
    image_yscale = other.image_yscale
    visible = false
}
