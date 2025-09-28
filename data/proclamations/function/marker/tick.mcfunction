# kill marker if banner was broken
execute at @s unless block ~ ~ ~ #minecraft:banners run return run function proclamations:marker/kill

tag @s add proclamations.active_marker

execute as @s[tag=proclamations.player_detector] run function proclamations:marker/player_detector/tick \
    with entity @s data.proclamations.triggers[{type:"proclamations:player_enters_range"}]

execute as @s[tag=proclamations.inventory_detector] run function proclamations:marker/inventory_detector/tick \
    with entity @s data.proclamations.attached_block

execute as @s[tag=proclamations.block_state_detector] run function proclamations:marker/block_state_detector/tick \
    with entity @s data.proclamations.attached_block

tag @s remove proclamations.active_marker