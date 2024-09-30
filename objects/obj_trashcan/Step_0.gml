if place_meeting(x, y, obj_player)
{
    var _object = instance_place(x, y, obj_player)
    if (_object.state == (15 << 0) || _object.state == (102 << 0) || _object.state == (66 << 0) || _object.state == (29 << 0) || _object.state == (64 << 0) || _object.state == (68 << 0) || _object.state == (90 << 0) || _object.instakillmove || _object.character == "N")
    {
        hsparray = [random_range((_object.hsp - 2), (_object.hsp + 2)), random_range((_object.hsp - 2), (_object.hsp + 2))]
        vsparray = [random_range(-16, -10), random_range(-16, -10)]
        if (sprite_index == spr_crunchybarrier)
        {
            hsparray[0] = clamp(hsparray[0], -6, 6)
            hsparray[1] = clamp(hsparray[1], -6, 6)
        }
        if bomb
        {
            hsparray[0] = clamp(hsparray[0], -12, 12)
            hsparray[1] = clamp(hsparray[1], -12, 12)
        }
        instance_destroy()
    }
}
if place_meeting(x, y, obj_baddie)
{
    _object = instance_place(x, y, obj_baddie)
    if (_object.thrown && _object.hsp != 0)
    {
        hsparray = [random_range((_object.hsp - 2), (_object.hsp + 2)), random_range((_object.hsp - 2), (_object.hsp + 2))]
        vsparray = [random_range(-16, -10), random_range(-16, -10)]
        if (sprite_index == spr_crunchybarrier)
        {
            hsparray[0] = clamp(hsparray[0], -6, 6)
            hsparray[1] = clamp(hsparray[1], -6, 6)
        }
        if bomb
        {
            hsparray[0] = clamp(hsparray[0], -12, 12)
            hsparray[1] = clamp(hsparray[1], -12, 12)
        }
        instance_destroy()
    }
}
if place_meeting(x, y, obj_playeruppercut_hitbox)
{
    _object = instance_place(x, y, obj_playeruppercut_hitbox)
    hsparray = [random_range((_object.playerID.hsp - 2), (_object.playerID.hsp + 2)), random_range((_object.playerID.hsp - 2), (_object.playerID.hsp + 2))]
    vsparray = [random_range(-16, -10), random_range(-16, -10)]
    if (sprite_index == spr_crunchybarrier)
    {
        hsparray[0] = clamp(hsparray[0], -6, 6)
        hsparray[1] = clamp(hsparray[1], -6, 6)
    }
    if bomb
    {
        hsparray[0] = clamp(hsparray[0], -12, 12)
        hsparray[1] = clamp(hsparray[1], -12, 12)
    }
    instance_destroy()
}
