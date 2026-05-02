## AUTHOR : Picarrow

# ...
$data remove storage hit_match:data _.death_detect.polls[{poll_rate:$(poll_rate)}].queue[{uuid:"$(uuid)"}]
$execute unless data storage hit_match:data _.death_detect.polls[{poll_rate:$(poll_rate)}].queue[0] run data remove storage hit_match:data _.death_detect.polls[{poll_rate:$(poll_rate)}]
$execute unless data storage hit_match:data _.death_detect.polls[{poll_rate:$(poll_rate)}].queue[0] run data remove storage hit_match:data _.death_detect.active_poll_rates[{poll_rate:$(poll_rate)}]
$execute if data storage hit_match:data _.death_detect.polls[{poll_rate:$(poll_rate)}].queue[0] run data remove storage hit_match:data _.death_detect.polls[{poll_rate:$(poll_rate)}].live_queue[{uuid:"$(uuid)"}]
