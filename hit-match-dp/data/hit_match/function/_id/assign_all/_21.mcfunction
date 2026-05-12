## AUTHOR : Picarrow

# Assign a UID
scoreboard players operation @s ehm.id = #next_uid ehm._
scoreboard players add #next_uid ehm._ 1

# Append entity tags that reflect the base-3 UID
scoreboard players operation #_temp_id ehm._ = @s ehm.id
function hit_match:_id/assign_all/next_bit/_
execute if score #_bit ehm._ matches 0 run tag @s add ehm.0_0
execute if score #_bit ehm._ matches 1 run tag @s add ehm.0_1
execute if score #_bit ehm._ matches 2 run tag @s add ehm.0_2
function hit_match:_id/assign_all/next_bit/_
execute if score #_bit ehm._ matches 0 run tag @s add ehm.1_0
execute if score #_bit ehm._ matches 1 run tag @s add ehm.1_1
execute if score #_bit ehm._ matches 2 run tag @s add ehm.1_2
function hit_match:_id/assign_all/next_bit/_
execute if score #_bit ehm._ matches 0 run tag @s add ehm.2_0
execute if score #_bit ehm._ matches 1 run tag @s add ehm.2_1
execute if score #_bit ehm._ matches 2 run tag @s add ehm.2_2
function hit_match:_id/assign_all/next_bit/_
execute if score #_bit ehm._ matches 0 run tag @s add ehm.3_0
execute if score #_bit ehm._ matches 1 run tag @s add ehm.3_1
execute if score #_bit ehm._ matches 2 run tag @s add ehm.3_2
function hit_match:_id/assign_all/next_bit/_
execute if score #_bit ehm._ matches 0 run tag @s add ehm.4_0
execute if score #_bit ehm._ matches 1 run tag @s add ehm.4_1
execute if score #_bit ehm._ matches 2 run tag @s add ehm.4_2
function hit_match:_id/assign_all/next_bit/_
execute if score #_bit ehm._ matches 0 run tag @s add ehm.5_0
execute if score #_bit ehm._ matches 1 run tag @s add ehm.5_1
execute if score #_bit ehm._ matches 2 run tag @s add ehm.5_2
function hit_match:_id/assign_all/next_bit/_
execute if score #_bit ehm._ matches 0 run tag @s add ehm.6_0
execute if score #_bit ehm._ matches 1 run tag @s add ehm.6_1
execute if score #_bit ehm._ matches 2 run tag @s add ehm.6_2
function hit_match:_id/assign_all/next_bit/_
execute if score #_bit ehm._ matches 0 run tag @s add ehm.7_0
execute if score #_bit ehm._ matches 1 run tag @s add ehm.7_1
execute if score #_bit ehm._ matches 2 run tag @s add ehm.7_2
function hit_match:_id/assign_all/next_bit/_
execute if score #_bit ehm._ matches 0 run tag @s add ehm.8_0
execute if score #_bit ehm._ matches 1 run tag @s add ehm.8_1
execute if score #_bit ehm._ matches 2 run tag @s add ehm.8_2

# Append UUID to the list of tracked UUIDs
function gu:generate
data modify storage hit_match:data _.list_of_tracked_uuids append from storage gu:main out
