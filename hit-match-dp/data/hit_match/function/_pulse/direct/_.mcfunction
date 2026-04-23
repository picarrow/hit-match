## AUTHOR : Picarrow

# ...
execute unless score #in_hit_context ehm._ matches 1 run return run function hit_match:_pulse/direct/_1

# ...
execute unless score $direct ehm._ = $direct ehm._ run return run function hit_match:_pulse/direct/_2

# ...
execute unless score #is_uuid_of_direct_ready ehm._ = #is_uuid_of_direct_ready ehm._ run function hit_match:_pulse/direct/query_uuid/_

# ...
scoreboard players set $is_direct_alive ehm._ 0
function hit_match:_pulse/direct/_3 with storage hit_match:data _.glob

# ...
return run scoreboard players get $is_direct_alive ehm._
