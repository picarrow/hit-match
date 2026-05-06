## AUTHOR : Picarrow

# ...
function hit_match:_death_detect/tick/loop_poll/loop_entry_in_live_queue/remove_existing_entity/_ with storage hit_match:data _.func."death_detect.tick".temp

# ...
data modify storage hit_match:data _.glob.uuid set from storage hit_match:data _.func."death_detect.tick".temp.uuid_of_entry
data modify storage hit_match:data _.glob.poll_rate set from storage hit_match:data _.func."death_detect.tick".temp.current_poll_rate
function #hit_match:tick_dying
