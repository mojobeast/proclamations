data modify storage mojotitles:temp NewTextComponent set value {}

data modify storage mojotitles:temp stringify.input \
  set from storage mojotitles:temp Item.item.count

function mojotitles:utils/stringify with storage mojotitles:temp stringify

data modify storage mojotitles:temp NewTextComponent.text \
    set from storage mojotitles:temp stringified

# If item is wool, use it as a title component, with its color as the default color
execute if function mojotitles:marker/inventory_detector/is_wool \
    run return \
    run data modify storage mojotitles:temp ContainerTitleTextComponents \
        append from storage mojotitles:temp NewTextComponent
        
# If item is carpet, use it as a subtitle component, with its color as the default color
execute if function mojotitles:marker/inventory_detector/is_carpet \
    run return \
    run data modify storage mojotitles:temp ContainerSubtitleTextComponents \
        append from storage mojotitles:temp NewTextComponent

# If item is banner, use it as an actionbar component, with its color as the default color
execute if function mojotitles:marker/inventory_detector/is_banner \
    run return \
    run data modify storage mojotitles:temp ContainerActionbarTextComponents \
        append from storage mojotitles:temp NewTextComponent

# Otherwise, use the item as a title component
data modify storage mojotitles:temp ContainerTitleTextComponents \
    append from storage mojotitles:temp NewTextComponent

data remove storage mojotitles:temp NewTextComponent