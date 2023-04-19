## AUTHOR : Picarrow, CloudWolf, nphhpn

execute if entity @s[type=#entity_hit_matching:targets] run function entity_hit_matching:id/assign
execute unless score @s ehm.id = @s ehm.id run tag @s[tag=!ehm.no_id] add ehm.no_id
