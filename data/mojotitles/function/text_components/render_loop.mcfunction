execute unless data storage mojotitles:temp TextComponents[0] run return fail

data modify storage mojotitles:temp TextComponent set from storage mojotitles:temp TextComponents[0]
data remove storage mojotitles:temp TextComponents[0]

execute if data storage mojotitles:temp TextComponent{type:"mojotitles:banner_name"} \
    run function mojotitles:text_components/render_component/banner_name

data modify storage mojotitles:temp RenderedTextComponents append from storage mojotitles:temp TextComponent

function mojotitles:text_components/render_loop