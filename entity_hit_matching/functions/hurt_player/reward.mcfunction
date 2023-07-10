## AUTHOR : Picarrow

# Escape if detection is off
execute if score $detection ehm._ matches 0 run return 0

# Determine the id of the entity inflicting damage
scoreboard players reset $direct ehm._
execute if entity @s[advancements={entity_hit_matching:target_hurts_player={direct_has_no_id=false}}] run function entity_hit_matching:hurt_player/find_direct_id

# Determine the id of the entity receiving damage
scoreboard players operation $victim ehm._ = @s ehm.id

# Revoke the advancement, so it can be triggered again
advancement revoke @s only entity_hit_matching:target_hurts_player

# Run the provided functions that work off of this reward function
execute if score $direct ehm._ = $direct ehm._ run function #entity_hit_matching:player_is_hurt_by_target
