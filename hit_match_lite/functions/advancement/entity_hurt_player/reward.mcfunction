## AUTHOR : Picarrow

# Escape if detection is off
execute if entity @s[tag=ehm.base_detection_off] run return 0

say target hurts player

# Determine the id of the entity receiving damage
scoreboard players set $victim ehm._ -1
execute if score @s ehm.id = @s ehm.id run scoreboard players operation $victim ehm._ = @s ehm.id

# Revoke the advancement, so it can be triggered again
advancement revoke @s only hit_match_lite:entity_hurt_player

# Run the provided functions that work off of this reward function
function #hit_match_lite:player_is_hurt_by_entity
