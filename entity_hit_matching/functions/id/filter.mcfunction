## AUTHOR : Picarrow, CloudWolf, nphhpn

execute if entity @s[type=#entity_hit_matching:targets] run function entity_hit_matching:id/assign
execute unless score @s ehm._ = @s ehm._ run tag @s[tag=!ehm.no_id] add ehm.no_id
