if instance_exists(ID)
{
    x = ID.x
    y = ID.y - 40
    if (ID.state != (6 << 0) || ID.stunned < 40)
    {
        ID.birdcreated = false
        instance_destroy()
    }
}
