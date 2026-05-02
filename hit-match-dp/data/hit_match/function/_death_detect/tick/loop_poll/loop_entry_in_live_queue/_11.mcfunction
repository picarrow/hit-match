## AUTHOR : Picarrow

scoreboard players set #_is_entity_loaded ehm._ 1
execute if score @s ehm.death_detect.selectable matches 1 run scoreboard players operation @s ehm.death_detect.lifetime = @s ehm.death_detect.max_lifetime
execute unless score @s ehm.death_detect.selectable matches 1 at @s run function #hit_match:tick_dying
