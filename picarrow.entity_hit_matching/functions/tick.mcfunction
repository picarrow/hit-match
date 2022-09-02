# Guarantees tick only runs after the initial load
execute if score #loaded picarrow.ehm._ matches 1 run function picarrow.entity_hit_matching:tick_1
