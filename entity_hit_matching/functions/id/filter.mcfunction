## AUTHOR : Picarrow, CloudWolf, nphhpn

execute if entity @s[type=#entity_hit_matching:targets] run function entity_hit_matching:id/assign
tag @s[tag=!ehm.no_id,predicate=entity_hit_matching:has_no_id] add ehm.no_id
