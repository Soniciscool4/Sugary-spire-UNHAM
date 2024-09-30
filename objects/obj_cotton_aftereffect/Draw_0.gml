pal_swap_set(obj_player.spr_palette, obj_player.paletteselect, 0)
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha)
shader_reset()
if ((obj_player.state == (85 << 0) || obj_player.state == (94 << 0) || obj_player.state == (95 << 0)) && obj_player.drawsprite != sprite_index)
{
    var cottonfog = make_colour_rgb(255, 139, 220)
    if (obj_player.character == "N")
        cottonfog = make_colour_rgb(48, 168, 248)
    gpu_set_fog(true, cottonfog, 1, 1)
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, (0.65 * image_alpha))
    gpu_set_fog(false, c_white, 0, 0)
}
