## AUTHOR : Picarrow

execute as @a[tag=ehm.base_detection_off] run function hit_match_lite:detection/disable_1
execute as @a[tag=ehm.plus_detection_off] run function hit_match_lite:detection/disable_2

scoreboard players set $detection ehm._ 0
