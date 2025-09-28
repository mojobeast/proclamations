advancement revoke @s only proclamations:used_compass_on_lodestone

tag @s add proclamations.player_used_compass

execute as @e[type=minecraft:marker,tag=proclamations.banner,distance=..8] \
    if data entity @s data.proclamations.attached_block{type:"minecraft:lodestone"} \
    run function proclamations:compass_naming/lodestone_location

tag @s remove proclamations.player_used_compass