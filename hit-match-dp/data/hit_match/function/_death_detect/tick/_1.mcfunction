## AUTHOR : Picarrow

# ...
scoreboard players reset * ehm.death_detect.selectable
scoreboard players set @e ehm.death_detect.selectable 1

# ...
data modify storage hit_match:data _.func."death_detect.tick".temp.poll_rate_traversal set from storage hit_match:data _.death_detect.active_poll_rates
function hit_match:_death_detect/tick/loop_poll/_
