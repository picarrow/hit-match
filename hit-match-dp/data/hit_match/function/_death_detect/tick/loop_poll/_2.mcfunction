## AUTHOR : Picarrow

# ...
scoreboard players remove #_polls_left ehm._ 1
execute store result storage hit_match:data _.func."death_detect.tick".temp.current_poll.polls_left int 1 run scoreboard players get #_polls_left ehm._

# ...
execute if score #_polls_left ehm._ matches 0 run data modify storage hit_match:data _.func."death_detect.tick".temp.current_poll.live_queue set from storage hit_match:data _.func."death_detect.tick".temp.current_poll.queue
execute if score #_polls_left ehm._ matches 0 run data modify storage hit_match:data _.func."death_detect.tick".temp.current_poll.polls_left set from storage hit_match:data _.func."death_detect.tick".temp.current_poll.poll_rate

# ...
$data modify storage hit_match:data _.death_detect.polls[{poll_rate:$(current_poll_rate)}] set from storage hit_match:data _.func."death_detect.tick".temp.current_poll
