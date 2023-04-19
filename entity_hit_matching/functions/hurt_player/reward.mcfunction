## AUTHOR : Picarrow, CloudWolf, nphhpn

# Determines the id of the entity inflicting damage
scoreboard players reset $_drt_id ehm._
execute if entity @s[advancements={entity_hit_matching:target_hurts_player={direct_has_no_id=false}}] run function entity_hit_matching:hurt_player/find_direct_id

# Determines the id of the entity receiving damage
scoreboard players operation $_vtm_id ehm._ = @s ehm._

# Revokes the advancement, so it can be triggered again
advancement revoke @s only entity_hit_matching:target_hurts_player

# Runs the provided functions that work off of this reward function
execute if score $_drt_id ehm._ = $_drt_id ehm._ run function #entity_hit_matching:player_is_hurt_by_target
