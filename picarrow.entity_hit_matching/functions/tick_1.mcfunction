execute as @e[type=!#picarrow.entity_hit_matching:targets,tag=picarrow.ehm.has_id] run function picarrow.entity_hit_matching:id/remove
execute as @e[type=#picarrow.entity_hit_matching:targets,tag=!picarrow.ehm.has_id] run function picarrow.entity_hit_matching:id/assign
