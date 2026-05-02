## AUTHOR : Picarrow

# Track variables and constants
scoreboard objectives add ehm._ dummy
scoreboard players set $detection ehm._ 1
scoreboard players set #3 ehm._ 3

# Set to 0 once MC-229018 is resolved
scoreboard players set #next_uid ehm._ 1

# Track entity IDs
scoreboard objectives add ehm.id dummy

# ...
scoreboard objectives add ehm.death_detect.tracked dummy
scoreboard objectives add ehm.death_detect.selectable dummy

# Indicate the namespace has been initialized
data modify storage hit_match:data _.loaded set value {}
