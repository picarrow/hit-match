## AUTHOR : Picarrow, CloudWolf, nphhpn

# This objective tracks IDs, along with variables and constants
scoreboard objectives add ehm.id dummy
scoreboard players set #3 ehm.id 3

# These objectives track the individual bits of IDs
scoreboard objectives add ehm.id.0 dummy
scoreboard objectives add ehm.id.1 dummy
scoreboard objectives add ehm.id.2 dummy
scoreboard objectives add ehm.id.3 dummy
scoreboard objectives add ehm.id.4 dummy
scoreboard objectives add ehm.id.5 dummy
scoreboard objectives add ehm.id.6 dummy
scoreboard objectives add ehm.id.7 dummy
scoreboard objectives add ehm.id.8 dummy

# Indicates the data pack has been initialized
data modify storage entity_hit_matching:data root.loaded set value 1b
