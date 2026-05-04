## AUTHOR : Picarrow

# ...
execute if score #_lifetime ehm._ matches ..-1 run function hit_match:_death_detect/tick/loop_poll/loop_entry_in_live_queue/remove_existing_entity/_ with storage hit_match:data _.func."death_detect.tick".temp
execute if score #_lifetime ehm._ matches 0 run function hit_match:_death_detect/tick/loop_poll/loop_entry_in_live_queue/_21 with storage hit_match:data _.func."death_detect.tick".temp
execute if score #_lifetime ehm._ matches 1.. run function hit_match:_death_detect/tick/loop_poll/loop_entry_in_live_queue/_22 with storage hit_match:data _.func."death_detect.tick".temp
