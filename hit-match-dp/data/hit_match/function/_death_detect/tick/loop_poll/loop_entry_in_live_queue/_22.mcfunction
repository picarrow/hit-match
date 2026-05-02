## AUTHOR : Picarrow

# ...
$data remove storage hit_match:data _.func."death_detect.tick".temp.current_poll.queue[{uuid:"$(uuid_of_entry)"}]
$data remove storage hit_match:data _.death_detect.list_of_tracked_uuids[{uuid:"$(uuid_of_entry)"}]
