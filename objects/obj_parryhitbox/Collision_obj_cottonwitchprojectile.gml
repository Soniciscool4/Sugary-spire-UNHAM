if (!instance_exists(playerID))
    return;
if (playerID.sprite_index == playerID.spr_player_taunt)
{
    other.hurtself = true
    other.image_xscale *= -1
    event_user(0)
}
