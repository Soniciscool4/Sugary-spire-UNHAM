var gate = id
if (sprite_index != spr_levelgateclosed)
{
    with (obj_player)
    {
        if (key_up && grounded && (state == (0 << 0) || state == (65 << 0) || state == (66 << 0) || state == (67 << 0)) && (!instance_exists(obj_fadeout)) && state != (58 << 0) && state != (59 << 0))
        {
            mach2 = 0
            obj_camera.chargecamera = 0
            image_index = 0
            sprite_index = spr_entergate
            state = (58 << 0)
            audio_stop_all()
        }
        if (animation_end() && (!instance_exists(obj_titlecard)) && sprite_index == spr_entergate)
        {
            if ((other.level == "entryway" || other.level == "steamy") && global.lvldesign && (!instance_exists(obj_layoutselect)) && (!other.start))
                instance_create(0, 0, obj_layoutselect)
            else
                other.start = true
            if ((!instance_exists(obj_layoutselect)) && other.start)
            {
                hubx = x
                huby = y
                with (instance_create(x, y, obj_titlecard))
                {
                    titlecard_sprite = gate.titlecard_sprite
                    titlecard_index = gate.titlecard_index
                    title_sprite = gate.title_sprite
                    title_index = gate.title_index
                    title_music = gate.title_music
                }
                startroom = other.targetRoom
                targetDoor = other.targetDoor
                targetRoom = other.targetRoom
                global.levelname = other.level
            }
        }
    }
}
