## AUTHOR : Picarrow

# Do not add the entity to a poll queue if the entity is in a poll queue
$execute if data storage hit_match:data _.death_detect.tracked[{uid:$(uid)}] run return run data modify storage hit_match:data _.func."track_death".out.has_found_existing set value true

# Create a poll queue for the poll rate if there is not one
$data modify storage hit_match:data _.func."track_death".temp.poll_queue set from storage hit_match:data _.death_detect.poll_queues[{poll_rate:$(poll_rate)}]
execute unless data storage hit_match:data _.func."track_death".temp.poll_queue run function hit_match:track_death/_21

# ...
execute store result storage hit_match:data _.func."track_death".temp.entry.uid int 1 run scoreboard players get @s ehm.id
$data modify storage hit_match:data _.func."track_death".temp.entry.uuid set from storage hit_match:data _.list_of_tracked_uuids[$(uid)]

# ...
data modify storage hit_match:data _.func."track_death".temp.poll_queue.queue append from storage hit_match:data _.func."track_death".temp.entry
data modify storage hit_match:data _.func."track_death".temp.poll_queue.live_queue append from storage hit_match:data _.func."track_death".temp.entry
$data modify storage hit_match:data _.death_detect.poll_queues[{poll_rate:$(poll_rate)}] set from storage hit_match:data _.func."track_death".temp.poll_queue

# ...
data modify storage hit_match:data _.func."track_death".temp.entry.poll_rate set from storage hit_match:data _.func."track_death".temp.poll_rate
data modify storage hit_match:data _.death_detect.tracked append from storage hit_match:data _.func."track_death".temp.entry

# ...
data modify storage hit_match:data _.func."track_death".out.has_found_existing set value false
