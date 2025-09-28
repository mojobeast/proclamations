tag @s add proclamations.player_checking_target

execute \
    at @s \
    as @e[type=minecraft:interaction,tag=proclamations.banner,distance=..10] \
    if function proclamations:ui/check_target \
    run data remove entity @s interaction

tag @s remove proclamations.player_checking_target