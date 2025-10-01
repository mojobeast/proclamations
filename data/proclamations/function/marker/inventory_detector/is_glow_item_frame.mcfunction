execute unless data storage proclamations:temp Item.item{id: "minecraft:glow_item_frame"} run return fail

data modify storage proclamations:temp NewTextComponent set value {color: "white"}

return run data modify storage proclamations:temp NewTextComponent.sprite \
    set from storage proclamations:temp Item.item.components."minecraft:custom_name"
