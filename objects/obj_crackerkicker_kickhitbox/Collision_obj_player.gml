with (other.id)
{
    if (instance_exists(other.baddieID) && state != (93 << 0) && state != (85 << 0) && state != (112 << 0))
    {
        state = (93 << 0)
        xscale = other.baddieID.image_xscale
        movespeed = 14
        vsp = 0
        sprite_index = spr_tumble
    }
}
