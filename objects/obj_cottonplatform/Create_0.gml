can_collide = function(argument0) //anon@14@gml_Object_obj_cottonplatform_Create_0
{
    if (argument0 == undefined)
        argument0 = obj_player
    if (argument0 == obj_player)
    {
        var wow = ((argument0.state == (85 << 0) && argument0.sprite_index != spr_cotton_drill && argument0.sprite_index != spr_cottonPizzano_wallclimb && argument0.sprite_index != spr_cottonPizzano_fastfall) || argument0.state == (95 << 0))
        return wow;
    }
    else
        return true;
}

