data modify storage proclamations:temp NewTextComponent set value {}

data modify storage proclamations:temp stringify.input \
  set from storage proclamations:temp Item.item.count

function proclamations:utils/stringify with storage proclamations:temp stringify

data modify storage proclamations:temp NewTextComponent.text \
    set from storage proclamations:temp stringified

# If item is wool, use it as a title component, with its color as the default color
execute if function proclamations:marker/inventory_detector/is_wool \
    run return \
    run data modify storage proclamations:temp ContainerTitleTextComponents \
        append from storage proclamations:temp NewTextComponent
        
# If item is carpet, use it as a subtitle component, with its color as the default color
execute if function proclamations:marker/inventory_detector/is_carpet \
    run return \
    run data modify storage proclamations:temp ContainerSubtitleTextComponents \
        append from storage proclamations:temp NewTextComponent

# If item is banner, use it as an actionbar component, with its color as the default color
execute if function proclamations:marker/inventory_detector/is_banner \
    run return \
    run data modify storage proclamations:temp ContainerActionbarTextComponents \
        append from storage proclamations:temp NewTextComponent

# Otherwise, use the item as a title component
data modify storage proclamations:temp ContainerTitleTextComponents \
    append from storage proclamations:temp NewTextComponent

data remove storage proclamations:temp NewTextComponent