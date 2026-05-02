## AUTHOR : Picarrow

# ...
scoreboard players set @s ehm.death_detect.tracked 1

# ...
execute store result score #_is_target_entity ehm._ if entity @s[predicate=hit_match:has_uid]
execute unless score #_is_target_entity ehm._ matches 1 run function hit_match:_death_detect/track/_31
execute if score #_is_target_entity ehm._ matches 1 run function hit_match:_death_detect/track/_32

# ...
execute store result storage hit_match:data _.func."death_detect.track".temp.poll_rate int 1 run scoreboard players get #_poll_rate ehm._
function hit_match:_death_detect/track/_33 with storage hit_match:data _.func."death_detect.track".temp
