## AUTHOR : Picarrow

# ...
execute store result score #_is_target_entity ehm._ if entity @s[predicate=hit_match:has_uid]
execute unless score #_is_target_entity ehm._ matches 1 run function hit_match:_death_detect/untrack/_31
execute if score #_is_target_entity ehm._ matches 1 run function hit_match:_death_detect/untrack/_32

# ...
function hit_match:_death_detect/untrack/_33 with storage hit_match:data _.func."death_detect.untrack".temp
function hit_match:_death_detect/untrack/_34 with storage hit_match:data _.func."death_detect.untrack".temp

# ...
scoreboard players reset @s ehm.death_detect.tracked
