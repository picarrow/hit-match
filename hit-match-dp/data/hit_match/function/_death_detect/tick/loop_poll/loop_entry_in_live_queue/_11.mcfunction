## AUTHOR : Picarrow

scoreboard players set #_is_entity_loaded ehm._ 1
execute unless score @s ehm.death_detect.selectable matches 1 at @s run function #hit_match:tick_dying
