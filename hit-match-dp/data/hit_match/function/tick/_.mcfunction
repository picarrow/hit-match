## AUTHOR : Picarrow

# ...
execute if score #in_hit_context ehm._ matches 1 run function hit_match:tick/_1

# Assign IDs to the entities that need them
function hit_match:_id/assign_all/_

# Enforce detection state
execute if score $detection ehm._ matches 0 run function hit_match:_detection/disable/_
execute if score $detection ehm._ matches 1 run function hit_match:_detection/enable/_

# ...
execute if data storage hit_match:data _.death_detect.active_poll_rates[] run function hit_match:detect_death/_
