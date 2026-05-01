## AUTHOR : Picarrow

# ...
data remove storage hit_match:data _.func."detect_death".temp
data remove storage hit_match:data _.func."detect_death".out

# ...
data modify storage hit_match:data _.func."detect_death".temp.poll_rate_traversal set from storage hit_match:data _.death_detect.active_poll_rates
function hit_match:detect_death/loop_poll_queue/_

# ...
data remove storage hit_match:data _.func."detect_death".temp
