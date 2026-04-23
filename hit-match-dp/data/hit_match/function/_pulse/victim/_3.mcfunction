## AUTHOR : Picarrow

$execute as $(uuid_of_victim) at @s if entity @e[distance=..0.00001,predicate=hit_match:is_victim,limit=1] run scoreboard players set $is_victim_alive ehm._ 1
