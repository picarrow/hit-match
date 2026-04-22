## AUTHOR : Picarrow

# ...
execute unless score #in_hit_context ehm._ matches 1 run return run function hit_match:_pulse/source/_1

# ...
execute unless score $source ehm._ = $source ehm._ run return run function hit_match:_pulse/source/_2

# ...
execute unless score #is_uuid_of_source_ready ehm._ = #is_uuid_of_source_ready ehm._ run function hit_match:_pulse/source/query_uuid/_

# ...
scoreboard players set $source_life_cache ehm._ 0
function hit_match:_pulse/source/_3 with storage hit_match:data _.glob

# ...
return run scoreboard players get $source_life_cache ehm._
