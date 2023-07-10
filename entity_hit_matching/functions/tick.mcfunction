## AUTHOR : Picarrow

# Assign IDs to the entities that need them
execute as @e[predicate=entity_hit_matching:has_no_id] run function entity_hit_matching:id/filter

# Enforce detection state
execute if score $detection ehm._ matches 0 run function entity_hit_matching:detection/disable/_
execute if score $detection ehm._ matches 1 run function entity_hit_matching:detection/enable/_
