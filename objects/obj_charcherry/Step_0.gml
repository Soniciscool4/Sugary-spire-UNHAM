if (flash && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed
if (sprite_index != spr_charcherry_wait && (!global.panic))
    sprite_index = spr_charcherry_wait
if (state != (12 << 0) && state != (13 << 0))
    state = (12 << 0)
