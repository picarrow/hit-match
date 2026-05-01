## AUTHOR : Picarrow

data modify storage hit_match:data _.func."track_death".temp.poll_queue set value {queue:[],live_queue:[]}
data modify storage hit_match:data _.func."track_death".temp.poll_queue.poll_rate set from storage hit_match:data _.func."track_death".temp.poll_rate
data modify storage hit_match:data _.func."track_death".temp.poll_queue.polls_left set from storage hit_match:data _.func."track_death".temp.poll_rate
data modify storage hit_match:data _.death_detect.active_poll_rates append from storage hit_match:data _.func."track_death".temp.poll_rate
