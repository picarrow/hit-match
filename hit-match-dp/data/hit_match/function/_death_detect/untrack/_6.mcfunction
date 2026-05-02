## AUTHOR : Picarrow

# ...
$data modify storage hit_match:data _.func."death_detect.untrack".temp.poll_rate set from storage hit_match:data _.death_detect.list_of_tracked_uuids[{uuid:"$(uuid)"}].poll_rate
$data remove storage hit_match:data _.death_detect.list_of_tracked_uuids[{uuid:"$(uuid)"}]
