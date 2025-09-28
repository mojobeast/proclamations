execute unless data storage mojotitles:temp DetectedInventoryContents[0] run return fail

data modify storage mojotitles:temp Item set from storage mojotitles:temp DetectedInventoryContents[0]
data remove storage mojotitles:temp DetectedInventoryContents[0]

# If item is in a stack, display the count of items in the stack
execute unless data storage mojotitles:temp Item.item{count:1} \
    run function mojotitles:marker/inventory_detector/add_count

# If item has custom name, add that custom name to the title
execute if data storage mojotitles:temp Item.item.components."minecraft:custom_name" \
    run function mojotitles:marker/inventory_detector/add_custom_name

# TODO in 1.21.9: if Item has a custom model texture, display the item

# If item is a player head, tag that player as a triggering player
execute if data storage mojotitles:temp Item.item{id:"minecraft:player_head"} \
    run function mojotitles:marker/inventory_detector/tag_player_head_owner \
        with storage mojotitles:temp Item.item.components."minecraft:profile"

function mojotitles:marker/inventory_detector/loop_container_contents