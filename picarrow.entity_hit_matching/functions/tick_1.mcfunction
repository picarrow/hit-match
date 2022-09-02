# Assigns a unique id to every target that doesn't already have an id
execute as @e[type=#picarrow.entity_hit_matching:targets] unless score @s picarrow.ehm._ = @s picarrow.ehm._ run function picarrow.entity_hit_matching:id/assign
# Removes ids from non-targets
execute as @e[type=!#picarrow.entity_hit_matching:targets] if score @s picarrow.ehm._ = @s picarrow.ehm._ run function picarrow.entity_hit_matching:id/remove
