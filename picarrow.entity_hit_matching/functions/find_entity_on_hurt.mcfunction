scoreboard players set #id_of_struck_entity picarrow.ehm.id 0
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit0=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 1
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit1=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 2
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit2=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 4
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit3=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 8
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit4=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 16
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit5=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 32
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit6=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 64
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit7=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 128
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit8=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 256
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit9=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 512
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit10=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 1024
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit11=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 2048
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit12=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 4096
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit13=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 8192
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit14=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 16384
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit15=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 32768
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit16=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 65536
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit17=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 131072
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit18=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 262144
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit19=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 524288
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit20=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 1048576
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit21=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 2097152
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit22=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 4194304
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit23=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 8388608
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit24=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 16777216
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit25=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 33554432
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit26=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 67108864
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit27=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 134217728
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit28=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 268435456
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit29=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 536870912
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit30=true}}] run scoreboard players add #id_of_struck_entity picarrow.ehm.id 1073741824
execute if entity @s[advancements={picarrow.entity_hit_matching:on_hurt={bit31=true}}] run scoreboard players operation #id_of_struck_entity picarrow.ehm.id *= #-1 picarrow.ehm.id
execute as @e if score @s picarrow.ehm.id = #id_of_struck_entity picarrow.ehm.id run function picarrow.entity_hit_matching:on_hurt
