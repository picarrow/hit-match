## AUTHOR : Picarrow

# Track variables and constants
scoreboard objectives add ehm._ dummy
scoreboard players set $detection ehm._ 1
scoreboard players set #3 ehm._ 3

# Set to 0 once MC-229018 is resolved
scoreboard players set #next_uid ehm._ 1

# Track entity IDs
scoreboard objectives add ehm.id dummy

# Track each bit of entity IDs
scoreboard objectives add ehm.id.0 dummy
scoreboard objectives add ehm.id.1 dummy
scoreboard objectives add ehm.id.2 dummy
scoreboard objectives add ehm.id.3 dummy
scoreboard objectives add ehm.id.4 dummy
scoreboard objectives add ehm.id.5 dummy
scoreboard objectives add ehm.id.6 dummy
scoreboard objectives add ehm.id.7 dummy
scoreboard objectives add ehm.id.8 dummy

# Indicate the namespace has been initialized
data modify storage hit_match:data root.loaded set value 1b
