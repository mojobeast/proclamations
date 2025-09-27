execute unless data storage mojotitles:temp ShulkerTitleComponents[0] run return fail

data modify storage mojotitles:temp ShulkerTitleComponent set from storage mojotitles:temp ShulkerTitleComponents[0]
data remove storage mojotitles:temp ShulkerTitleComponents[0]

data modify storage mojotitles:temp RenderedShulkerTitleComponent set value {"text": ""}

# try: assume component is compound NBT text component, merge all keys
execute store result score #success_count mojotitles.temp \
    run data modify storage mojotitles:temp RenderedShulkerTitleComponent \
        merge from storage mojotitles:temp ShulkerTitleComponent

# catch: on failure, assume component is simple string
execute if score #success_count mojotitles.temp matches 0 \
    run data modify storage mojotitles:temp RenderedShulkerTitleComponent.text \
        set from storage mojotitles:temp ShulkerTitleComponent
        
execute unless data storage mojotitles:temp RenderedShulkerTitleComponent.color \
    run data modify storage mojotitles:temp RenderedShulkerTitleComponent.color \
        set from storage mojotitles:temp TextComponent.default_color

data modify storage mojotitles:temp RenderedTextComponent append from storage mojotitles:temp RenderedShulkerTitleComponent

function mojotitles:text_components/render_component/shulker_contents_loop