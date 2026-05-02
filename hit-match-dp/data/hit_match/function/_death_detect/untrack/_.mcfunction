## AUTHOR : Picarrow

# ...
data remove storage hit_match:data _.func."death_detect.untrack".temp
data remove storage hit_match:data _.func."death_detect.untrack".out

# ...
execute unless entity @s run function hit_match:_death_detect/untrack/_1

# ...
execute unless score @s ehm.death_detect.tracked matches 1 run function hit_match:_death_detect/untrack/_2
execute if score @s ehm.death_detect.tracked matches 1 run function hit_match:_death_detect/untrack/_3

# ...
data remove storage hit_match:data _.func."death_detect.untrack".temp
