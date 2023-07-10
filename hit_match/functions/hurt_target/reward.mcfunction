## AUTHOR : Picarrow

# Escape if detection is off
execute if score $detection ehm._ matches 0 run return 0

# Determine the id of the entity inflicting damage
scoreboard players reset $direct ehm._
execute if entity @s[advancements={hit_match:player_hurts_target={direct_has_no_id=false}}] run function hit_match:hurt_target/find_direct_id

# Determine the id of the entity receiving damage
scoreboard players reset $victim ehm._
execute if entity @s[advancements={hit_match:player_hurts_target={victim_has_no_id=false}}] run function hit_match:hurt_target/find_victim_id

# Revoke the advancement, so it can be triggered again
advancement revoke @s only hit_match:player_hurts_target

# Run the provided functions that work off of this reward function
execute if score $direct ehm._ = $direct ehm._ if score $victim ehm._ = $victim ehm._ as @e[predicate=hit_match:is_victim,limit=1] at @s run function #hit_match:target_is_hurt_by_player
