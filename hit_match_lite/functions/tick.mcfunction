## AUTHOR : Picarrow

# Yield detection and common logic to Hit Match if it is present
function #hit_match_lite:technical/poll_hit_match
execute if score #_hit_match_exists ehm._ matches 0 run function hit_match_lite:common
execute if score #_hit_match_exists ehm._ matches 1 run function hit_match_lite:detection/disable_local
scoreboard players set #_hit_match_exists ehm._ 0
