## AUTHOR : Picarrow

# ...
data modify storage hit_match:data _.func."detect_death".temp.current_poll_rate set from storage hit_match:data _.func."detect_death".temp.poll_rate_traversal[0]
function hit_match:detect_death/loop_poll_queue/_1 with storage hit_match:data _.func."detect_death".temp

# ...
data remove storage hit_match:data _.func."detect_death".temp.poll_rate_traversal[0]
execute if data storage hit_match:data _.func."detect_death".temp.poll_rate_traversal[] run function hit_match:detect_death/loop_poll_queue/_
