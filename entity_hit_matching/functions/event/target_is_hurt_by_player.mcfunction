# commands to run on a target entity when they are hurt by a player
# player is tagged with ehm.player

execute if entity @s[tag=zev.jacky] run function zombies_evolved:jacky/hurt
execute if entity @s[tag=zev.shrieker] run function zombies_evolved:shrieker/hurt
execute if entity @s[tag=zev.stalac] run function zombies_evolved:stalac/hurt
