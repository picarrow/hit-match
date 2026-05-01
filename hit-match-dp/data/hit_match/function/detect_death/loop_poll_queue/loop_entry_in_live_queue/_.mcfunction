## AUTHOR : Picarrow

# ...
data modify storage hit_match:data _.func."detect_death".temp.uuid_of_entry set from storage hit_match:data _.func."detect_death".temp.current_poll_queue.live_queue[0].uuid
function hit_match:detect_death/loop_poll_queue/loop_entry_in_live_queue/_1 with storage hit_match:data _.func."detect_death".temp
data remove storage hit_match:data _.func."detect_death".temp.current_poll_queue.live_queue[0]

#...
scoreboard players remove #_entries_left_in_this_cycle ehm._ 1
execute if score #_entries_left_in_this_cycle ehm._ matches 1.. run function hit_match:detect_death/loop_poll_queue/loop_entry_in_live_queue/_
