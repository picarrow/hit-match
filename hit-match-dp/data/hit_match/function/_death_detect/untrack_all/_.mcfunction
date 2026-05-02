## AUTHOR : Picarrow

# ...
data remove storage hit_match:data _.func."death_detect.untrack_all".temp
data remove storage hit_match:data _.func."death_detect.untrack_all".out

# Error
execute if score #in_dying_context ehm._ matches 1 run function hit_match:_death_detect/untrack_all/_1

# ...
data remove storage hit_match:data _.death_detect
scoreboard players reset * ehm.death_detect.tracked

# ...
data remove storage hit_match:data _.func."death_detect.untrack_all".temp
