## AUTHOR : Picarrow, CloudWolf, nphhpn

function entity_hit_matching:hurt_target/find_target_id
advancement revoke @s only entity_hit_matching:hurt_target

execute as @e[type=#entity_hit_matching:targets] if score @s ehm._ = $_target_id ehm._ at @s run function #entity_hit_matching:target_is_hurt_by_player
