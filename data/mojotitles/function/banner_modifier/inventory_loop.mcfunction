execute unless data storage mojotitles:temp Inventory[0] run return fail

data modify storage mojotitles:temp InventoryItem set from storage mojotitles:temp Inventory[0]
data remove storage mojotitles:temp Inventory[0]

execute \
    unless data storage mojotitles:temp InventoryItem{id:"minecraft:blue_banner"} \
    unless data storage mojotitles:temp InventoryItem{id:"minecraft:green_banner"} \
    unless data storage mojotitles:temp InventoryItem{id:"minecraft:black_banner"} \
    unless data storage mojotitles:temp InventoryItem{id:"minecraft:blue_banner"} \
    unless data storage mojotitles:temp InventoryItem{id:"minecraft:brown_banner"} \
    unless data storage mojotitles:temp InventoryItem{id:"minecraft:cyan_banner"} \
    unless data storage mojotitles:temp InventoryItem{id:"minecraft:gray_banner"} \
    unless data storage mojotitles:temp InventoryItem{id:"minecraft:green_banner"} \
    unless data storage mojotitles:temp InventoryItem{id:"minecraft:light_blue_banner"} \
    unless data storage mojotitles:temp InventoryItem{id:"minecraft:light_gray_banner"} \
    unless data storage mojotitles:temp InventoryItem{id:"minecraft:lime_banner"} \
    unless data storage mojotitles:temp InventoryItem{id:"minecraft:magenta_banner"} \
    unless data storage mojotitles:temp InventoryItem{id:"minecraft:orange_banner"} \
    unless data storage mojotitles:temp InventoryItem{id:"minecraft:pink_banner"} \
    unless data storage mojotitles:temp InventoryItem{id:"minecraft:purple_banner"} \
    unless data storage mojotitles:temp InventoryItem{id:"minecraft:red_banner"} \
    unless data storage mojotitles:temp InventoryItem{id:"minecraft:white_banner"} \
    unless data storage mojotitles:temp InventoryItem{id:"minecraft:yellow_banner"} \
    run return run function mojotitles:banner_modifier/inventory_loop

function mojotitles:banner_modifier/make_item_enchantable with storage mojotitles:temp InventoryItem

function mojotitles:banner_modifier/inventory_loop