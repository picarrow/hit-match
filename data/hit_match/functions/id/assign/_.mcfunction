## AUTHOR : Picarrow

# Remove existing ID-related command tags
function hit_match:id/clear_command_tags

# Return after assignment of a UID if the entity is a target entity
execute if entity @s[type=#hit_match:targets] run return run function hit_match:id/assign/_1

# Assign an ID to know not to check the non-target again
scoreboard players set @s[predicate=!hit_match:has_uid] ehm.id -1
tag @s[scores={ehm.id=-1}] add ehm.no_uid
