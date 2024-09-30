depth = 4
can_collide = function(argument0) //anon@26@gml_Object_obj_minecartRail_Create_0
{
    if (argument0 == undefined)
        argument0 = obj_player
    if (argument0 == obj_player)
    {
        var wow = false
        if ((argument0.ischaracter == "minecart" && argument0.state != (71 << 0)) || argument0.state == (98 << 0) || argument0.state == (115 << 0))
            wow = true
        return wow;
    }
    else if (argument0 == obj_minecart || argument0 == obj_train)
        return true;
    else
        return false;
}

