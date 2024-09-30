with (obj_player)
{
    if (state == (85 << 0) || state == (94 << 0) || state == (95 << 0))
    {
        scr_sound(sfx_cottongone)
        if (character == "P")
        {
            if chance(0.5)
                scr_sound(sfx_voiceidle2PZ)
        }
        scr_sound(sfx_detransfo)
        state = (0 << 0)
        sprite_index = spr_idle
        instance_create(x, y, obj_poofeffect)
        image_index = 0
    }
}
