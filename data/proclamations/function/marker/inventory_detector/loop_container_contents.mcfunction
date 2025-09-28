execute unless data storage proclamations:temp DetectedInventoryContents[0] run return fail

data modify storage proclamations:temp Item set from storage proclamations:temp DetectedInventoryContents[0]
data remove storage proclamations:temp DetectedInventoryContents[0]

# If item is in a stack, display the count of items in the stack
execute unless data storage proclamations:temp Item.item{count:1} \
    run function proclamations:marker/inventory_detector/add_count

# If item has custom name, add that custom name to the title
execute if data storage proclamations:temp Item.item.components."minecraft:custom_name" \
    run function proclamations:marker/inventory_detector/add_custom_name

# TODO in 1.21.9: if Item has a custom model texture, display the item

# If item is a player head, tag that player as a triggering player
execute if data storage proclamations:temp Item.item{id:"minecraft:player_head"} \
    run function proclamations:marker/inventory_detector/tag_player_head_owner \
        with storage proclamations:temp Item.item.components."minecraft:profile"

function proclamations:marker/inventory_detector/loop_container_contents