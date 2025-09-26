execute unless data storage mojotitles:temp DetectedInventoryContents[0] run return fail

data modify storage mojotitles:temp Item set from storage mojotitles:temp DetectedInventoryContents[0]
data remove storage mojotitles:temp DetectedInventoryContents[0]

# TODO: Process mojotitles:temp Item

function mojotitles:marker/inventory_detector/loop_container_contents