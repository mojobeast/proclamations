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