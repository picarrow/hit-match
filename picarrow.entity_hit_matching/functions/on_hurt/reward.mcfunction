tag @s add picarrow.ehm.player
function picarrow.entity_hit_matching:on_hurt/act_on_target
tag @s remove picarrow.ehm.player
advancement revoke @s only picarrow.entity_hit_matching:on_hurt
