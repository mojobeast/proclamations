$execute store success score #title_text_changed proclamations.temp \
    run data modify entity @s data.proclamations.container_inventory \
        set from block $(x) $(y) $(z) Items

execute if score #title_text_changed proclamations.temp matches 0 run return fail

execute unless data entity @s data.proclamations.container_inventory[{components:{"minecraft:container":[{}]}}] run return fail

data modify storage proclamations:temp DetectedInventoryContents set from entity @s \
     data.proclamations.container_inventory[{components:{"minecraft:container":[{}]}}].components."minecraft:container"

data modify storage proclamations:temp ContainerTitleTextComponents set value []
data modify storage proclamations:temp ContainerSubtitleTextComponents set value []
data modify storage proclamations:temp ContainerActionbarTextComponents set value []

function proclamations:marker/inventory_detector/loop_container_contents

function proclamations:title/show

tag @a[tag=proclamations.triggering_player] remove proclamations.triggering_player