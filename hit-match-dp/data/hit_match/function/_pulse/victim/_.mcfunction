## AUTHOR : Picarrow

# ...
execute unless score #in_hit_context ehm._ matches 1 run return run function hit_match:_pulse/victim/_1

# ...
execute unless score $victim ehm._ = $victim ehm._ run return run function hit_match:_pulse/victim/_2

# ...
execute unless score #is_uuid_of_victim_ready ehm._ = #is_uuid_of_victim_ready ehm._ run function hit_match:_pulse/victim/query_uuid/_

# ...
scoreboard players set $is_victim_alive ehm._ 0
function hit_match:_pulse/victim/_3 with storage hit_match:data _.glob

# ...
return run scoreboard players get $is_victim_alive ehm._
