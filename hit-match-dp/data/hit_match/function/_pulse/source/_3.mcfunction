## AUTHOR : Picarrow

$execute as $(uuid_of_source) at @s if entity @e[distance=..0.00001,predicate=hit_match:is_source,limit=1] run scoreboard players set $source_life_cache ehm._ 1
