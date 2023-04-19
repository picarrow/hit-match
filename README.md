# Entity Hit Matching
This data pack namespace is intended to serve as a library for other data packs.
It provides a reliable way to detect entities that exchange damage with players.

## How to Use
Before you can use it, the namespace must be installed; simply add it to the data folder of your data pack.
You are intended to interface with the namespace by altering only the data pack tags inside the namespace.
By keeping your modifications within these tags, compatibility across data packs should be easier to maintain.
There is one entity type tag, and there are two function tags for you to modify.
### Entity Type Tag: 'targets'
The members of entity type tag '***targets***', referred to as **target entities**, are ID-able by the library, which enables them to be detectable.  
It is important to note that adding an entity to this list does not cover that entity's projectile entities; those must be added individually.  
Keep in mind, adding more entities than necessary may result in greater performance costs.  
**DO NOT** remove 'minecraft:player' from the list.

Examples:  
If you want to detect a player damaging a skeleton or a skeleton meleeing a player, you must add 'minecraft:skeleton'.  
And if you want to detect a skeleton shooting a player, you must also add 'minecraft:arrow'.
### Function Tags: target_is_hurt_by_player & player_is_hurt_by_target
These two function tags behave similarly.
They are executed when a target entity exchanges damage with a player.  
'**_target_is_hurt_by_player_**' is executed when a *target entity is damaged by a player*.  
'**_player_is_hurt_by_target_**' is executed when a *player is damaged by a target entity*.  
Add the functions you wish to execute on an event to the event's respective function tag.
<details>
<summary>Definitions!</summary>

**Victim Entity** - the entity being dealt the damage  
**Source Entity** - the entity responsible for dealing the damage  
**Direct Entity** - the entity that actually dealt the damage
</details>

The victim is always the executor of these function tags.  
The execution position, rotation, and dimension are also that of the victim.

The direct entity can be referenced using '**execute as @e if score @s ehm.id = $direct ehm.id ...**'.  
If the direct entity is a projectile, it'll likely have a source.  
The source entity can be referenced using '**execute as @e if score @s ehm.id = $direct ehm.id _on_ _origin_ ...**'.

'**execute on attacker**' can be used as a shortcut to reference *living* source entities.
## Credit
Thanks to [@nphhpn](https://github.com/nphhpn), who theorized the general concept and implementation.

Thanks to [@CloudWolfYT](https://github.com/CloudWolfYT), who adapted the implementation to work with command tags.
