if (object_index != obj_charcherry && (!thrown) && state != (19 << 0) && (object_index != obj_cottonwitch || (object_index == obj_cottonwitch && state != (9 << 0) && global.layout == 1) || (object_index == obj_cottonwitch && global.layout == 0)))
{
    scr_sound(sound_slaphit)
    instance_create((x + obj_player.xscale * 40), y, obj_punchdust)
    if (obj_player.character == "P")
    {
        if (!global.cane)
        {
            state = (8 << 0)
            with (obj_player)
            {
                suplexhavetomash = 5
                baddiegrabbedID = other.id
                if (movespeed <= 12)
                {
                    state = (38 << 0)
                    sprite_index = spr_player_haulingstart
                }
                else
                {
                    sprite_index = spr_player_swingding
                    state = (4 << 0)
                    instance_create(x, y, obj_jumpdust)
                }
                if key_up
                {
                    state = (34 << 0)
                    sprite_index = spr_player_piledriverstart
                    vsp = -12
                }
                image_index = 0
            }
            instance_destroy(other.id)
        }
        else
        {
            state = (6 << 0)
            hp -= 1
            thrown = true
            hsp = obj_player.xscale * 15
            vsp = -6
            obj_player.hsp = 0
            obj_player.vsp = 0
            obj_player.sprite_index = obj_player.spr_canehit
            obj_player.state = (84 << 0)
        }
    }
}
