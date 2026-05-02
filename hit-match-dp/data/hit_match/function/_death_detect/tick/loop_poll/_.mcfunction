## AUTHOR : Picarrow

# ...
data modify storage hit_match:data _.func."death_detect.tick".temp.current_poll_rate set from storage hit_match:data _.func."death_detect.tick".temp.poll_rate_traversal[0].poll_rate
function hit_match:_death_detect/tick/loop_poll/_1 with storage hit_match:data _.func."death_detect.tick".temp

# ...
data remove storage hit_match:data _.func."death_detect.tick".temp.poll_rate_traversal[0]
execute if data storage hit_match:data _.func."death_detect.tick".temp.poll_rate_traversal[0] run function hit_match:_death_detect/tick/loop_poll/_
