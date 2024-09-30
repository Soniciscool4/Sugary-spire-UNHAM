image_xscale = obj_player.xscale
x = obj_player.x
y = obj_player.y
if ((obj_player.image_index > 3 || obj_player.state != (3 << 0)) && obj_player.state != (15 << 0) && obj_player.state != (2 << 0) && obj_player.state != (112 << 0))
    instance_destroy()
