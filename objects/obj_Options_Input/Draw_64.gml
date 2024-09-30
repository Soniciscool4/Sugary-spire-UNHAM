draw_set_halign(fa_center)
draw_set_font(global.font)
draw_option(150, (30 + ScrollY), "BACK", optionselected == (0 << 0))
var _yy = 50
var _x1 = 400
var _x2 = 600
draw_option(_x1, (_yy + ScrollY), "UP", optionselected == (1 << 0))
draw_text(_x2, (_yy + ScrollY), scr_keyname(global.key_up))
_yy += 50
draw_option(_x1, (_yy + ScrollY), "RIGHT", optionselected == (2 << 0))
draw_text(_x2, (_yy + ScrollY), scr_keyname(global.key_right))
_yy += 50
draw_option(_x1, (_yy + ScrollY), "LEFT", optionselected == (3 << 0))
draw_text(_x2, (_yy + ScrollY), scr_keyname(global.key_left))
_yy += 50
draw_option(_x1, (_yy + ScrollY), "DOWN", optionselected == (4 << 0))
draw_text(_x2, (_yy + ScrollY), scr_keyname(global.key_down))
_yy += 50
draw_option(_x1, (_yy + ScrollY), "JUMP", optionselected == (5 << 0))
draw_text(_x2, (_yy + ScrollY), scr_keyname(global.key_jump))
_yy += 50
draw_option(_x1, (_yy + ScrollY), "GRAB", optionselected == (6 << 0))
draw_text(_x2, (_yy + ScrollY), scr_keyname(global.key_slap))
_yy += 50
draw_option(_x1, (_yy + ScrollY), "TAUNT", optionselected == (7 << 0))
draw_text(_x2, (_yy + ScrollY), scr_keyname(global.key_taunt))
_yy += 50
draw_option(_x1, (_yy + ScrollY), "SHOOT", optionselected == (8 << 0))
draw_text(_x2, (_yy + ScrollY), scr_keyname(global.key_shoot))
_yy += 50
draw_option(_x1, (_yy + ScrollY), "MACHRUN", optionselected == (9 << 0))
draw_text(_x2, (_yy + ScrollY), scr_keyname(global.key_attack))
_yy += 50
draw_option(_x1, (_yy + ScrollY), "START", optionselected == (10 << 0))
draw_text(_x2, (_yy + ScrollY), scr_keyname(global.key_start))
_yy += 50
draw_set_font(global.smallfont)
draw_text(480, 512, subtitle)
