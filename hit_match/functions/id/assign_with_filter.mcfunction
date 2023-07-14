## AUTHOR : Picarrow

execute if entity @s[type=#hit_match:targets] run function hit_match:id/assign
tag @s[tag=!ehm.no_id,predicate=hit_match:has_no_id] add ehm.no_id
