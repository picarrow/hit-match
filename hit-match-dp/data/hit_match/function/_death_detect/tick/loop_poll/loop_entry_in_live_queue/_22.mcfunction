## AUTHOR : Picarrow

# ...
execute store result score #_poll_rate ehm._ run data get storage hit_match:data _.func."death_detect.tick".temp.current_poll_rate
scoreboard players operation #_lifetime ehm._ -= #_poll_rate ehm._
execute if score #_lifetime ehm._ matches 0 run scoreboard players set #_lifetime ehm._ -1
$scoreboard players operation $(uuid_of_entry) ehm.death_detect.lifetime = #_lifetime ehm._
