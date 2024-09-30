if (DestroyedBy.object_index == obj_player)
{
    if ((place_meeting(x, (y - DestroyedBy.vsp), DestroyedBy) || place_meeting(x, (y - sign(DestroyedBy.vsp)), DestroyedBy)) && DestroyedBy.vsp < 0 && DestroyedBy.state == (57 << 0))
    {
        DestroyedBy.vsp = 0
        if (hp <= 1)
            instance_destroy()
        if (hp > 1)
        {
            ShakeBuffer = 5
            hp -= 1
            scr_sound(choose(sound_destroyblock1, sound_destroyblock2))
            instance_destroy()
        }
    }
    else if (place_meeting((x - DestroyedBy.hsp), y, DestroyedBy) && (DestroyedBy.state == (15 << 0) || DestroyedBy.state == (65 << 0) || DestroyedBy.state == (66 << 0)))
    {
        with (DestroyedBy)
        {
            with (other.id)
            {
                if (hp <= 1 || DestroyedBy.state == (66 << 0))
                    instance_destroy()
                if (hp > 1)
                {
                    ShakeBuffer = 5
                    hp -= 1
                    scr_sound(choose(sound_destroyblock1, sound_destroyblock2))
                    instance_destroy()
                }
            }
        }
    }
    else
        instance_destroy()
}
else if (DestroyedBy.object_index == obj_baddie)
{
    if (hp <= 1)
        instance_destroy()
    if (hp > 1)
    {
        ShakeBuffer = 5
        hp -= 1
        scr_sound(choose(sound_destroyblock1, sound_destroyblock2))
        instance_destroy()
    }
}
else
    instance_destroy()
