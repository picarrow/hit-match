## AUTHOR : Picarrow

# ...
$execute store result score #_lifetime ehm._ run data get storage hit_match:data _.death_detect.list_of_tracked_uuids[{uuid:"$(uuid_of_entry)"}].lifetime
execute store result score #_poll_rate ehm._ run data get storage hit_match:data _.func."death_detect.tick".temp.current_poll_rate
scoreboard players operation #_lifetime ehm._ -= #_poll_rate ehm._

# ...
execute if score #_lifetime ehm._ matches 1.. run return run function hit_match:_death_detect/tick/loop_poll/loop_entry_in_live_queue/_21 with storage hit_match:data _.func."death_detect.tick".temp
execute if score #_lifetime ehm._ matches ..0 run function hit_match:_death_detect/tick/loop_poll/loop_entry_in_live_queue/_22 with storage hit_match:data _.func."death_detect.tick".temp
