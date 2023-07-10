***Download Stable Versions from [Releases](https://github.com/picarrow/hit-match/releases)***
# Hit Match v1.4.0
This data pack namespace is intended to serve as a library for other data packs.
It provides a reliable way to detect entities that exchange damage with players.
## How to Use
Before you can use it, the namespace must be installed.
First, add the namespace to the data folder of your data pack.
Then, call the 'hit_match:load' and 'hit_match:tick' functions from the 'minecraft:#load' and 'minecraft:#tick' function tags respectively.

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

The direct entity can be referenced using '**/execute as @e[predicate=hit_match:is_direct,limit=1] ...**'.  
If the direct entity is a projectile, it'll likely have a source.  
The source entity can be referenced using '**/execute as @e[predicate=hit_match:is_direct,limit=1] _on_ _origin_ ...**'.  
'**/execute on attacker**' can be used as a shortcut to reference *living* source entities.
## Caveat of '/damage'
When '/damage' is used to exchange damage between a player and another entity, it may come with an unnecessary performance cost.
This is because the command can trigger the 'player_hurt_entity' and 'entity_hurt_player' advancement triggers, which fire expensive criteria checks.
It is highly recommended that you disable hit detection while running '/damage'-related commands.
The following code sample demonstrates how to do this:
```
function hit_match:_/detection/disable
damage PersonA 5 minecraft:generic by PersonB from PersonC
function hit_match:_/detection/enable
```
## Credit
Thanks to [@nphhpn](https://github.com/nphhpn), who theorized the general concept and implementation.  
Thanks to [@CloudWolfYT](https://github.com/CloudWolfYT), who adapted the implementation to work with command tags.
