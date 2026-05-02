## AUTHOR : Picarrow

# ...
data remove storage hit_match:data _.func."death_detect.track".temp
data remove storage hit_match:data _.func."death_detect.track".out

# Error
execute if score #in_dying_context ehm._ matches 1 run function hit_match:_death_detect/track/_1

# Error
execute store result score #_poll_rate ehm._ run data get storage hit_match:data _.func."death_detect.track".in.poll_rate
execute if score #_poll_rate ehm._ matches ..0 run function hit_match:_death_detect/track/poll_rate_invalid/_
execute if score #_poll_rate ehm._ matches 21.. run function hit_match:_death_detect/track/poll_rate_invalid/_

# Error
execute store result score #_lifetime ehm._ run data get storage hit_match:data _.func."death_detect.track".in.lifetime
execute if score #_lifetime ehm._ matches ..0 run function hit_match:_death_detect/track/lifetime_invalid/_
execute if score #_lifetime ehm._ matches 24001.. run function hit_match:_death_detect/track/lifetime_invalid/_

# Error
execute unless entity @s run function hit_match:_death_detect/track/_2

# Error
execute if score @s ehm.death_detect.tracked matches 1 run function hit_match:_death_detect/track/_3

# ...
scoreboard players set @s ehm.death_detect.tracked 1
scoreboard players operation @s ehm.death_detect.lifetime = #_lifetime ehm._
scoreboard players operation @s ehm.death_detect.max_lifetime = #_lifetime ehm._

# ...
execute store result score #_is_target_entity ehm._ if entity @s[predicate=hit_match:has_uid]
execute unless score #_is_target_entity ehm._ matches 1 run function hit_match:_death_detect/track/_4
execute if score #_is_target_entity ehm._ matches 1 run function hit_match:_death_detect/track/_5

# ...
execute store result storage hit_match:data _.func."death_detect.track".temp.poll_rate int 1 run scoreboard players get #_poll_rate ehm._
function hit_match:_death_detect/track/_6 with storage hit_match:data _.func."death_detect.track".temp

# ...
data remove storage hit_match:data _.func."death_detect.track".temp
