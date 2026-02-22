execute unless data storage proclamations:temp LoopInventoryContents[0] run return fail

data modify storage proclamations:temp InventoryItem set from storage proclamations:temp LoopInventoryContents[0]
data remove storage proclamations:temp LoopInventoryContents[0]

# If item is a container, process its contents
execute if data storage proclamations:temp InventoryItem.components."minecraft:container" \
    run function proclamations:marker/inventory_detector/detected_shulker

# If item is a player head, tag that player as a triggering player
execute if data storage proclamations:temp InventoryItem{id:"minecraft:player_head"} \
    run function proclamations:marker/inventory_detector/detected_player_head

function proclamations:marker/inventory_detector/loop_inventory_contents