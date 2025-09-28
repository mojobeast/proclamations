execute unless data storage proclamations:temp Inventory[0] run return fail

data modify storage proclamations:temp InventoryItem set from storage proclamations:temp Inventory[0]
data remove storage proclamations:temp Inventory[0]

execute \
    unless data storage proclamations:temp InventoryItem{id:"minecraft:blue_banner"} \
    unless data storage proclamations:temp InventoryItem{id:"minecraft:green_banner"} \
    unless data storage proclamations:temp InventoryItem{id:"minecraft:black_banner"} \
    unless data storage proclamations:temp InventoryItem{id:"minecraft:blue_banner"} \
    unless data storage proclamations:temp InventoryItem{id:"minecraft:brown_banner"} \
    unless data storage proclamations:temp InventoryItem{id:"minecraft:cyan_banner"} \
    unless data storage proclamations:temp InventoryItem{id:"minecraft:gray_banner"} \
    unless data storage proclamations:temp InventoryItem{id:"minecraft:green_banner"} \
    unless data storage proclamations:temp InventoryItem{id:"minecraft:light_blue_banner"} \
    unless data storage proclamations:temp InventoryItem{id:"minecraft:light_gray_banner"} \
    unless data storage proclamations:temp InventoryItem{id:"minecraft:lime_banner"} \
    unless data storage proclamations:temp InventoryItem{id:"minecraft:magenta_banner"} \
    unless data storage proclamations:temp InventoryItem{id:"minecraft:orange_banner"} \
    unless data storage proclamations:temp InventoryItem{id:"minecraft:pink_banner"} \
    unless data storage proclamations:temp InventoryItem{id:"minecraft:purple_banner"} \
    unless data storage proclamations:temp InventoryItem{id:"minecraft:red_banner"} \
    unless data storage proclamations:temp InventoryItem{id:"minecraft:white_banner"} \
    unless data storage proclamations:temp InventoryItem{id:"minecraft:yellow_banner"} \
    run return run function proclamations:banner_modifier/inventory_loop

function proclamations:banner_modifier/make_item_enchantable with storage proclamations:temp InventoryItem

function proclamations:banner_modifier/inventory_loop