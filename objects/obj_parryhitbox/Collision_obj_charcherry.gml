if (!instance_exists(playerID))
    return;
if (other.state == (13 << 0) && playerID.sprite_index == playerID.spr_player_taunt)
{
    instance_create(x, y, obj_bombexplosioncherry)
    event_user(0)
    instance_destroy(other)
}
