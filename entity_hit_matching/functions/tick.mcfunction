## AUTHOR: Picarrow, CloudWolf, nphhpn

# Guarantees tick only runs after the initial load
execute if score #loaded ehm._ matches 1 run function entity_hit_matching:tick_1
