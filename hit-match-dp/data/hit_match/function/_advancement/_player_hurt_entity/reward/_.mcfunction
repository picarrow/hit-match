## AUTHOR : Picarrow

# Escape if detection is off
execute if score $detection ehm._ matches 0 run return 0

# Determine the UID of the entity inflicting damage
scoreboard players reset $direct ehm._
execute if entity @s[advancements={hit_match:player_hurt_entity={direct_has_no_uid=false}}] run function hit_match:_advancement/_player_hurt_entity/reward/_1

# Determine the UID of the entity receiving damage
scoreboard players reset $victim ehm._
execute if entity @s[advancements={hit_match:player_hurt_entity={victim_has_no_uid=false}}] run function hit_match:_advancement/_player_hurt_entity/reward/_2

# Revoke the advancement, so it can be triggered again
advancement revoke @s only hit_match:player_hurt_entity

# Run the provided functions that work off of this reward function
function #hit_match:player_hurts_entity
