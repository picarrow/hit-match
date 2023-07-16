## AUTHOR : Picarrow

execute as @a[tag=!ehm.base_detection_off] run function hit_match_lite:detection/disable_local_1

scoreboard players set $local_detection ehm._ 0
