if (!instance_exists(ID))
    instance_destroy()
if instance_exists(ID)
{
    x = ID.x
    y = ID.y
    image_xscale = ID.image_xscale
    image_index = ID.image_index
    with (ID)
    {
        if (object_index == obj_sluggy)
        {
            if (obj_sluggy.state == (17 << 0) && obj_player.state != (90 << 0))
            {
                sluggyhitboxcreated = false
                instance_destroy(other.id)
            }
        }
    }
}
