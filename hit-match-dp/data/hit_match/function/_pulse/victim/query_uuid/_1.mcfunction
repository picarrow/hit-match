## AUTHOR : Picarrow

# ...
$data modify storage hit_match:data _.glob.uuid_of_victim set from storage hit_match:data _.list_of_tracked_uuids[$(uid_of_victim)]
