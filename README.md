# Entity Hit Matching
This data pack namespace is intended to serve as a library for other data packs.
It provides a reliable way to detect entities that exchange damage with players.

## How to Use
Before you can use it, the namespace must be installed; simply add it to the data folder of your data pack.
You are intended to interface with the namespace by altering only the data pack tags inside the namespace.
By keeping modifications within these tags, ensuring compatibility across data packs is easier.
There is one entity type tag, and there are two function tags for you to modify.
### Entity Type Tag: 'targets'
The members of this list, referred to as target entities, are ID-able by the library, which enables them to be detectable.
It is important to note that adding an entity to this list does not cover that entity's projectile entities.
You must add those projectile entities individually.
Adding more entities than necessary will result in greater performance costs.
Do not remove 'minecraft:player' from the list.

Example:
If you want to detect a player damaging a skeleton or a skeleton meleeing a player, you must add 'minecraft:skeleton'.
And if you want to detect a skeleton shooting a player, you must also add 'minecraft:arrow'.
### Function Tag: 'target_is_hurt_by_player'
Add the functions you wish to execute when a target entity is damaged by a player to this function tag.
The target entity being dealt damage is the executor of this function tag.
The execution position, rotation, and dimension of this function tag are also that of that entity.
The player dealing the damage can be referenced using 'execute on attacker'.

Projectiles of an attacking player can be referenced using 'execute as @e if score @s ehm.\_ = $\_drt\_id ehm.\_'.
If there is no projectile in the interaction, then the aforementioned execute fragment just returns the attacking player.
### Function Tag: 'player_is_hurt_by_target'
Add the functions you wish to execute when a player is damaged by a target entity to this function tag.
The player being dealt damage is the executor of this function tag.
The execution position, rotation, and dimension of this function tag are also that of that player.
The mob dealing the damage can be referenced using 'execute on attacker'.

Projectiles of an attacking mob can be referenced using 'execute as @e if score @s ehm.\_ = $\_drt\_id ehm.\_'.
If there is no projectile in the interaction, then the aforementioned execute fragment just returns the attacking entity.
This can be used to target target entities that aren't a mob such as falling dripstone.
## Credit
Thanks to [@nphhpn](https://github.com/nphhpn), who theorized the general concept and implementation.

Thanks to [@CloudWolfYT](https://github.com/CloudWolfYT), who adapted the implementation to work with command tags.
