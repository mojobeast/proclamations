data modify storage proclamations:temp DetectedInventoryContents set from entity @s \
     data.proclamations.container_inventory[{components:{"minecraft:container":[{}]}}].components."minecraft:container"

function proclamations:marker/inventory_detector/clear_text_components

function proclamations:marker/inventory_detector/loop_container_contents

function proclamations:title/show

tag @a[tag=proclamations.triggering_player] remove proclamations.triggering_player