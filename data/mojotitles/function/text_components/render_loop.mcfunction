execute unless data storage mojotitles:temp TextComponents[0] run return fail

data modify storage mojotitles:temp TextComponent set from storage mojotitles:temp TextComponents[0]
data remove storage mojotitles:temp TextComponents[0]

execute if data storage mojotitles:temp TextComponent{type:"mojotitles:banner_name"} \
    run function mojotitles:text_components/render_component/banner_name

execute if data storage mojotitles:temp TextComponent{type:"mojotitles:banner_lore"} \
    run function mojotitles:text_components/render_component/banner_lore

execute if data storage mojotitles:temp TextComponent{type:"mojotitles:container_title_text_components"} \
    run function mojotitles:text_components/render_component/container_text_components/title

execute if data storage mojotitles:temp TextComponent{type:"mojotitles:container_subtitle_text_components"} \
    run function mojotitles:text_components/render_component/container_text_components/subtitle

execute if data storage mojotitles:temp TextComponent{type:"mojotitles:container_actionbar_text_components"} \
    run function mojotitles:text_components/render_component/container_text_components/actionbar

function mojotitles:text_components/render_loop