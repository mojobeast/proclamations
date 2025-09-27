execute unless data storage mojotitles:temp TextComponents[0] run return fail

data modify storage mojotitles:temp TextComponent set from storage mojotitles:temp TextComponents[0]
data remove storage mojotitles:temp TextComponents[0]

data modify storage mojotitles:temp RenderedTextComponent set value {"text": ""}

execute if data storage mojotitles:temp TextComponent{type:"mojotitles:banner_name"} \
    as @e[type=minecraft:marker,tag=mojotitles.active_marker,limit=1] \
    at @s \
    run function mojotitles:text_components/render_component/banner_name

execute if data storage mojotitles:temp TextComponent{type:"mojotitles:banner_lore"} \
    as @e[type=minecraft:marker,tag=mojotitles.active_marker,limit=1] \
    at @s \
    run function mojotitles:text_components/render_component/banner_lore

execute if data storage mojotitles:temp TextComponent{type:"mojotitles:shulker_contents"} \
    as @e[type=minecraft:marker,tag=mojotitles.active_marker,limit=1] \
    at @s \
    run function mojotitles:text_components/render_component/shulker_contents

execute unless data storage mojotitles:temp RenderedTextComponent.color \
    run data modify storage mojotitles:temp RenderedTextComponent.color \
        set from storage mojotitles:temp RenderedTextComponent.default_color

data remove storage mojotitles:temp RenderedTextComponent.default_color

data modify storage mojotitles:temp RenderedTextComponents append from storage mojotitles:temp RenderedTextComponent

function mojotitles:text_components/render_loop