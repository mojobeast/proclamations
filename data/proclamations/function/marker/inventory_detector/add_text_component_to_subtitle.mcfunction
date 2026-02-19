execute unless score #sprite_count proclamations.temp matches 1.. run return 1

execute if data storage proclamations:temp ContainerSubtitleTextComponents[0] \
    run data modify storage proclamations:temp ContainerSubtitleTextComponents append value {"text": " "}

data modify storage proclamations:temp ContainerSubtitleTextComponents \
    append from storage proclamations:temp NewTextComponent

scoreboard players remove #sprite_count proclamations.temp 1

return run function proclamations:marker/inventory_detector/add_text_component_to_subtitle