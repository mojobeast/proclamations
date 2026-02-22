data modify storage proclamations:temp LoopInventoryContents set from entity @s \
     data.proclamations.container_inventory

function proclamations:marker/inventory_detector/clear_text_components

function proclamations:marker/inventory_detector/loop_inventory_contents

function proclamations:title/show

tag @a[tag=proclamations.triggering_player] remove proclamations.triggering_player