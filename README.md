# Hit Match v1.6.0
## 🟧 About
&nbsp;&nbsp;&nbsp;&nbsp;Hit Match is a Minecraft data pack library that facilitates the selection of entities that have exchanged damage with players.
For example, it can make poisoning a mob a player hurt trivial, where often selecting the correct mob to poison is difficult.
It can even trivialize the application of an arrow's custom effects to a pierced mob.
As Hit Match is built on the advancement system, and advancements are inherent to strictly players, it cannot process damage exchanges that do not involve a player.
That includes situations where a mob has hurt another mob.
## 🟧 Installation
***It is recommended that a stable version from [Releases](https://github.com/picarrow/hit-match/releases) is installed.***

&nbsp;&nbsp;&nbsp;&nbsp;For the more recent releases, the Hit Match data pack should be placed beside the data packs that use it.
That entails dragging the entire pack (the ZIP) into the `datapacks` folder of a world.
Hit Match is a discreet data pack and makes no discernable impact on a world unless other packs leverage it to do so.
## 🟧 How To Use
***Tampering with the files of Hit Match in any way that is not described in the following section can jeopardize compatibility between packs.***

&nbsp;&nbsp;&nbsp;&nbsp;Hit Match contains one entity-type tag and two function tags that may be overridden.
For a data pack to override these tags, it must create these function tags within itself, keeping the namespace as `hit_match`.
In the overrides for these tags, it is crucial that the JSON key `replace` is set to `false`.
This ensures that the members of these overrides are appended beside, rather than replacing, existing members that have been added by other packs.
### Targets
&nbsp;&nbsp;&nbsp;&nbsp;One of the tags intended to be overridden is the entity-type tag `hit_match:targets`.
The entity types included in this tag are used to ID entities into a scoreboard ID system.
ID'd entities are referred to as *targets*.
Targets benefit from the tools in Hit Match that can make selection easier, but more target types than necessary will result in greater performance costs.
### Detection of Targets
&nbsp;&nbsp;&nbsp;&nbsp;Hit Match registers two advancements pertaining to the detection of targets.
They are designed to behave as event listeners that can pick up on the IDs of essential targets in an event.
One advancement handles the event of a player hurting another entity, and the other handles an entity hurting a player.
When the event they are listening for happens, they invoke a function tag of the same name.

Function Tag:
- `hit_match:player_hurts_entity` is called when a player damages an entity.
- `hit_match:player_is_hurt_by_entity` is called when a player is damaged by an entity.

Like the `hit_match:targets` entity-type tag, the described function tags are intended to be overridden by a dependent data pack.
The functions that are appended to these tags are where it becomes easier to select the *acting targets* of a damage exchange.

The entities that produce a damage exchange are referred to as actors, and if a target is an actor, it is referred to as an acting target.
### Selection of Targets
&nbsp;&nbsp;&nbsp;&nbsp;In regards to the member functions of the aforementioned function tags, the player earning the advancement becomes the executor.
The execution position, rotation, and dimension also become that of the same player.
To understand the role of the player in each event, the following terminology is important.
<details>
<summary>Actors of a Damage Exchange</summary>

**Victim Entity** - The entity that was dealt the damage.  
**Direct Entity** - The entity that dealt the damage.  
**Source Entity** - The entity that did not deal but is responsible for the damage.
</details>

So in the event of a player hurting another entity, the player can become either the direct or source entity.
For example, if a player hurts a mob by punching it, they'll become the direct entity.
And if they hurt a mob by firing an arrow at it, they'll become the source entity; the arrow will become the direct entity instead.
In the other event of an entity hurting a player, the player can only ever be the victim entity.

Again, only actors that are targets, aka acting targets, become easier to select using Hit Match.
Here's how to select all acting targets of a damage exchange.
```mcfunction
# Victim Entity
execute as @e if score @s ehm.id = $victim ehm._ run say Victim Entity, selected by method 1.
execute as @e[predicate=hit_match:is_victim] run say Victim Entity, selected by method 2.
execute if score $victim ehm._ = $victim ehm._ as @e[predicate=hit_match:is_victim,limit=1] run say Victim Entity, selected efficiently.

# Direct Entity
execute as @e if score @s ehm.id = $direct ehm._ run say Direct Entity, selected by method 1.
execute as @e[predicate=hit_match:is_direct] run say Direct Entity, selected by method 2.
execute if score $direct ehm._ = $direct ehm._ as @e[predicate=hit_match:is_direct,limit=1] run say Direct Entity, selected efficiently.

# Source Entity, if present
execute as @e if score @s ehm.id = $direct ehm._ on origin run say Source Entity, selected by method 1.
execute as @e[predicate=hit_match:is_direct] on origin run say Source Entity, selected by method 2.
execute if score $direct ehm._ = $direct ehm._ as @e[predicate=hit_match:is_direct,limit=1] on origin run say Source Entity, selected efficiently.
```
The subcommand of `execute`, `on attacker` should still be used where it applies as it is extremely efficient.
Depending on the damage exchange, it can select either the direct or source entity, though only if they are considered a living entity.
## 🟧 Caveat of `/damage`
&nbsp;&nbsp;&nbsp;&nbsp;When the `/damage` command is used to exchange damage between a player and another entity, it invokes an unnecessary performance cost.
This is because the command can trigger the `player_hurt_entity` and `entity_hurt_player` advancement triggers, which fire expensive criteria checks within Hit Match.
It is highly recommended that Hit Match's detection be disabled while running `/damage`-related commands.
The following code sample demonstrates how to do this:
```mcfunction
function hit_match:_/detection/disable
damage PersonA 5 minecraft:generic by PersonB from PersonC
function hit_match:_/detection/enable
```
## 🟧 Credit
Thanks to [@nphhpn](https://github.com/nphhpn), who theorized the general concept and implementation.  
Thanks to [@CloudWolfYT](https://github.com/CloudWolfYT), who adapted the implementation to make intelligent use of command tags.
