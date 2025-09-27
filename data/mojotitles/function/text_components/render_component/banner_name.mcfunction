data modify storage mojotitles:temp RenderedTextComponent set value {"text": ""}

# try: assume custom name is compound NBT text component, merge all keys
execute store result score #success_count mojotitles.temp \
    run data modify storage mojotitles:temp RenderedTextComponent \
        merge from block ~ ~ ~ CustomName

# catch: on failure, assume custom name is simple string
execute if score #success_count mojotitles.temp matches 0 \
    run data modify storage mojotitles:temp RenderedTextComponent.text \
        set from block ~ ~ ~ CustomName

data modify storage mojotitles:temp RenderedTextComponent \
    merge from storage mojotitles:temp TextComponent

data modify storage mojotitles:temp RenderedTextComponent.type set value "text"

execute unless data storage mojotitles:temp RenderedTextComponent.color \
    run data modify storage mojotitles:temp RenderedTextComponent.color \
        set from storage mojotitles:temp RenderedTextComponent.default_color

data remove storage mojotitles:temp RenderedTextComponent.default_color

data modify storage mojotitles:temp RenderedTextComponents append from storage mojotitles:temp RenderedTextComponent