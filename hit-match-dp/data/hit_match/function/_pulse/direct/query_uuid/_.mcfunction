## AUTHOR : Picarrow

# ...
execute store result storage hit_match:data _.glob.uid_of_direct int 1 run scoreboard players get $direct ehm._
function hit_match:_pulse/direct/query_uuid/_1 with storage hit_match:data _.glob

# ...
scoreboard players set #is_uuid_of_direct_ready ehm._ 1
