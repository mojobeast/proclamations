$execute store success score #title_text_changed mojotitles.temp \
    run data modify entity @s data.mojotitles.container_inventory \
        set from block $(x) $(y) $(z) Items

execute if score #title_text_changed mojotitles.temp matches 0 run return fail

execute unless data entity @s data.mojotitles.container_inventory[{components:{"minecraft:container":[{}]}}] run return fail

data modify storage mojotitles:temp DetectedInventoryContents set from entity @s \
     data.mojotitles.container_inventory[{components:{"minecraft:container":[{}]}}].components."minecraft:container"

data modify storage mojotitles:temp ContainerTitleTextComponents set value []
data modify storage mojotitles:temp ContainerSubtitleTextComponents set value []
data modify storage mojotitles:temp ContainerActionbarTextComponents set value []

function mojotitles:marker/inventory_detector/loop_container_contents

function mojotitles:title/show

tag @a[tag=mojotitles.triggering_player] remove mojotitles.triggering_player