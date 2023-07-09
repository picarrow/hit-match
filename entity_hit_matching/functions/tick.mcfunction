## AUTHOR : Picarrow, CloudWolf, nphhpn

# Assigns IDs to the entities that need them
execute as @e[predicate=entity_hit_matching:has_no_id] run function entity_hit_matching:id/filter
