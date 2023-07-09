## AUTHOR : Picarrow

# Ignore purposeful granting of this advancement
execute if score #_override ehm.id matches 1 run return 0

# Determine the id of the entity inflicting damage
scoreboard players reset $direct ehm.id
execute if entity @s[advancements={entity_hit_matching:player_hurts_target={direct_has_no_id=false}}] run function entity_hit_matching:hurt_target/find_direct_id

# Determine the id of the entity receiving damage
scoreboard players reset $victim ehm.id
execute if entity @s[advancements={entity_hit_matching:player_hurts_target={victim_has_no_id=false}}] run function entity_hit_matching:hurt_target/find_victim_id

# Revoke the advancement, so it can be triggered again
advancement revoke @s only entity_hit_matching:player_hurts_target

# Run the provided functions that work off of this reward function
execute if score $direct ehm.id = $direct ehm.id if score $victim ehm.id = $victim ehm.id as @e[predicate=entity_hit_matching:is_victim,limit=1] at @s run function #entity_hit_matching:target_is_hurt_by_player
