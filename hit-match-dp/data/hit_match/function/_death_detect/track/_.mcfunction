## AUTHOR : Picarrow

# ...
data remove storage hit_match:data _.func."death_detect.track".temp
data remove storage hit_match:data _.func."death_detect.track".out

# ...
execute store result score #_poll_rate ehm._ run data get storage hit_match:data _.func."death_detect.track".in.poll_rate
execute if score #_poll_rate ehm._ matches ..0 run function hit_match:_death_detect/track/poll_rate_invalid/_
execute if score #_poll_rate ehm._ matches 21.. run function hit_match:_death_detect/track/poll_rate_invalid/_

# ...
execute store result score #_lifetime ehm._ run data get storage hit_match:data _.func."death_detect.track".in.lifetime
execute if score #_lifetime ehm._ matches ..0 run function hit_match:_death_detect/track/lifetime_invalid/_
execute if score #_lifetime ehm._ matches 24001.. run function hit_match:_death_detect/track/lifetime_invalid/_

# ...
execute unless entity @s run function hit_match:_death_detect/track/_1

# ...
execute if score @s ehm.death_detect.tracked matches 1 run function hit_match:_death_detect/track/_2
execute unless score @s ehm.death_detect.tracked matches 1 run function hit_match:_death_detect/track/_3

# ...
data remove storage hit_match:data _.func."death_detect.track".temp
