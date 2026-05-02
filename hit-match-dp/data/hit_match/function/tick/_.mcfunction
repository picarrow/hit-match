## AUTHOR : Picarrow

# ...
execute if score #in_hit_context ehm._ matches 1 run function hit_match:tick/_1

# ...
execute if score #in_dying_context ehm._ matches 1 run function hit_match:tick/_2

# Assign IDs to the entities that need them
function hit_match:_id/assign_all/_

# Enforce detection state
execute if score $detection ehm._ matches 0 run function hit_match:_detection/disable/_
execute if score $detection ehm._ matches 1 run function hit_match:_detection/enable/_

# ...
function hit_match:_death_detect/tick/_
