## AUTHOR : Picarrow

# Assign IDs to the entities that need them
execute as @e[predicate=hit_match_lite:has_no_id] run function hit_match_lite:id/assign_with_filter

# Enforce detection state
execute if score $detection ehm._ matches 0 run function hit_match_lite:detection/disable
execute if score $detection ehm._ matches 1 run function hit_match_lite:detection/enable
