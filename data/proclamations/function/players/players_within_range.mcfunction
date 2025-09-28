$execute at @e[type=minecraft:marker,tag=proclamations.active_marker] \
    run tag @a[distance=..$(distance)] add proclamations.players.sees_title