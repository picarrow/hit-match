## AUTHOR : Picarrow

execute store result score #_entities_to_check ehm._ if entity @e[predicate=!hit_match:has_id]
scoreboard players set #_uids_left ehm._ 19683
scoreboard players operation #_uids_left ehm._ -= #next_uid ehm._
execute if score #_entities_to_check ehm._ > #_uids_left ehm._ run function hit_match:id/reset_all/_
execute as @e[predicate=!hit_match:has_id] run function hit_match:id/assign_all/_1
