## AUTHOR: Picarrow, CloudWolf, nphhpn

# This objective tracks ids, temporary variables, and constants
scoreboard objectives add ehm._ dummy
scoreboard players set #3 ehm._ 3

# Signifies the data pack is loaded so that it can't be initialized again
data merge storage entity_hit_matching:data {loaded:1b}
