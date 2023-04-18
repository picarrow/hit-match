## AUTHOR : Picarrow, CloudWolf, nphhpn

# This objective tracks IDs, along with variables and constants
scoreboard objectives add ehm._ dummy
scoreboard players set #3 ehm._ 3

# These objectives track the individual bits of IDs
scoreboard objectives add ehm.0 dummy
scoreboard objectives add ehm.1 dummy
scoreboard objectives add ehm.2 dummy
scoreboard objectives add ehm.3 dummy
scoreboard objectives add ehm.4 dummy
scoreboard objectives add ehm.5 dummy
scoreboard objectives add ehm.6 dummy
scoreboard objectives add ehm.7 dummy
scoreboard objectives add ehm.8 dummy

# Indicates the data pack has been initialized
data modify storage entity_hit_matching:data root.loaded set value 1b
