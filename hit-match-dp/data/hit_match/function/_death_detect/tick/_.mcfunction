## AUTHOR : Picarrow

# ...
data remove storage hit_match:data _.func."death_detect.tick".temp
data remove storage hit_match:data _.func."death_detect.tick".out

# ...
execute if data storage hit_match:data _.death_detect.active_poll_rates[0] run function hit_match:_death_detect/tick/_1

# ...
data remove storage hit_match:data _.func."death_detect.tick".temp
