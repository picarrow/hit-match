## AUTHOR : Picarrow, CloudWolf, nphhpn

# Determines the id of the entity inflicting damage
function entity_hit_matching:hurt_target/find_direct_id

# Determines the id of the entity receiving damage
function entity_hit_matching:hurt_target/find_victim_id

# Revokes the advancement, so it can be triggered again
advancement revoke @s only entity_hit_matching:player_hurts_target

# Runs the provided functions that work off of this reward function
execute as @e[type=#entity_hit_matching:targets] if score @s ehm._ = #_vtm_id ehm._ at @s run function #entity_hit_matching:target_is_hurt_by_player
