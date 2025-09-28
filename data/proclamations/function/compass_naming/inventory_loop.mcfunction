execute unless data storage mojotitles:temp Inventory[0] run return fail

data modify storage mojotitles:temp InventoryItem set from storage mojotitles:temp Inventory[0]
data remove storage mojotitles:temp Inventory[0]

$execute if data storage mojotitles:temp \
    InventoryItem.components."minecraft:lodestone_tracker".target{pos: [I; $(x), $(y), $(z)]} \
    run function mojotitles:compass_naming/name_compass with storage mojotitles:temp InventoryItem

function mojotitles:compass_naming/inventory_loop with entity @s data.mojotitles.attached_block