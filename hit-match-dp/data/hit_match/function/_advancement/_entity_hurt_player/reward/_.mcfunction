## AUTHOR : Picarrow

# Escape if detection is off
execute if score $detection ehm._ matches 0 run return 0

# Determine the UID of the direct entity
scoreboard players reset $direct ehm._
execute if entity @s[advancements={hit_match:entity_hurt_player={direct_has_no_uid=false}}] run function hit_match:_advancement/_entity_hurt_player/reward/_1

# Determine the UID of the victim entity
scoreboard players reset $victim ehm._
execute if predicate hit_match:has_uid run scoreboard players operation $victim ehm._ = @s ehm.id

# Determine the UID of the source entity
scoreboard players reset $source ehm._
execute if entity @s[advancements={hit_match:entity_hurt_player={source_has_no_uid=false}}] run function hit_match:_advancement/_entity_hurt_player/reward/_2

# ...
scoreboard players set $is_direct_source ehm._ 0
execute if entity @s[advancements={hit_match:entity_hurt_player={direct_damage=true}}] run scoreboard players set $is_direct_source ehm._ 1

# Revoke the advancement, so it can be triggered again
advancement revoke @s only hit_match:entity_hurt_player

# ...
scoreboard players reset #is_uuid_of_victim_ready ehm._
scoreboard players reset #is_uuid_of_direct_ready ehm._
scoreboard players reset #is_uuid_of_source_ready ehm._
scoreboard players reset $victim_life_cache ehm._
scoreboard players reset $direct_life_cache ehm._
scoreboard players reset $source_life_cache ehm._
scoreboard players set #in_hit_context ehm._ 1

# Run the provided functions that work off of this reward function
function #hit_match:player_is_hurt_by_entity

# ...
scoreboard players reset #in_hit_context ehm._
