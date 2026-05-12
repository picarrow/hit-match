## AUTHOR : Picarrow

# Initialize the namespace
execute unless data storage hit_match:data _.loaded run function hit_match:load/_1

# Reset IDs to respect any changes to the 'targets' entity-type tag
function hit_match:_id/reset_all/_

# Check if GU is installed
scoreboard players set #is_gu_installed ehm._ 0
execute if function gu:get_version run scoreboard players set #is_gu_installed ehm._ 1
execute if score #is_gu_installed ehm._ matches 0 run tellraw @a ["",{"color":"green","text":"[Hit Match]"},{"color":"red","text":" Error;"},{"color":"gray","text":" The dependency GU is not installed."}]
