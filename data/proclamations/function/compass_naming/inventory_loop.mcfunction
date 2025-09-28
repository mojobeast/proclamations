execute unless data storage proclamations:temp Inventory[0] run return fail

data modify storage proclamations:temp InventoryItem set from storage proclamations:temp Inventory[0]
data remove storage proclamations:temp Inventory[0]

$execute if data storage proclamations:temp \
    InventoryItem.components."minecraft:lodestone_tracker".target{pos: [I; $(x), $(y), $(z)]} \
    run function proclamations:compass_naming/name_compass with storage proclamations:temp InventoryItem

function proclamations:compass_naming/inventory_loop with entity @s data.proclamations.attached_block