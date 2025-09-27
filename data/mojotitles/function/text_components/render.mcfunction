data modify storage mojotitles:temp RenderedTextComponents set value []

execute as @e[type=minecraft:marker,tag=mojotitles.active_marker,limit=1] \
    at @s \
    run function mojotitles:text_components/render_loop