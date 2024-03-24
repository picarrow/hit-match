## AUTHOR : Picarrow

execute if entity @s[type=#hit_match:targets] run function hit_match:id/assign
scoreboard players set @s[predicate=!hit_match:has_uid] ehm.id -1
tag @s[scores={ehm.id=-1}] add ehm.no_uid
