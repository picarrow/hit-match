## AUTHOR : Picarrow

$execute as $(uuid_of_direct) at @s if entity @e[distance=..0.00001,predicate=hit_match:is_direct,limit=1] run scoreboard players set $is_direct_alive ehm._ 1
