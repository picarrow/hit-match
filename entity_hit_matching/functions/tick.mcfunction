## AUTHOR : Picarrow, CloudWolf, nphhpn

# Assigns IDs to the entities that need them
execute as @e unless score @s ehm.id = @s ehm.id run function entity_hit_matching:id/filter
