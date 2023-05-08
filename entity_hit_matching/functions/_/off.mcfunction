## AUTHOR : Picarrow, CloudWolf, nphhpn

scoreboard players set #_override ehm.id 1
advancement grant @s only entity_hit_matching:player_hurts_target
advancement grant @s only entity_hit_matching:target_hurts_player
scoreboard players reset #_override ehm.id
