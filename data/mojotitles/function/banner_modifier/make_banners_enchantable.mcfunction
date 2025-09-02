# TODO: Schedule a function that makes the banners unenchantable again after a short while so they still stack

advancement revoke @s only mojotitles:interacted_with_enchanting_table

data modify storage mojotitles:temp Inventory set from entity @s Inventory

function mojotitles:banner_modifier/inventory_loop