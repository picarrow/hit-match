## AUTHOR : Picarrow

# Remove existing ID-related command tags
tag @s[tag=ehm.0_0] remove ehm.0_0
tag @s[tag=ehm.0_1] remove ehm.0_1
tag @s[tag=ehm.0_2] remove ehm.0_2
tag @s[tag=ehm.1_0] remove ehm.1_0
tag @s[tag=ehm.1_1] remove ehm.1_1
tag @s[tag=ehm.1_2] remove ehm.1_2
tag @s[tag=ehm.2_0] remove ehm.2_0
tag @s[tag=ehm.2_1] remove ehm.2_1
tag @s[tag=ehm.2_2] remove ehm.2_2
tag @s[tag=ehm.3_0] remove ehm.3_0
tag @s[tag=ehm.3_1] remove ehm.3_1
tag @s[tag=ehm.3_2] remove ehm.3_2
tag @s[tag=ehm.4_0] remove ehm.4_0
tag @s[tag=ehm.4_1] remove ehm.4_1
tag @s[tag=ehm.4_2] remove ehm.4_2
tag @s[tag=ehm.5_0] remove ehm.5_0
tag @s[tag=ehm.5_1] remove ehm.5_1
tag @s[tag=ehm.5_2] remove ehm.5_2
tag @s[tag=ehm.6_0] remove ehm.6_0
tag @s[tag=ehm.6_1] remove ehm.6_1
tag @s[tag=ehm.6_2] remove ehm.6_2
tag @s[tag=ehm.7_0] remove ehm.7_0
tag @s[tag=ehm.7_1] remove ehm.7_1
tag @s[tag=ehm.7_2] remove ehm.7_2
tag @s[tag=ehm.8_0] remove ehm.8_0
tag @s[tag=ehm.8_1] remove ehm.8_1
tag @s[tag=ehm.8_2] remove ehm.8_2
tag @s[tag=ehm.no_uid] remove ehm.no_uid

# Return after assignment of a UID if the entity is a target entity
execute if entity @s[type=#hit_match:targets] run return run function hit_match:id/assign_all/_11

# Assign an ID to know not to check the non-target again
scoreboard players set @s ehm.id -1
tag @s add ehm.no_uid
