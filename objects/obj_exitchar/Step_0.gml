image_speed = 0.35
depth = 20
if (obj_player.character == "N")
{
    rosette = 0
    stinky = 1
}
switch state
{
    case (1 << 0):
        x = camera_get_view_x(view_camera[0]) - 100
        y = camera_get_view_y(view_camera[0]) - 100
        var dx = 350
        var dy = 400
        if (global.panic && distance_to_pos(xstart, ystart, obj_player.x, obj_player.y, dx, dy))
        {
            state = (71 << 0)
            vsp = 20
            if jerald
                sprite_index = spr_jerald_fall
            else if ((!jerald) && rosette)
                sprite_index = spr_rosette_fall
            else if ((!jerald) && stinky)
                sprite_index = spr_stinkyfall
            x = xstart
            y = camera_get_view_y(view_camera[0]) - 100
        }
        break
    case (71 << 0):
        y += vsp
        if (vsp < 20)
            vsp += 0.5
        with (instance_place(x, y, obj_baddie))
            instance_destroy()
        if (y >= ystart)
        {
            y = ystart
            state = (0 << 0)
            if jerald
                sprite_index = spr_jeraldsign
            else if ((!jerald) && rosette)
                sprite_index = spr_rosettesign
            else if ((!jerald) && stinky)
                sprite_index = spr_stinkyexit
            image_index = 0
        }
        break
    case (72 << 0):
        if (floor(image_index) == (image_number - 1))
        {
            if jerald
                sprite_index = spr_jeraldsign
            else if ((!jerald) && rosette)
                sprite_index = spr_rosettesign
            else if ((!jerald) && stinky)
                sprite_index = spr_stinkyexit
            image_index = 0
            state = (0 << 0)
        }
        break
}

if (state == (1 << 0))
    visible = false
else
    visible = true
