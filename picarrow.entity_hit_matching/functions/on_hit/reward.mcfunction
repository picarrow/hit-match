function picarrow.entity_hit_matching:on_hit/find_target_id
advancement revoke @s only picarrow.entity_hit_matching:on_hit
tag @s add picarrow.ehm.player
execute as @e[type=#picarrow.entity_hit_matching:targets] if score @s picarrow.ehm.id = #target_id picarrow.ehm.id at @s run function picarrow.entity_hit_matching:action/target_is_hurt_by_player
tag @s remove picarrow.ehm.player
