## AUTHOR : Picarrow

# Remove existing ID-related command tags from the executor
function entity_hit_matching:id/remove_tags

# Assign a new ID to the executor
execute if score #next_id ehm.id matches 19683.. run function entity_hit_matching:id/reset_all
scoreboard players operation @s ehm.id = #next_id ehm.id
scoreboard players add #next_id ehm.id 1

# Append ID-related command tags to the executor
# They represent the ID's ternary representation
scoreboard players operation #_temp_id ehm.id = @s ehm.id

function entity_hit_matching:id/next_bit
scoreboard players operation @s ehm.id.0 = #_bit ehm.id
tag @s[scores={ehm.id.0=0}] add ehm.0_0
tag @s[scores={ehm.id.0=1}] add ehm.0_1
tag @s[scores={ehm.id.0=2}] add ehm.0_2

function entity_hit_matching:id/next_bit
scoreboard players operation @s ehm.id.1 = #_bit ehm.id
tag @s[scores={ehm.id.1=0}] add ehm.1_0
tag @s[scores={ehm.id.1=1}] add ehm.1_1
tag @s[scores={ehm.id.1=2}] add ehm.1_2

function entity_hit_matching:id/next_bit
scoreboard players operation @s ehm.id.2 = #_bit ehm.id
tag @s[scores={ehm.id.2=0}] add ehm.2_0
tag @s[scores={ehm.id.2=1}] add ehm.2_1
tag @s[scores={ehm.id.2=2}] add ehm.2_2

function entity_hit_matching:id/next_bit
scoreboard players operation @s ehm.id.3 = #_bit ehm.id
tag @s[scores={ehm.id.3=0}] add ehm.3_0
tag @s[scores={ehm.id.3=1}] add ehm.3_1
tag @s[scores={ehm.id.3=2}] add ehm.3_2

function entity_hit_matching:id/next_bit
scoreboard players operation @s ehm.id.4 = #_bit ehm.id
tag @s[scores={ehm.id.4=0}] add ehm.4_0
tag @s[scores={ehm.id.4=1}] add ehm.4_1
tag @s[scores={ehm.id.4=2}] add ehm.4_2

function entity_hit_matching:id/next_bit
scoreboard players operation @s ehm.id.5 = #_bit ehm.id
tag @s[scores={ehm.id.5=0}] add ehm.5_0
tag @s[scores={ehm.id.5=1}] add ehm.5_1
tag @s[scores={ehm.id.5=2}] add ehm.5_2

function entity_hit_matching:id/next_bit
scoreboard players operation @s ehm.id.6 = #_bit ehm.id
tag @s[scores={ehm.id.6=0}] add ehm.6_0
tag @s[scores={ehm.id.6=1}] add ehm.6_1
tag @s[scores={ehm.id.6=2}] add ehm.6_2

function entity_hit_matching:id/next_bit
scoreboard players operation @s ehm.id.7 = #_bit ehm.id
tag @s[scores={ehm.id.7=0}] add ehm.7_0
tag @s[scores={ehm.id.7=1}] add ehm.7_1
tag @s[scores={ehm.id.7=2}] add ehm.7_2

function entity_hit_matching:id/next_bit
scoreboard players operation @s ehm.id.8 = #_bit ehm.id
tag @s[scores={ehm.id.8=0}] add ehm.8_0
tag @s[scores={ehm.id.8=1}] add ehm.8_1
tag @s[scores={ehm.id.8=2}] add ehm.8_2
