## AUTHOR : Picarrow, CloudWolf, nphhpn

# Determines the id of the entity inflicting damage
scoreboard players reset $direct ehm.id
execute if entity @s[advancements={entity_hit_matching:target_hurts_player={direct_has_no_id=false}}] run function entity_hit_matching:hurt_player/find_direct_id

# Determines the id of the entity receiving damage
scoreboard players operation $victim ehm.id = @s ehm.id

# Revokes the advancement, so it can be triggered again
advancement revoke @s only entity_hit_matching:target_hurts_player

# Runs the provided functions that work off of this reward function
execute if score $direct ehm.id = $direct ehm.id run function #entity_hit_matching:player_is_hurt_by_target
