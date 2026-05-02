## AUTHOR : Picarrow

# ...
$data modify storage hit_match:data _.func."death_detect.tick".temp.current_poll set from storage hit_match:data _.death_detect.polls[{poll_rate:$(current_poll_rate)}]
