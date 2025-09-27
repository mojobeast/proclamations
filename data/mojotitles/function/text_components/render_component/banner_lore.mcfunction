# try: assume lore is compound NBT text component, merge all keys
execute store result score #success_count mojotitles.temp as @e[tag=mojotitles.active_marker,limit=1] at @s \
    run data modify storage mojotitles:temp RenderedTextComponent \
        merge from block ~ ~ ~ components."minecraft:lore"[0]

# catch: on failure, assume lore is simple string
execute if score #success_count mojotitles.temp matches 0 as @e[tag=mojotitles.active_marker,limit=1] at @s \
    run data modify storage mojotitles:temp RenderedTextComponent.text \
        set from block ~ ~ ~ components."minecraft:lore"[0]

data modify storage mojotitles:temp RenderedTextComponent \
    merge from storage mojotitles:temp TextComponent

data modify storage mojotitles:temp RenderedTextComponent.type set value "text"