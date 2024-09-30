image_xscale = obj_player.xscale
if (obj_player.state != (67 << 0) && obj_player.state != (98 << 0))
    instance_destroy()
if (obj_player.state != (98 << 0))
{
    if (obj_player.ischaracter == "chuck")
        x = obj_player.x + 16 * image_xscale
    else if (obj_player.sprite_index == spr_pizzano_wallclimbspincancelstart || obj_player.sprite_index == spr_pizzano_wallclimbspincancel)
        x = obj_player.x + 16 * image_xscale
    else
        x = obj_player.x
}
else if (obj_player.state == (98 << 0) || obj_player.ischaracter == "minecart")
    x = obj_player.x + 32 * obj_player.xscale
if (obj_player.sprite_index == spr_pizzano_wallclimbspincancelstart || obj_player.sprite_index == spr_pizzano_wallclimbspincancel)
    y = obj_player.y - 5
else
    y = obj_player.y
depth = obj_player.depth - 6
if (obj_player.state == (29 << 0) || obj_player.sprite_index == spr_player_dive || (obj_player.state == (98 << 0) && obj_player.movespeed < 12))
    instance_destroy()
