# Entity Hit Matching v1.0.0
This data pack namespace is intended to serve as a tool for other data packs.
It provides a way to reliably detect the entity that hit or was hurt by a player.

### How to Use
1. To install it, simply add the namespace to the data folder of your data pack.
2. Edit the entity types tag "targets" to only include the entities you wish to detect.
Adding more entities than necessary will result in performance costs.
Entities specified in this tag are referred to as target entities.
3. The namespace fires off two events that functions can be associated to:
    * The event "target_hits_player" occurs when a target entity hits a player
    * The event "target_is_hurt_by_player" occurs when a target entity is hurt by a player
4. Add the functions you wish for an event to trigger to the event's associated function tag.
The executor of the functions ran by these function tags is always set to the target entity.
The execution position, rotation, and dimension are always set to that of the player.
The player that interacted with the target entity is also tagged with the entity tag "ehm.player".
This entity tag is helpful in locating the exact player that is associated with the event.
5. Be very careful not to associate a function containing an infinite loop.

### Credit
Thanks to nphhpn, who:
* theorized the general concept and implementation
* added functionality that reliably detects what entity was hurt by a player

Thanks to CloudWolf, who:
* adapted the implementation to work for the entity_hurt_player advancement trigger
* added functionality that reliably detects what entity hit a player
