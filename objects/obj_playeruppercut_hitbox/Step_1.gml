if ((!instance_exists(playerID)) || playerID.vsp > 2 || (playerID.state != (86 << 0) && playerID.tauntstoredstate != (86 << 0)))
{
    instance_destroy()
    return;
}
x = playerID.x
y = playerID.y
image_xscale = playerID.xscale
