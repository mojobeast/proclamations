data modify storage proclamations:temp RenderedTextComponents set value []

execute as @e[type=minecraft:marker,tag=proclamations.active_marker,limit=1] \
    at @s \
    run function proclamations:text_components/render_loop