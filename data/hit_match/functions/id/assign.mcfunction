## AUTHOR : Picarrow

# Remove existing ID-related command tags
function hit_match:id/clear_command_tags

# Assign an ID
execute if score #next_uid ehm._ matches 19683.. run function hit_match:id/reset_all
scoreboard players operation @s ehm.id = #next_uid ehm._
scoreboard players add #next_uid ehm._ 1

# Associate the base-3 ID
scoreboard players operation #_temp_id ehm._ = @s ehm.id

function hit_match:id/assign_1
scoreboard players operation @s ehm.id.0 = #_bit ehm._

function hit_match:id/assign_1
scoreboard players operation @s ehm.id.1 = #_bit ehm._

function hit_match:id/assign_1
scoreboard players operation @s ehm.id.2 = #_bit ehm._

function hit_match:id/assign_1
scoreboard players operation @s ehm.id.3 = #_bit ehm._

function hit_match:id/assign_1
scoreboard players operation @s ehm.id.4 = #_bit ehm._

function hit_match:id/assign_1
scoreboard players operation @s ehm.id.5 = #_bit ehm._

function hit_match:id/assign_1
scoreboard players operation @s ehm.id.6 = #_bit ehm._

function hit_match:id/assign_1
scoreboard players operation @s ehm.id.7 = #_bit ehm._

function hit_match:id/assign_1
scoreboard players operation @s ehm.id.8 = #_bit ehm._

# Append command tags that reflect the base-3 ID
tag @s[scores={ehm.id.0=0}] add ehm.0_0
tag @s[scores={ehm.id.0=1}] add ehm.0_1
tag @s[scores={ehm.id.0=2}] add ehm.0_2
tag @s[scores={ehm.id.1=0}] add ehm.1_0
tag @s[scores={ehm.id.1=1}] add ehm.1_1
tag @s[scores={ehm.id.1=2}] add ehm.1_2
tag @s[scores={ehm.id.2=0}] add ehm.2_0
tag @s[scores={ehm.id.2=1}] add ehm.2_1
tag @s[scores={ehm.id.2=2}] add ehm.2_2
tag @s[scores={ehm.id.3=0}] add ehm.3_0
tag @s[scores={ehm.id.3=1}] add ehm.3_1
tag @s[scores={ehm.id.3=2}] add ehm.3_2
tag @s[scores={ehm.id.4=0}] add ehm.4_0
tag @s[scores={ehm.id.4=1}] add ehm.4_1
tag @s[scores={ehm.id.4=2}] add ehm.4_2
tag @s[scores={ehm.id.5=0}] add ehm.5_0
tag @s[scores={ehm.id.5=1}] add ehm.5_1
tag @s[scores={ehm.id.5=2}] add ehm.5_2
tag @s[scores={ehm.id.6=0}] add ehm.6_0
tag @s[scores={ehm.id.6=1}] add ehm.6_1
tag @s[scores={ehm.id.6=2}] add ehm.6_2
tag @s[scores={ehm.id.7=0}] add ehm.7_0
tag @s[scores={ehm.id.7=1}] add ehm.7_1
tag @s[scores={ehm.id.7=2}] add ehm.7_2
tag @s[scores={ehm.id.8=0}] add ehm.8_0
tag @s[scores={ehm.id.8=1}] add ehm.8_1
tag @s[scores={ehm.id.8=2}] add ehm.8_2
