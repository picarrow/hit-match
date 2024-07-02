## AUTHOR : Picarrow

# Initialize the namespace
execute unless data storage hit_match:data root{loaded:1b} run function hit_match:load/_1

# Reset IDs to respect any changes to the 'targets' entity-type tag
function hit_match:_id/reset_all/_
