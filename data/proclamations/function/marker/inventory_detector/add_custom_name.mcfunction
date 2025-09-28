data modify storage mojotitles:temp NewTextComponent set value {"text": ""}

# try: assume component is compound NBT text component, merge all keys
execute store result score #success_count mojotitles.temp \
    run data modify storage mojotitles:temp NewTextComponent \
        merge from storage mojotitles:temp Item.item.components."minecraft:custom_name"

# catch: on failure, assume component is simple string
execute if score #success_count mojotitles.temp matches 0 \
    run data modify storage mojotitles:temp NewTextComponent.text \
        set from storage mojotitles:temp Item.item.components."minecraft:custom_name"

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