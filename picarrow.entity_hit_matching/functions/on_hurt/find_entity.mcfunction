scoreboard players set #id_of_struck_entity picarrow.ehm.id 0
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_00_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 1
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_01_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 2
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_02_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 4
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_03_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 8
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_04_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 16
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_05_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 32
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_06_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 64
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_07_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 128
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_08_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 256
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_09_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 512
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_10_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 1024
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_11_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 2048
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_12_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 4096
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_13_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 8192
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_14_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 16384
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_15_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 32768
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_16_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 65536
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_17_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 131072
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_18_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 262144
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_19_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 524288
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_20_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 1048576
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_21_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 2097152
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_22_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 4194304
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_23_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 8388608
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_24_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 16777216
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_25_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 33554432
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_26_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 67108864
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_27_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 134217728
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_28_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 268435456
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_29_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 536870912
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_30_1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 1073741824
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit_31_1=true}}] run scoreboard players operation #id_of_struck_entity picarrow.ehm.id *= #-1 picarrow.ehm.id
execute as @e if score @s picarrow.ehm.id = #id_of_struck_entity picarrow.ehm.id run function picarrow.entity_hit_matching:action/target_hits_player
