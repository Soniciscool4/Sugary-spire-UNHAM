if ((!instance_exists(ID)) || obj_player.state == (67 << 0) || obj_player.state == (112 << 0) || obj_player.state == (101 << 0) || obj_player.state == (98 << 0))
    instance_destroy()
if instance_exists(ID)
{
    x = ID.x
    y = ID.y
    image_xscale = ID.image_xscale
    image_index = ID.image_index
    with (ID)
    {
        switch object_index
        {
            case obj_knight:
                if (state != (0 << 0) && state != (3 << 0))
                {
                    hitboxcreate = false
                    instance_destroy(other.id)
                }
                break
            case obj_sluggy:
                if (state != (17 << 0))
                {
                    hitboxcreate = false
                    instance_destroy(other.id)
                }
                break
            case obj_charger:
                if (state != (1 << 0) && sprite_index != spr_banana_charge)
                {
                    hitboxcreate = false
                    instance_destroy(other.id)
                }
                break
            case obj_swedishfish:
                if (state != (4 << 0))
                {
                    hitboxcreate = false
                    instance_destroy(other.id)
                }
                break
            case obj_punk:
                if (state != (21 << 0))
                {
                    hitboxcreate = false
                    instance_destroy(other.id)
                }
                break
        }

    }
}
