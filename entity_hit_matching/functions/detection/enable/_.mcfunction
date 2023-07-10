## AUTHOR : Picarrow

scoreboard players set $detection ehm._ 1
execute as @a[tag=ehm.detection_off] run function entity_hit_matching:detection/enable/do_logic
