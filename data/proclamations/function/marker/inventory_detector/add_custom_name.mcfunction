data modify storage proclamations:temp NewTextComponent set value {}

execute if function proclamations:marker/inventory_detector/is_painting \
    run return run function proclamations:marker/inventory_detector/add_text_component_to_title

execute if function proclamations:marker/inventory_detector/is_item_frame \
    run return run function proclamations:marker/inventory_detector/add_text_component_to_subtitle

execute if function proclamations:marker/inventory_detector/is_glow_item_frame \
    run return run function proclamations:marker/inventory_detector/add_text_component_to_actionbar

# try: assume component is compound NBT text component, merge all keys
execute store result score #success_count proclamations.temp \
    run data modify storage proclamations:temp NewTextComponent \
        merge from storage proclamations:temp Item.item.components."minecraft:custom_name"

# catch: on failure, assume component is simple string
execute if score #success_count proclamations.temp matches 0 \
    run data modify storage proclamations:temp NewTextComponent.text \
        set from storage proclamations:temp Item.item.components."minecraft:custom_name"

# If item is wool, use it as a title component, with its color as the default color
execute if function proclamations:marker/inventory_detector/is_wool \
    run return run function proclamations:marker/inventory_detector/add_text_component_to_title

# If item is carpet, use it as a subtitle component, with its color as the default color
execute if function proclamations:marker/inventory_detector/is_carpet \
    run return run function proclamations:marker/inventory_detector/add_text_component_to_subtitle

# If item is banner, use it as an actionbar component, with its color as the default color
execute if function proclamations:marker/inventory_detector/is_banner \
    run return run function proclamations:marker/inventory_detector/add_text_component_to_actionbar

function proclamations:marker/inventory_detector/add_text_component_to_title

data remove storage proclamations:temp NewTextComponent