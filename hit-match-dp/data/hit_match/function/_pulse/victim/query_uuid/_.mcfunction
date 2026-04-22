## AUTHOR : Picarrow

# ...
execute store result storage hit_match:data _.glob.uid_of_victim int 1 run scoreboard players get $victim ehm._
function hit_match:_pulse/victim/query_uuid/_1 with storage hit_match:data _.glob

# ...
scoreboard players set #is_uuid_of_victim_ready ehm._ 1
