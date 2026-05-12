## AUTHOR : Picarrow

# Error
execute if score #in_hit_context ehm._ matches 1 run function hit_match:_id/reset_all/_1

# Reset IDs
scoreboard players reset * ehm.id

# Set the next UID to be assigned back to 1
# Set to 0 once MC-229018 is resolved
scoreboard players set #next_uid ehm._ 1

# Clear the list of tracked UUIDs
# Set to [] once MC-229018 is resolved
data modify storage hit_match:data _.list_of_tracked_uuids set value [""]
