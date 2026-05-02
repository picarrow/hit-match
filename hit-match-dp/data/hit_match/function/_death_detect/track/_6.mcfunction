## AUTHOR : Picarrow

# Create a poll for the poll rate if there is not one
$data modify storage hit_match:data _.func."death_detect.track".temp.poll set from storage hit_match:data _.death_detect.polls[{poll_rate:$(poll_rate)}]
execute unless data storage hit_match:data _.func."death_detect.track".temp.poll run function hit_match:_death_detect/track/_61

# ...
data modify storage hit_match:data _.func."death_detect.track".temp.poll.queue append from storage hit_match:data _.func."death_detect.track".temp.entry
data modify storage hit_match:data _.func."death_detect.track".temp.poll.live_queue append from storage hit_match:data _.func."death_detect.track".temp.entry
$data modify storage hit_match:data _.death_detect.polls[{poll_rate:$(poll_rate)}] set from storage hit_match:data _.func."death_detect.track".temp.poll

# ...
data modify storage hit_match:data _.func."death_detect.track".temp.entry.poll_rate set from storage hit_match:data _.func."death_detect.track".temp.poll_rate
data modify storage hit_match:data _.death_detect.list_of_tracked_uuids append from storage hit_match:data _.func."death_detect.track".temp.entry
