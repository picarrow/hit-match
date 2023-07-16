## AUTHOR : Picarrow

# Escape if detection is off
execute if score $detection ehm._ matches 0 run return 0

# Determine the id of the entity inflicting damage
scoreboard players set $direct ehm._ -1
execute if entity @s[advancements={hit_match:player_hurt_entity={direct_has_no_id=false}}] run function hit_match:advancement/player_hurt_entity/reward_1

# Determine the id of the entity receiving damage
scoreboard players set $victim ehm._ -1
execute if entity @s[advancements={hit_match:player_hurt_entity={victim_has_no_id=false}}] run function hit_match:advancement/player_hurt_entity/reward_2

# Revoke the advancement, so it can be triggered again
advancement revoke @s only hit_match:player_hurt_entity

# Run the provided functions that work off of this reward function
function #hit_match:player_hurts_entity