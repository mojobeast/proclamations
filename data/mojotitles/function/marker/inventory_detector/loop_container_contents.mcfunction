execute unless data storage mojotitles:temp DetectedInventoryContents[0] run return fail

data modify storage mojotitles:temp Item set from storage mojotitles:temp DetectedInventoryContents[0]
data remove storage mojotitles:temp DetectedInventoryContents[0]

# AND if Item is in a stack: display the count of items the stack (if item was displayed, also add "x" e.g. "x10")
execute unless data storage mojotitles:temp Item.item{count:1} \
    run function mojotitles:marker/inventory_detector/add_count

# If Item has custom name: add name to the title
execute if data storage mojotitles:temp Item.item.components."minecraft:custom_name" \
    run function mojotitles:marker/inventory_detector/add_custom_name

# AND if Item has a custom model texture: display the item

function mojotitles:marker/inventory_detector/loop_container_contents