draw_set_halign(fa_center)
draw_set_font(global.font)
draw_sprite_tiled(bg_options, 0, bgx, bgy)
draw_sprite_ext(spr_arrow, -1, 250, (CursorY + 24), 1, 1, 0, c_white, 1)
if (!selected)
{
    draw_option(150, 30, "BACK", optionselected == (0 << 0))
    draw_option(480, 100, "AUDIO CONFIG", optionselected == (1 << 0))
    draw_option(480, 200, "VIDEO CONFIG", optionselected == (2 << 0))
    draw_option(480, 300, "CONTROL CONFIG", optionselected == (3 << 0))
    draw_option((480 + (random_range((-moddedshake), moddedshake))), (400 + (random_range((-moddedshake), moddedshake))), "MODDED CONFIG", optionselected == (4 << 0))
    draw_set_font(global.smallfont)
    draw_text(480, 512, subtitle)
}
