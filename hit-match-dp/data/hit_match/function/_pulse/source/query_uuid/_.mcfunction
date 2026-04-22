## AUTHOR : Picarrow

# ...
execute store result storage hit_match:data _.glob.uid_of_source int 1 run scoreboard players get $source ehm._
function hit_match:_pulse/source/query_uuid/_1 with storage hit_match:data _.glob

# ...
scoreboard players set #is_uuid_of_source_ready ehm._ 1
