## AUTHOR : Picarrow

scoreboard players set $detection ehm._ 0
execute as @a[tag=!ehm.detection_off] run function entity_hit_matching:detection/disable/do_logic
