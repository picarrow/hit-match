## AUTHOR : Picarrow

data modify storage hit_match:data _.func."death_detect.track".temp.poll set value {queue:[],live_queue:[]}
data modify storage hit_match:data _.func."death_detect.track".temp.poll.poll_rate set from storage hit_match:data _.func."death_detect.track".temp.poll_rate
data modify storage hit_match:data _.func."death_detect.track".temp.poll.polls_left set from storage hit_match:data _.func."death_detect.track".temp.poll_rate
data modify storage hit_match:data _.func."death_detect.track".temp.active_poll_rate_entry.poll_rate set from storage hit_match:data _.func."death_detect.track".temp.poll_rate
data modify storage hit_match:data _.death_detect.active_poll_rates append from storage hit_match:data _.func."death_detect.track".temp.active_poll_rate_entry
