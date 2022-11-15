## AUTHOR: Picarrow, CloudWolf, nphhpn

scoreboard objectives add ehm._ dummy
execute unless score $loaded ehm._ = $loaded ehm._ run function entity_hit_matching:set_defaults
