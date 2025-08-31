data modify storage mojotitles:temp TextComponent.type set value "text"

data modify storage mojotitles:temp TextComponent.text set value ""

execute as @e[tag=mojotitles.active_marker,limit=1] at @s \
    run data modify storage mojotitles:temp TextComponent.text set from block ~ ~ ~ CustomName