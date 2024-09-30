with (obj_player)
{
    if (key_up && ladderbuffer == 0 && (state == (0 << 0) || state == (86 << 0) || state == (66 << 0) || state == (67 << 0) || state == (65 << 0) || state == (23 << 0) || state == (57 << 0) || state == (25 << 0)) && state != (70 << 0) && state != (68 << 0) && state != (71 << 0) && state != (72 << 0))
    {
        mach2 = 0
        state = (56 << 0)
        x = other.x + 16
        y = floor(y)
        if ((y % 2) == 1)
            y -= 1
    }
}
