if (obj_player.state != (90 << 0) && obj_player.state != (43 << 0) && obj_player.state != (1 << 0))
{
    if (obj_player.character == "N")
    {
        obj_player.state = (90 << 0)
        obj_player.image_index = 0
        obj_player.sprite_index = spr_pizzano_parry1
        if (!instance_exists(other.parryid))
        {
            with (instance_create(x, y, obj_parryhitbox))
            {
                other.parryid = id
                image_xscale = obj_player.xscale
            }
            if (!audio_is_playing(sound_parry))
                scr_sound(sound_parry)
        }
    }
    else if (obj_player.state != (20 << 0))
    {
        obj_player.state = (20 << 0)
        obj_player.bombpeptimer = 0
        obj_player.sprite_index = spr_bombpep_end
    }
}
