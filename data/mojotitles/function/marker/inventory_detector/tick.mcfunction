$execute unless data block $(x) $(y) $(z) Items[{components:{"minecraft:container":[{}]}}] run return fail

$data modify storage mojotitles:temp DetectedInventoryContents set from block $(x) $(y) $(z) \
     Items[{components:{"minecraft:container":[{}]}}].components."minecraft:container"

function mojotitles:marker/inventory_detector/loop_container_contents