execute unless data storage proclamations:temp TextComponents[0] run return fail

data modify storage proclamations:temp TextComponent set from storage proclamations:temp TextComponents[0]
data remove storage proclamations:temp TextComponents[0]

execute if data storage proclamations:temp TextComponent{type:"proclamations:banner_name"} \
    run function proclamations:text_components/render_component/banner_name

execute if data storage proclamations:temp TextComponent{type:"proclamations:banner_lore"} \
    run function proclamations:text_components/render_component/banner_lore

execute if data storage proclamations:temp TextComponent{type:"proclamations:container_title_text_components"} \
    run function proclamations:text_components/render_component/container_text_components/title

execute if data storage proclamations:temp TextComponent{type:"proclamations:container_subtitle_text_components"} \
    run function proclamations:text_components/render_component/container_text_components/subtitle

execute if data storage proclamations:temp TextComponent{type:"proclamations:container_actionbar_text_components"} \
    run function proclamations:text_components/render_component/container_text_components/actionbar

function proclamations:text_components/render_loop