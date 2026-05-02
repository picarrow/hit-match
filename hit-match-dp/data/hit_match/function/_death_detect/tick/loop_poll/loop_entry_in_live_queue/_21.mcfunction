## AUTHOR : Picarrow

# ...
execute store result storage hit_match:data _.func."death_detect.tick".temp.lifetime int 1 run scoreboard players get #_lifetime ehm._
$data modify storage hit_match:data _.death_detect.list_of_tracked_uuids[{uuid:"$(uuid_of_entry)"}].lifetime set from storage hit_match:data _.func."death_detect.tick".temp.lifetime
