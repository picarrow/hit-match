## AUTHOR : Picarrow

# ...
data remove storage hit_match:data _.func."death_detect.untrack".temp
data remove storage hit_match:data _.func."death_detect.untrack".out

# Error
execute if score #in_dying_context ehm._ matches 1 run function hit_match:_death_detect/untrack/_1

# Error
execute unless entity @s run function hit_match:_death_detect/untrack/_2

# Error
execute unless score @s ehm.death_detect.tracked matches 1 run function hit_match:_death_detect/untrack/_3

# ...
execute store result score #_is_target_entity ehm._ if entity @s[predicate=hit_match:has_uid]
execute unless score #_is_target_entity ehm._ matches 1 run function hit_match:_death_detect/untrack/_4
execute if score #_is_target_entity ehm._ matches 1 run function hit_match:_death_detect/untrack/_5

# ...
function hit_match:_death_detect/untrack/_6 with storage hit_match:data _.func."death_detect.untrack".temp
function hit_match:_death_detect/untrack/_7 with storage hit_match:data _.func."death_detect.untrack".temp

# ...
scoreboard players reset @s ehm.death_detect.tracked

# ...
data remove storage hit_match:data _.func."death_detect.untrack".temp
