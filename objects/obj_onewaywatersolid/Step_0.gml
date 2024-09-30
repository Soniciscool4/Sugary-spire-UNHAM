if (obj_player.state != (66 << 0) && obj_player.state != (67 << 0) && obj_player.state != (98 << 0))
{
    instance_destroy()
    if instance_exists(obj_watertop)
        obj_watertop.created = false
    if instance_exists(obj_minecartRail)
        obj_minecartRail.created = false
}
