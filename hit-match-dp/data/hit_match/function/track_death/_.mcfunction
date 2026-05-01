## AUTHOR : Picarrow

# ...
data remove storage hit_match:data _.func."track_death".temp
data remove storage hit_match:data _.func."track_death".out

# ...
execute store result score #_has_target_entity_context ehm._ if entity @s[predicate=hit_match:has_uid]
execute if score #_has_target_entity_context ehm._ matches 0 run function hit_match:track_death/_1

# ...
execute store result score #_poll_rate ehm._ run data get storage hit_match:data _.func."track_death".in.poll_rate
execute if score #_poll_rate ehm._ matches ..0 run function hit_match:track_death/poll_rate_invalid/_
execute if score #_poll_rate ehm._ matches 20.. run function hit_match:track_death/poll_rate_invalid/_

# ...
execute store result storage hit_match:data _.func."track_death".temp.uid int 1 run scoreboard players get @s ehm.id
execute store result storage hit_match:data _.func."track_death".temp.poll_rate int 1 run scoreboard players get #_poll_rate ehm._
function hit_match:track_death/_2 with storage hit_match:data _.func."track_death".temp

# ...
data remove storage hit_match:data _.func."track_death".temp
