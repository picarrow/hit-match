## AUTHOR : Picarrow

# Initialize the namespace
execute unless data storage hit_match:data root{loaded:1b} run function hit_match:load_initial

# Reset IDs to respect any changes to the 'targets' entity-type tag
function hit_match:id/reset_all
