function picarrow.entity_hit_matching:on_hurt/tag_target
function picarrow.entity_hit_matching:action/player_is_hurt_by_target

tag @e[type=#picarrow.entity_hit_matching:targets,tag=picarrow.ehm.target] remove picarrow.ehm.target
advancement revoke @s only picarrow.entity_hit_matching:on_hurt
