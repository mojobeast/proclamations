execute unless data storage mojotitles:temp ShulkerTitleComponents[0] run return fail

data modify storage mojotitles:temp ShulkerTitleComponent set from storage mojotitles:temp ShulkerTitleComponents[0]
data remove storage mojotitles:temp ShulkerTitleComponents[0]

data modify storage mojotitles:temp RenderedShulkerTitleComponent \
    set from storage mojotitles:temp ShulkerTitleComponent
        
execute unless data storage mojotitles:temp RenderedShulkerTitleComponent.color \
    run execute if data storage mojotitles:temp RenderedShulkerTitleComponent.default_color \
        run data modify storage mojotitles:temp RenderedShulkerTitleComponent.color \
            set from storage mojotitles:temp RenderedShulkerTitleComponent.default_color
        
execute unless data storage mojotitles:temp RenderedShulkerTitleComponent.color \
    run data modify storage mojotitles:temp RenderedShulkerTitleComponent.color \
        set from storage mojotitles:temp TextComponent.default_color

data modify storage mojotitles:temp RenderedTextComponent append from storage mojotitles:temp RenderedShulkerTitleComponent

function mojotitles:text_components/render_component/shulker_contents_loop