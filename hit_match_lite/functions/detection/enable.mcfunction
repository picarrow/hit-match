## AUTHOR : Picarrow

execute as @a[tag=!ehm.base_detection_off] run function hit_match_lite:detection/enable_1
execute as @a[tag=!ehm.plus_detection_off] run function hit_match_lite:detection/enable_2

execute as @a if entity @s[] if entity @s[] run function hit_match_lite:detection/enable_2

scoreboard players set $detection ehm._ 1
