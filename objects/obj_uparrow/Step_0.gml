image_speed = 0.2
with (obj_player)
{
    if (((!(place_meeting(x, y, obj_door))) && ((!(place_meeting(x, y, obj_startgate))) || state == (58 << 0)) && (!(place_meeting(x, y, obj_keydoorclock))) && (!(place_meeting(x, y, obj_keydoor))) && (!(place_meeting(x, y, obj_exitgate))) && (!(place_meeting(x, y, obj_cottoncreator)))) || (!grounded) || state != (0 << 0))
        instance_destroy(other.id)
}
x = obj_player.x
y = obj_player.y - 50
