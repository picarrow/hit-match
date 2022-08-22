tag @s add picarrow.ehm.has_id

# Assign a new id to the executing entity
scoreboard players add #id picarrow.ehm.id 1
scoreboard players operation @s picarrow.ehm.id = #id picarrow.ehm.id

# Store its bits for easy identification
scoreboard players operation #temp_id picarrow.ehm.id = @s picarrow.ehm.id

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_00_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_00_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_01_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_01_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_02_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_02_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_03_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_03_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_04_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_04_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_05_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_05_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_06_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_06_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_07_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_07_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_08_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_08_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_09_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_09_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_10_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_10_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_11_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_11_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_12_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_12_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_13_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_13_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_14_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_14_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_15_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_15_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_16_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_16_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_17_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_17_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_18_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_18_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_19_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_19_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_20_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_20_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_21_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_21_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_22_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_22_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_23_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_23_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_24_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_24_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_25_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_25_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_26_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_26_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_27_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_27_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_28_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_28_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_29_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_29_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_30_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_30_1

function picarrow.entity_hit_matching:next_bit
execute if score #bit picarrow.ehm.id matches 0 run tag @s add picarrow.ehm.id_31_0
execute if score #bit picarrow.ehm.id matches 1 run tag @s add picarrow.ehm.id_31_1
