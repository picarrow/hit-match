## AUTHOR : Picarrow

# Escape if detection is off
execute if score $detection ehm._ matches 0 run return 0

# Determine the id of the entity inflicting damage
scoreboard players reset $direct ehm._
execute if entity @s[advancements={hit_match:target_hurts_player={direct_has_no_id=false}}] run function hit_match:advancement/target_hurts_player/reward_1

# Determine the id of the entity receiving damage
scoreboard players operation $victim ehm._ = @s ehm.id

# Revoke the advancement, so it can be triggered again
advancement revoke @s only hit_match:target_hurts_player

# Run the provided functions that work off of this reward function
execute if score $direct ehm._ = $direct ehm._ run function #hit_match:player_is_hurt_by_target
