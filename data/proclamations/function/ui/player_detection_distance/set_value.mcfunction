tag @s add proclamations.player_checking_target

execute \
    at @s \
    as @e[type=minecraft:interaction,tag=proclamations.banner,distance=..10] \
    if function proclamations:ui/check_target \
    on passengers \
    as @s[type=minecraft:marker,tag=proclamations.banner] \
    store result entity @s data.proclamations.triggers[0].distance int 1 \
    run scoreboard players get @a[tag=proclamations.player_checking_target,limit=1] proclamations.ui.player_detection_distance

tag @s remove proclamations.player_checking_target

scoreboard players reset @a proclamations.ui.player_detection_distance

function proclamations:ui/main/show_dialog