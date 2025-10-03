$execute store success score #title_text_changed proclamations.temp \
    run data modify entity @s data.proclamations.container_inventory \
        set from block $(x) $(y) $(z) Items

execute if score #title_text_changed proclamations.temp matches 0 run return fail

execute if data entity @s data.proclamations.container_inventory[{components:{"minecraft:container":[{}]}}] \
    run return run function proclamations:marker/inventory_detector/detected_shulker

execute if data entity @s data.proclamations.container_inventory[{id:"minecraft:player_head"}] \
    run return run function proclamations:marker/inventory_detector/detected_player_head