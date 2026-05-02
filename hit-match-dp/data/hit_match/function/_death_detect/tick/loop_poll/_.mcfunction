## AUTHOR : Picarrow

# ...
data modify storage hit_match:data _.func."death_detect.tick".temp.current_poll_rate set from storage hit_match:data _.func."death_detect.tick".temp.poll_rate_traversal[0].poll_rate
function hit_match:_death_detect/tick/loop_poll/_1 with storage hit_match:data _.func."death_detect.tick".temp

# ...
execute store result score #_entries_left ehm._ if data storage hit_match:data _.func."death_detect.tick".temp.current_poll.live_queue[]
execute store result score #_polls_left ehm._ run data get storage hit_match:data _.func."death_detect.tick".temp.current_poll.polls_left
scoreboard players operation #_entries_left_in_this_cycle ehm._ = #_entries_left ehm._
scoreboard players operation #_entries_left_in_this_cycle ehm._ /= #_polls_left ehm._
scoreboard players operation #_remainder ehm._ = #_entries_left ehm._
scoreboard players operation #_remainder ehm._ %= #_polls_left ehm._
execute if score #_remainder ehm._ matches 1.. run scoreboard players add #_entries_left_in_this_cycle ehm._ 1

# ...
execute if score #_entries_left_in_this_cycle ehm._ matches 1.. run function hit_match:_death_detect/tick/loop_poll/loop_entry_in_live_queue/_

# ...
execute if data storage hit_match:data _.func."death_detect.tick".temp.current_poll.queue[0] run function hit_match:_death_detect/tick/loop_poll/_2 with storage hit_match:data _.func."death_detect.tick".temp
execute unless data storage hit_match:data _.func."death_detect.tick".temp.current_poll.queue[0] run function hit_match:_death_detect/tick/loop_poll/_3 with storage hit_match:data _.func."death_detect.tick".temp

# ...
data remove storage hit_match:data _.func."death_detect.tick".temp.poll_rate_traversal[0]
execute if data storage hit_match:data _.func."death_detect.tick".temp.poll_rate_traversal[0] run function hit_match:_death_detect/tick/loop_poll/_
