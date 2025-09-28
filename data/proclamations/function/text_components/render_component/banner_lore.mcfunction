data modify storage proclamations:temp RenderedTextComponent set value {"text": ""}

# try: assume lore is compound NBT text component, merge all keys
execute store result score #success_count proclamations.temp \
    run data modify storage proclamations:temp RenderedTextComponent \
        merge from block ~ ~ ~ components."minecraft:lore"[0]

# catch: on failure, assume lore is simple string
execute if score #success_count proclamations.temp matches 0 \
    run data modify storage proclamations:temp RenderedTextComponent.text \
        set from block ~ ~ ~ components."minecraft:lore"[0]

data modify storage proclamations:temp RenderedTextComponent \
    merge from storage proclamations:temp TextComponent

data modify storage proclamations:temp RenderedTextComponent.type set value "text"

execute unless data storage proclamations:temp RenderedTextComponent.color \
    run data modify storage proclamations:temp RenderedTextComponent.color \
        set from storage proclamations:temp RenderedTextComponent.default_color

data remove storage proclamations:temp RenderedTextComponent.default_color

data modify storage proclamations:temp RenderedTextComponents append from storage proclamations:temp RenderedTextComponent