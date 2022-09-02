function picarrow.entity_hit_matching:on_hurt/find_target_id
advancement revoke @s only picarrow.entity_hit_matching:on_hurt
tag @s add picarrow.ehm.player
execute as @e[type=#picarrow.entity_hit_matching:targets] if score @s picarrow.ehm._ = #target_id picarrow.ehm._ at @s run function picarrow.entity_hit_matching:event/target_hits_player
tag @s remove picarrow.ehm.player
