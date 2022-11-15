## AUTHOR: Picarrow, CloudWolf, nphhpn

# Attempts to remove old id tags from the executor
function entity_hit_matching:id/remove_tags

# Assigns a new id to the executor
scoreboard players add #new_id ehm._ 1
execute if score #new_id ehm._ matches 16384.. run function entity_hit_matching:refresh_ids
scoreboard players operation @s ehm._ = #new_id ehm._

# Appends tags representing the binary representation of its id to the executor
scoreboard players operation #temp_id ehm._ = #new_id ehm._

function entity_hit_matching:next_bit
execute if score #bit ehm._ matches 0 run tag @s add ehm.00_0
execute if score #bit ehm._ matches 1 run tag @s add ehm.00_1

function entity_hit_matching:next_bit
execute if score #bit ehm._ matches 0 run tag @s add ehm.01_0
execute if score #bit ehm._ matches 1 run tag @s add ehm.01_1

function entity_hit_matching:next_bit
execute if score #bit ehm._ matches 0 run tag @s add ehm.02_0
execute if score #bit ehm._ matches 1 run tag @s add ehm.02_1

function entity_hit_matching:next_bit
execute if score #bit ehm._ matches 0 run tag @s add ehm.03_0
execute if score #bit ehm._ matches 1 run tag @s add ehm.03_1

function entity_hit_matching:next_bit
execute if score #bit ehm._ matches 0 run tag @s add ehm.04_0
execute if score #bit ehm._ matches 1 run tag @s add ehm.04_1

function entity_hit_matching:next_bit
execute if score #bit ehm._ matches 0 run tag @s add ehm.05_0
execute if score #bit ehm._ matches 1 run tag @s add ehm.05_1

function entity_hit_matching:next_bit
execute if score #bit ehm._ matches 0 run tag @s add ehm.06_0
execute if score #bit ehm._ matches 1 run tag @s add ehm.06_1

function entity_hit_matching:next_bit
execute if score #bit ehm._ matches 0 run tag @s add ehm.07_0
execute if score #bit ehm._ matches 1 run tag @s add ehm.07_1

function entity_hit_matching:next_bit
execute if score #bit ehm._ matches 0 run tag @s add ehm.08_0
execute if score #bit ehm._ matches 1 run tag @s add ehm.08_1

function entity_hit_matching:next_bit
execute if score #bit ehm._ matches 0 run tag @s add ehm.09_0
execute if score #bit ehm._ matches 1 run tag @s add ehm.09_1

function entity_hit_matching:next_bit
execute if score #bit ehm._ matches 0 run tag @s add ehm.10_0
execute if score #bit ehm._ matches 1 run tag @s add ehm.10_1

function entity_hit_matching:next_bit
execute if score #bit ehm._ matches 0 run tag @s add ehm.11_0
execute if score #bit ehm._ matches 1 run tag @s add ehm.11_1

function entity_hit_matching:next_bit
execute if score #bit ehm._ matches 0 run tag @s add ehm.12_0
execute if score #bit ehm._ matches 1 run tag @s add ehm.12_1

function entity_hit_matching:next_bit
execute if score #bit ehm._ matches 0 run tag @s add ehm.13_0
execute if score #bit ehm._ matches 1 run tag @s add ehm.13_1
