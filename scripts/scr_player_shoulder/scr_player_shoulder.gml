function scr_player_shoulder() //scr_player_shoulder
{
    movespeed = 0
    mach2 = 0
    jumpAnim = true
    dashAnim = true
    landAnim = false
    moveAnim = true
    stopAnim = true
    crouchslideAnim = true
    crouchAnim = true
    if (floor(image_index) == (image_number - 1))
        state = (0 << 0)
    sprite_index = spr_player_shoulder
    image_speed = 0.35
}

