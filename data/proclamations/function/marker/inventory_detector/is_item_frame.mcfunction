execute unless data storage proclamations:temp Item.item{id: "minecraft:item_frame"} run return fail

data modify storage proclamations:temp NewTextComponent set value {color: "white"}

execute store result score #text_component_count proclamations.temp run data get storage proclamations:temp Item.item.count

return run data modify storage proclamations:temp NewTextComponent.sprite \
    set from storage proclamations:temp Item.item.components."minecraft:custom_name"
