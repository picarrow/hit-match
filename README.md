# Entity Hit Matching v1.1.0
This data pack namespace is intended to serve as a tool for other data packs.
It provides a reliable way to detect entities that exchange damage with players.

## How to Use
1. To install it, simply add the namespace to the data folder of your data pack.
2. Edit the entity type tag "targets" to only include the entities you wish to detect.
    * More entities than necessary will result in greater performance costs.
3. Edit the function tags to include the external functions you wish to execute.
    * "player_hurts_target" for when a player damages a target entity
    * "target_hurts_player" for when a target entity damages a player
### Note
* External functions are executed in relation to the entity receiving damage.
    * The executor is that entity.
    * The execution position, rotation, and dimension are that of that entity.
* Assuming the execution context wasn't changed, the entity dealing the damage can be obtained using the `on attacker` subcommand of `execute`.

## Credit
Thanks to [@nphhpn](https://github.com/nphhpn), who theorized the general concept and implementation.

Thanks to [@CloudWolfYT](https://github.com/CloudWolfYT), who adapted the implementation to work with command tags.
