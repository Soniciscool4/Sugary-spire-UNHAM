function scr_enemy_witchattack() //scr_enemy_witchattack
{
    image_speed = 0.35
    if animation_end()
    {
        instance_destroy(obj_cottonwitch_attackhitbox)
        state = (3 << 0)
        sprite_index = spr_cottonwitch_walk
        image_index = 0
        waitbuffer = 10
    }
}

