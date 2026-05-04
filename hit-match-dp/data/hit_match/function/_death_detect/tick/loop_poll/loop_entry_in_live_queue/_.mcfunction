## AUTHOR : Picarrow

# ...
scoreboard players reset #_is_entity_loaded ehm._

# ...
data modify storage hit_match:data _.func."death_detect.tick".temp.uuid_of_entry set from storage hit_match:data _.func."death_detect.tick".temp.current_poll.live_queue[0].uuid
function hit_match:_death_detect/tick/loop_poll/loop_entry_in_live_queue/_1 with storage hit_match:data _.func."death_detect.tick".temp

# ...
execute unless score #_is_entity_loaded ehm._ matches 1 run function hit_match:_death_detect/tick/loop_poll/loop_entry_in_live_queue/_2
execute if score #_is_entity_loaded ehm._ matches 1 unless score #_is_entity_selectable ehm._ matches 1 run function hit_match:_death_detect/tick/loop_poll/loop_entry_in_live_queue/remove_existing_entity/_ with storage hit_match:data _.func."death_detect.tick".temp

# ...
data remove storage hit_match:data _.func."death_detect.tick".temp.current_poll.live_queue[0]
scoreboard players remove #_entries_left_in_this_cycle ehm._ 1
execute if score #_entries_left_in_this_cycle ehm._ matches 1.. run function hit_match:_death_detect/tick/loop_poll/loop_entry_in_live_queue/_
