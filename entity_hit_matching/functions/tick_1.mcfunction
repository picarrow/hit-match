## AUTHOR: Picarrow, CloudWolf, nphhpn

# Assigns a unique id to every target that doesn't already have an id
execute as @e[type=#entity_hit_matching:targets] unless score @s ehm._ = @s ehm._ run function entity_hit_matching:id/assign
# Removes ids from non-targets
execute as @e[type=!#entity_hit_matching:targets] if score @s ehm._ = @s ehm._ run function entity_hit_matching:id/remove
