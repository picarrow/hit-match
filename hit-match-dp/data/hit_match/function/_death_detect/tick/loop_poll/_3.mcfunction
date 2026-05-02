## AUTHOR : Picarrow

# ...
$data remove storage hit_match:data _.death_detect.active_poll_rates[{poll_rate:$(current_poll_rate)}]
$data remove storage hit_match:data _.death_detect.polls[{poll_rate:$(current_poll_rate)}]
