pickthrowtime -= 0.5
if (obj_player.x > (x - 300) && obj_player.x < (x + 300) && y <= (obj_player.y + 200) && y >= (obj_player.y - 200) && obj_player.state != (85 << 0) && obj_player.state != (94 << 0) && obj_player.state != (74 << 0) && obj_player.state != (95 << 0) && obj_player.state != (112 << 0))
{
    sprite_index = spr_lolipopmineranger
    if (!pickthrowtime)
    {
        with (instance_create(x, y, obj_pickaxeprojectile))
            image_xscale = other.image_xscale
        pickthrowtime = irandom_range(200, 500)
    }
}
else
    sprite_index = spr_lolipopmineridle
