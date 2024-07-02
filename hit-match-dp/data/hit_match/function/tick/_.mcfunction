## AUTHOR : Picarrow

# Assign IDs to the entities that need them
function hit_match:_id/assign_all/_

# Enforce detection state
execute if score $detection ehm._ matches 0 run function hit_match:_detection/disable/_
execute if score $detection ehm._ matches 1 run function hit_match:_detection/enable/_
