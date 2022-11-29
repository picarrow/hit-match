## AUTHOR: Picarrow, CloudWolf, nphhpn

function entity_hit_matching:on_hurt/find_target_id
advancement revoke @s only entity_hit_matching:on_hurt
tag @s add ehm.player
execute as @e[type=#entity_hit_matching:targets] if score @s ehm._ = #target_id ehm._ run function #entity_hit_matching:target_hits_player
tag @s remove ehm.player
