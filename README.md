# Entity Hit Matching
This data pack namespace is intended to serve as a tool for other data packs.
The namespace provides a way to reliably detect the entity that hit or was hurt by a player.

### How to Use
To install it, simply add the namespace to the data folder of your data pack.
Edit the player_hits_target and player_is_hurt_by_target functions in the action folder to your liking.
The execution position and context of these functions is already set to the player.
The entity the player interacted with can be referenced with the tag picarrow.ehm.target.
It is recommended that you change the targets entity tag to include only the entities you wish to work with.
By default, the targets entity tag includes zombies, husks, and drowneds.

### Credit
Thanks to nphhpn, who came up with with the general concept/implementation and added functionality for detecting what entity is hurt by a player.
Thanks to CloudWolf, who extended the functionality of the data pack to detect what entity hit a player.
