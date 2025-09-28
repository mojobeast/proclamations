execute unless data storage proclamations:temp Triggers[0] run return fail

data modify storage proclamations:temp Trigger set from storage proclamations:temp Triggers[0]
data remove storage proclamations:temp Triggers[0]

execute if data storage proclamations:temp Trigger{type:"proclamations:player_enters_range"} \
    run function proclamations:marker/player_detector/init

execute if data storage proclamations:temp Trigger{type:"proclamations:shulker_enters_inventory"} \
    run function proclamations:marker/inventory_detector/init

execute if data storage proclamations:temp Trigger{type:"proclamations:block_state_detected"} \
    run function proclamations:marker/block_state_detector/init

function proclamations:marker/init_loop