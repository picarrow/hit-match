## AUTHOR : Picarrow, CloudWolf, nphhpn

# Determines the id of the entity inflicting damage
function entity_hit_matching:hurt_player/find_target_id

# Revokes the advancement, so it can be triggered again
advancement revoke @s only entity_hit_matching:target_hurts_player

# Runs the provided functions that work off of this reward function
function #entity_hit_matching:player_is_hurt_by_target
