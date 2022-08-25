# Entity Hit Matching
This data pack namespace is intended to serve as a tool for other data packs.
The namespace provides a way to reliably detect the entity that hit or was hurt by a player.

### How to Use
To install it, simply add the namespace to the data folder of your data pack.
Edit the target_hits_player and target_is_hurt_by_player functions in the action folder to your liking.
The execution position and context of these functions is already set to the target entity.
The player that interacted with the target entity can be located with the tag picarrow.ehm.player.
As it affects performance, it is recommended that you change the targets entity tag to include only the entities you wish to work with.
By default, the targets entity tag includes zombies, husks, and drowneds.

### Credit
Thanks to nphhpn, who came up with with the general concept/implementation and added functionality for detecting what entity is hurt by a player.
Thanks to CloudWolf, who extended the functionality of the data pack to detect what entity hit a player.
