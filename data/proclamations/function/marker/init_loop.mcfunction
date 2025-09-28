execute unless data storage mojotitles:temp Triggers[0] run return fail

data modify storage mojotitles:temp Trigger set from storage mojotitles:temp Triggers[0]
data remove storage mojotitles:temp Triggers[0]

execute if data storage mojotitles:temp Trigger{type:"mojotitles:player_enters_range"} \
    run function mojotitles:marker/player_detector/init

execute if data storage mojotitles:temp Trigger{type:"mojotitles:shulker_enters_inventory"} \
    run function mojotitles:marker/inventory_detector/init

function mojotitles:marker/init_loop