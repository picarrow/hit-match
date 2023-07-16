## AUTHOR : Picarrow

# Escape if detection is off
execute if entity @s[tag=ehm.base_detection_off] run return 0

say player hurts target

# Determine the id of the entity receiving damage
scoreboard players set $victim ehm._ -1
execute if entity @s[advancements={hit_match_lite:player_hurt_entity={victim_has_no_id=false}}] run function hit_match_lite:advancement/player_hurts_target/reward_1

# Revoke the advancement, so it can be triggered again
advancement revoke @s only hit_match_lite:player_hurt_entity

# Run the provided functions that work off of this reward function
function #hit_match_lite:player_hurts_entity
