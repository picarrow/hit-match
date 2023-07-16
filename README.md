***Download Stable Versions from [Releases](https://github.com/picarrow/hit-match/releases)***
# Hit Match v1.5.0
This data pack namespace is intended to be used as a data pack library.
It provides a reliable way to detect entities that exchange damage with players.
It has additional features that other similar libraries do not provide, such as the detection of non-living entities and projectiles.
## 🟧 How to Use
Add the namespace to the data folder of your data pack, and call the 'hit_match:load' and 'hit_match:tick' functions from the 'minecraft:#load' and 'minecraft:#tick' function tags respectively.

You are intended to interface with the namespace by altering only the json tags inside the namespace.
By keeping your modifications within these tags, compatibility across data packs is certain.
There is one entity type tag and two function tags for you to modify.
### 🔸 Entity Type Tag: targets
The members of entity type tag '***targets***' are referred to as **target entities**.
Target entities are ID-able by the library, which enables them to be detectable.
Adding more entities than necessary to this tag will likely result in greater performance costs.
### 🔸 Function Tags: player_hurts_entity & player_is_hurt_by_entity
'**_player_hurts_entity_**' executes when a *player damages an entity*.  
'**_player_is_hurt_by_entity_**' executes when a *player is damaged by an entity*.

Add functions that you want to execute on either event to the respective function tag.  
The player is the executor, and the execution position, rotation, and dimension are also that of the player.
<details>
<summary>Definitions!</summary>

**Victim Entity** - the entity that has been dealt damage  
**Source Entity** - the entity that is responsible for the dealt damage  
**Direct Entity** - the entity that actually dealt the damage
</details>

For the following predicates to work, the entity you're attemping to reference must have an ID.

The victim entity can be referenced using '**/execute as @e[predicate=hit_match:is_victim,limit=1] ...**'.  
The direct entity can be referenced using '**/execute as @e[predicate=hit_match:is_direct,limit=1] ...**'.  
If the direct entity is a projectile, it'll likely have a source.  
The source entity can be referenced using '**/execute as @e[predicate=hit_match:is_direct,limit=1] _on_ _origin_ ...**'.

'**/execute on attacker**' can be used as a shortcut to reference *living* source entities.
## 🟧 Caveat of '/damage'
When '/damage' is used to exchange damage between a player and another entity, it may come with an unnecessary performance cost.
This is because the command can trigger the 'player_hurt_entity' and 'entity_hurt_player' advancement triggers, which fire expensive criteria checks.
It is highly recommended that you disable hit detection while running '/damage'-related commands.
The following code sample demonstrates how to do this:
```
function hit_match:_/detection/disable
damage PersonA 5 minecraft:generic by PersonB from PersonC
function hit_match:_/detection/enable
```
## 🟧 Credit
Thanks to [@nphhpn](https://github.com/nphhpn), who theorized the general concept and implementation.  
Thanks to [@CloudWolfYT](https://github.com/CloudWolfYT), who adapted the implementation to work with command tags.
