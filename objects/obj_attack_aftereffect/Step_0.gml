if (playerid.state != (67 << 0) && playerid.state != (2 << 0) && playerid.state != (4 << 0) && playerid.state != (66 << 0) && playerid.state != (15 << 0) && playerid.state != (68 << 0) && playerid.state != (35 << 0) && playerid.state != (28 << 0) && playerid.state != (31 << 0) && playerid.state != (34 << 0) && playerid.state != (98 << 0) && playerid.state != (29 << 0) && playerid.state != (26 << 0) && playerid.state != (60 << 0) && playerid.state != (90 << 0) && playerid.state != (93 << 0) && playerid.state != 125 && playerid.state != (57 << 0) && playerid.state != (86 << 0) && playerid.state != (100 << 0) && (!global.cane) && playerid.state != (101 << 0) && playerid.state != (112 << 0))
    vanish = true
if vanish
{
    if (gonealpha > 0)
        gonealpha -= 0.15
    else if (gonealpha <= 0)
        instance_destroy()
}
visible = playerid.visible
with (realcol)
{
    switch other.color
    {
        case 1:
            r = 48
            g = 168
            b = 248
            r2 = 15
            g2 = 57
            b2 = 121
            break
        case 2:
            r = 232
            g = 80
            b = 152
            r2 = 95
            g2 = 9
            b2 = 32
            break
    }

}
