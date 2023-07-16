## AUTHOR : Picarrow

execute if entity @s[type=#hit_match_lite:targets] run function hit_match_lite:id/assign
tag @s[tag=!ehm.no_id,predicate=hit_match_lite:has_no_id] add ehm.no_id
