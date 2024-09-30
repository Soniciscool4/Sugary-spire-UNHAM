if (obj_player.x != x)
    drawxscale = (-(sign(x - obj_player.x)))
switch state
{
    case (0 << 0):
        scr_confecti_normal()
        break
    case (1 << 0):
        scr_confecti_taunt()
        break
    case (2 << 0):
        scr_confecti_appear()
        break
}

if (room == rank_room)
    visible = false
image_yscale = obj_player.yscale * obj_player.scale_ys
drawxscal = obj_player.scale_ys * image_xscale
