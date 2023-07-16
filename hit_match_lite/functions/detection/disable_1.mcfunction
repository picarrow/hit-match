## AUTHOR : Picarrow

tag @s add ehm.detection_off

advancement grant @s only hit_match_lite:player_hurts_target
advancement grant @s only hit_match_lite:target_hurts_player

function #hit_match_lite:poll_plus
execute if score #_plus_exists ehm._ matches 1 run function #hit_match_lite:disable_plus_detection
scoreboard players set #_plus_exists ehm._ 0
