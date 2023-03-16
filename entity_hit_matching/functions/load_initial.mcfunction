## AUTHOR : Picarrow, CloudWolf, nphhpn

# This objective tracks IDs, along with variables and constants
scoreboard objectives add ehm._ dummy
scoreboard players set #3 ehm._ 3

# Indicates the data pack has been initialized
data modify storage entity_hit_matching:data root.loaded set value 1b
