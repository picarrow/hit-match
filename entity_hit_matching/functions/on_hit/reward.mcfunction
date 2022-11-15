## AUTHOR: Picarrow, CloudWolf, nphhpn

function entity_hit_matching:on_hit/find_target_id
advancement revoke @s only entity_hit_matching:on_hit
tag @s add ehm.player
execute as @e[type=#entity_hit_matching:targets] if score @s ehm._ = #target_id ehm._ at @s run function entity_hit_matching:event/target_is_hurt_by_player
tag @s remove ehm.player
