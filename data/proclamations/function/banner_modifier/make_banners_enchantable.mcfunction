# TODO: Schedule a function that makes the banners unenchantable again after a short while so they still stack
#       Check every second if the player is looking at an enchanting table by using a raycast
#       - when they are not, modify the banners

advancement revoke @s only proclamations:interacted_with_enchanting_table

data modify storage proclamations:temp Inventory set from entity @s Inventory

function proclamations:banner_modifier/inventory_loop