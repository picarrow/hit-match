# Hit Match v1.8.0
## 🟧 About
&nbsp;&nbsp;&nbsp;&nbsp;Hit Match is a Minecraft data pack library that facilitates the selection of entities that have exchanged damage with players.
For example, it can make poisoning a mob a player hurt trivial, where often selecting the correct mob to poison is difficult.
It can even trivialize the application of an arrow's custom effects to a pierced mob.
As Hit Match is built on the advancement system, and advancements are inherent to only players, it cannot process damage exchanges that do not involve a player.
That includes situations where a mob hurts another mob.
## 🟧 Installation
***It is recommended that a stable version from [Releases](https://github.com/picarrow/hit-match/releases) is installed.***

&nbsp;&nbsp;&nbsp;&nbsp;For the more recent releases, the Hit Match data pack should be placed beside the data packs that use it.
That entails dragging the entire pack (the ZIP) into the `datapacks` folder of a world.
Hit Match is a discreet data pack and makes no discernable impact on a world unless other packs leverage it to do so.

&nbsp;&nbsp;&nbsp;&nbsp;GU, a UUID converter, is required for Hit Match to function.
Be sure to install the relevant version of that, which can be found at the repo https://github.com/gibbsly/gu.
## 🟧 How To Use
***Tampering with the files of Hit Match in any way that is not described in the following section can jeopardize compatibility between packs.***

&nbsp;&nbsp;&nbsp;&nbsp;Hit Match contains one entity-type tag and three function tags that may be overridden.
For a data pack to override these tags, it must create these function tags within itself, keeping the namespace as `hit_match`.
In the overrides for these tags, it is crucial that the JSON key `replace` is set to `false`.
This ensures that the members of these overrides are appended beside, rather than replacing, existing members that have been added by other packs.
### Targets
&nbsp;&nbsp;&nbsp;&nbsp;One of the tags intended to be overridden is the entity-type tag `hit_match:targets`.
The entity types included in this tag are used to ID entities into a scoreboard ID system.
ID'd entities are referred to as *targets*.
Targets benefit from the tools in Hit Match that can make selection easier, but adding more entity types in `hit_match:targets` than necessary will result in greater performance costs.
### Detection of Targets
&nbsp;&nbsp;&nbsp;&nbsp;Hit Match registers three advancements pertaining to the detection of targets.
They are designed to behave as event listeners that can pick up on the IDs of essential targets in an event.
One advancement handles the event of a player hurting another entity, another handles an entity hurting a player, and the last handles a player interacting with another entity.
When the event they are listening for happens, they invoke a function tag of a similar name.

Function Tag:
- `hit_match:player_hurts_entity` is called when a player hurts an entity.
- `hit_match:player_is_hurt_by_entity` is called when a player is hurt by an entity.
- `hit_match:player_interacts_with_entity` is called when a player interacts with an entity.

&nbsp;&nbsp;&nbsp;&nbsp;Like the `hit_match:targets` entity-type tag, the described function tags are intended to be overridden by a dependent data pack.
The functions that are appended to these tags are where it can become easier to select any target entity that is involved.
The target entities that are involved in an event are referred to as actors.
### Selection of Targets
&nbsp;&nbsp;&nbsp;&nbsp;In regards to the member functions of the aforementioned function tags, the player earning the advancement becomes the executor.
The execution position, rotation, and dimension also become that of the same player.
To understand the role of the player in each event, the following terminology is important.

Actors of a Hit Event:
- **Victim Entity** - The entity that was dealt the damage or was interacted with.
- **Direct Entity** - The entity that dealt the damage.
- **Source Entity** - The entity that is responsible for the damage or initiated the interaction.

&nbsp;&nbsp;&nbsp;&nbsp;So in the event of a player hurting another entity, the player can become either the direct or source entity.
For example, if a player hurts a mob by punching it, they'll become the direct entity and source entity.
And if they hurt a mob by firing an arrow at it, they'll become only the source entity; the arrow will become the direct entity instead.
In the other event of an entity hurting a player, the player can only ever be the victim entity.

Hit Match makes it trivial to select the victim entity, direct entity, and source entity if they are targets.
Here's how to select them.
```mcfunction
# Victim Entity
execute as @e if score @s ehm.id = $victim ehm._ run say Victim Entity, selected by method 1.
execute as @e[predicate=hit_match:is_victim] run say Victim Entity, selected by method 2.
execute if score $victim ehm._ = $victim ehm._ as @e[predicate=hit_match:is_victim,limit=1] run say Victim Entity, selected efficiently.

# Direct Entity
execute as @e if score @s ehm.id = $direct ehm._ run say Direct Entity, selected by method 1.
execute as @e[predicate=hit_match:is_direct] run say Direct Entity, selected by method 2.
execute if score $direct ehm._ = $direct ehm._ as @e[predicate=hit_match:is_direct,limit=1] run say Direct Entity, selected efficiently.

# Source Entity
execute as @e if score @s ehm.id = $source ehm._ run say Source Entity, selected by method 1.
execute as @e[predicate=hit_match:is_source] run say Source Entity, selected by method 2.
execute if score $source ehm._ = $source ehm._ as @e[predicate=hit_match:is_source,limit=1] run say Source Entity, selected efficiently.
```
### 🟧 Respond to Death of a Target
&nbsp;&nbsp;&nbsp;&nbsp;An advanced feature is implemented that enables the UUIDs of any actor of a hit event to be queried and its alive status to be determined.
To do this, there are three functions for each actor: `hit_match:_pulse/victim/_`, `hit_match:_pulse/direct/_`, `hit_match:_pulse/source/_`.
Executing one of these functions will fetch and cache the UUID of the respective actor into its respective storage location: `hit_match:_pulse/victim/_` will cache its UUID to the storage location `hit_match:data _.glob.uuid_of_victim`.
In addition, a score is set on each call to one of these pulse functions that can be used to determine if the respective actor is alive or not.
The score that gets set belongs to the score holder `$victim_life_cache` and the scoreboard objective `ehm._`.
```mcfunction
# Retrieves and caches the UUID of the victim entity on first call.
# Subsequent calls would not incur the cost of retrieving the UUID again and would just evaluate the alive status of the entity.
function hit_match:_pulse/victim/_
execute if score $victim_life_cache ehm._ matches 1 run say Victim is alive.

# Elegant way to detect if the victim is dead and call a function if so.
# With the ability to macro in the UUID of the dead entity to that function.
execute unless function hit_match:_pulse/victim/_ run function my_namespace:foo with storage hit_match:data _.glob
```
## 🟧 Caveat of `/damage`
&nbsp;&nbsp;&nbsp;&nbsp;When the `/damage` command is used to exchange damage between a player and another entity, it invokes an unnecessary performance cost.
This is because the command can trigger the `player_hurt_entity` and `entity_hurt_player` advancement triggers, which fire expensive criteria checks within Hit Match.
It is highly recommended that Hit Match's detection be disabled while running `/damage`-related commands.
The following code sample demonstrates how to do this:
```mcfunction
function hit_match:_/detection/disable/_
damage PersonA 5 minecraft:generic by PersonB from PersonC
function hit_match:_/detection/enable/_
```
## 🟧 Credit To
[@nphhpn](https://github.com/nphhpn) - who theorized the general concept and implementation.  
[@CloudWolfYT](https://github.com/CloudWolfYT) - who adapted the implementation to make intelligent use of entity tags.  
[@XanBelOr](https://github.com/XanBelOr) - thought about integrating death detection into Hit Match-like data packs.  
[@gibbsly](https://github.com//gibbsly) - developed the UUID-converter dependency, GU.
