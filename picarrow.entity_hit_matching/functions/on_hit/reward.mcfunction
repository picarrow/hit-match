function picarrow.entity_hit_matching:on_hit/tag_target
function picarrow.entity_hit_matching:action/player_hits_target

tag @e[type=#picarrow.entity_hit_matching:targets,tag=picarrow.ehm.target] remove picarrow.ehm.target
advancement revoke @s only picarrow.entity_hit_matching:on_hit
