data modify storage proclamations:temp DetectedInventoryContents set value [{}]

data modify storage proclamations:temp DetectedInventoryContents[0].item \
    set from storage proclamations:temp InventoryItem

function proclamations:marker/inventory_detector/loop_container_contents

data modify storage proclamations:temp TextComponent set from entity @s data.proclamations.title_text_components[0]
execute if data storage proclamations:temp ContainerTitleTextComponents[0] \
    run data modify storage proclamations:temp ContainerTitleTextComponents append value {text: " "}
execute at @s run function proclamations:text_components/render_component/banner_name
data modify storage proclamations:temp ContainerTitleTextComponents append from storage proclamations:temp RenderedTextComponent

data modify storage proclamations:temp TextComponent set from entity @s data.proclamations.subtitle_text_components[0]
execute if data storage proclamations:temp ContainerSubtitleTextComponents[0] \
    run data modify storage proclamations:temp ContainerSubtitleTextComponents append value {text: " "}
execute at @s run function proclamations:text_components/render_component/banner_lore
execute unless data storage proclamations:temp RenderedTextComponent{text: ""} \
    run data modify storage proclamations:temp ContainerSubtitleTextComponents append from storage proclamations:temp RenderedTextComponent