# Assigns a new id to the executor
scoreboard players add #new_id picarrow.ehm._ 1
scoreboard players operation @s picarrow.ehm._ = #new_id picarrow.ehm._

# Appends tags representing the binary representation of its id to the executor
scoreboard players operation #temp_id picarrow.ehm._ = #new_id picarrow.ehm._

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.00_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.00_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.01_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.01_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.02_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.02_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.03_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.03_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.04_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.04_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.05_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.05_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.06_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.06_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.07_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.07_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.08_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.08_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.09_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.09_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.10_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.10_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.11_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.11_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.12_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.12_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.13_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.13_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.14_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.14_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.15_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.15_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.16_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.16_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.17_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.17_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.18_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.18_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.19_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.19_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.20_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.20_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.21_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.21_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.22_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.22_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.23_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.23_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.24_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.24_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.25_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.25_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.26_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.26_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.27_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.27_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.28_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.28_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.29_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.29_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.30_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.30_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm._ matches 0 run tag @s add picarrow.ehm.31_0
execute if score #bit picarrow.ehm._ matches 1 run tag @s add picarrow.ehm.31_1
