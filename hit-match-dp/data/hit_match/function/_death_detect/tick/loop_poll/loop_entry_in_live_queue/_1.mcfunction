## AUTHOR : Picarrow

$execute as $(uuid_of_entry) at @s anchored eyes positioned ^ ^ ^ run particle minecraft:bubble ~ ~1 ~ 0 0 0 1 30 force @a
$execute as $(uuid_of_entry) unless score @s ehm.death_detect.selectable matches 1 at @s anchored eyes positioned ^ ^ ^ run particle minecraft:dust{scale:3,color:[1,0,0]} ~ ~1 ~ 0 0 0 1 30 force @a
