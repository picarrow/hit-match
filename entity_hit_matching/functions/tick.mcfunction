## AUTHOR: Picarrow, CloudWolf, nphhpn

# Assigns an id to every target without one
execute as @e[type=#entity_hit_matching:targets] unless score @s ehm._ = @s ehm._ run function entity_hit_matching:id/assign
