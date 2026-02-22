execute if data storage proclamations:temp ContainerActionbarTextComponents[0] \
    run data modify storage proclamations:temp ContainerActionbarTextComponents append value {"text": " "}

data modify storage proclamations:temp ContainerActionbarTextComponents \
    append from storage proclamations:temp NewTextComponent

execute unless score #text_component_count proclamations.temp matches 2.. run return 1

scoreboard players remove #text_component_count proclamations.temp 1

return run function proclamations:marker/inventory_detector/add_text_component_to_actionbar