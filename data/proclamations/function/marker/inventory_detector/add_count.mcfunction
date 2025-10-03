data modify storage proclamations:temp NewTextComponent set value {}

data modify storage proclamations:temp stringify.input \
  set from storage proclamations:temp Item.item.count

function proclamations:utils/stringify with storage proclamations:temp stringify

data modify storage proclamations:temp NewTextComponent.text \
    set from storage proclamations:temp stringified

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