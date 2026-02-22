$execute store success score #title_text_changed proclamations.temp \
    run data modify entity @s data.proclamations.container_inventory \
        set from block $(x) $(y) $(z) Items

execute if score #title_text_changed proclamations.temp matches 0 run return fail

execute \
    unless data entity @s data.proclamations.container_inventory[{components:{"minecraft:container":[{}]}}] \
    unless data entity @s data.proclamations.container_inventory[{id:"minecraft:player_head"}] \
    run return 1

return run function proclamations:marker/inventory_detector/detected_inventory_change