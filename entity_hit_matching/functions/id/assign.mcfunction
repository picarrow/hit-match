## AUTHOR : Picarrow, CloudWolf, nphhpn

# Attempts to remove existing id tags from the executor
function entity_hit_matching:id/remove_tags

# Assigns an id to the executor
execute if score #next_id ehm._ matches 19683.. run function entity_hit_matching:id/reset_all
scoreboard players operation @s ehm._ = #next_id ehm._
scoreboard players add #next_id ehm._ 1

# Appends tags to the executor
# Tags represent the id's ternary representation
scoreboard players operation #_temp_id ehm._ = @s ehm._

function entity_hit_matching:id/next_bit
scoreboard players operation @s ehm.0 = #_bit ehm._
execute if score #_bit ehm._ matches 0 run tag @s add ehm.0_0
execute if score #_bit ehm._ matches 1 run tag @s add ehm.0_1
execute if score #_bit ehm._ matches 2 run tag @s add ehm.0_2

function entity_hit_matching:id/next_bit
scoreboard players operation @s ehm.1 = #_bit ehm._
execute if score #_bit ehm._ matches 0 run tag @s add ehm.1_0
execute if score #_bit ehm._ matches 1 run tag @s add ehm.1_1
execute if score #_bit ehm._ matches 2 run tag @s add ehm.1_2

function entity_hit_matching:id/next_bit
scoreboard players operation @s ehm.2 = #_bit ehm._
execute if score #_bit ehm._ matches 0 run tag @s add ehm.2_0
execute if score #_bit ehm._ matches 1 run tag @s add ehm.2_1
execute if score #_bit ehm._ matches 2 run tag @s add ehm.2_2

function entity_hit_matching:id/next_bit
scoreboard players operation @s ehm.3 = #_bit ehm._
execute if score #_bit ehm._ matches 0 run tag @s add ehm.3_0
execute if score #_bit ehm._ matches 1 run tag @s add ehm.3_1
execute if score #_bit ehm._ matches 2 run tag @s add ehm.3_2

function entity_hit_matching:id/next_bit
scoreboard players operation @s ehm.4 = #_bit ehm._
execute if score #_bit ehm._ matches 0 run tag @s add ehm.4_0
execute if score #_bit ehm._ matches 1 run tag @s add ehm.4_1
execute if score #_bit ehm._ matches 2 run tag @s add ehm.4_2

function entity_hit_matching:id/next_bit
scoreboard players operation @s ehm.5 = #_bit ehm._
execute if score #_bit ehm._ matches 0 run tag @s add ehm.5_0
execute if score #_bit ehm._ matches 1 run tag @s add ehm.5_1
execute if score #_bit ehm._ matches 2 run tag @s add ehm.5_2

function entity_hit_matching:id/next_bit
scoreboard players operation @s ehm.6 = #_bit ehm._
execute if score #_bit ehm._ matches 0 run tag @s add ehm.6_0
execute if score #_bit ehm._ matches 1 run tag @s add ehm.6_1
execute if score #_bit ehm._ matches 2 run tag @s add ehm.6_2

function entity_hit_matching:id/next_bit
scoreboard players operation @s ehm.7 = #_bit ehm._
execute if score #_bit ehm._ matches 0 run tag @s add ehm.7_0
execute if score #_bit ehm._ matches 1 run tag @s add ehm.7_1
execute if score #_bit ehm._ matches 2 run tag @s add ehm.7_2

function entity_hit_matching:id/next_bit
scoreboard players operation @s ehm.8 = #_bit ehm._
execute if score #_bit ehm._ matches 0 run tag @s add ehm.8_0
execute if score #_bit ehm._ matches 1 run tag @s add ehm.8_1
execute if score #_bit ehm._ matches 2 run tag @s add ehm.8_2
