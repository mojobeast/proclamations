tag @s add proclamations.player_checking_target

execute at @s as @e[type=minecraft:interaction,tag=proclamations.banner,distance=..10] \
    if function proclamations:ui/check_target \
    on passengers \
    as @s[type=minecraft:marker,tag=proclamations.banner] \
    run data modify storage proclamations:temp current_marker_data set from entity @s data.proclamations

tag @s remove proclamations.player_checking_target
