execute unless data storage mojotitles:temp ContainerTextComponents[0] run return fail

data modify storage mojotitles:temp RenderedContainerTextComponent set from storage mojotitles:temp ContainerTextComponents[0]
data remove storage mojotitles:temp ContainerTextComponents[0]
        
execute unless data storage mojotitles:temp RenderedContainerTextComponent.color \
    run execute if data storage mojotitles:temp RenderedContainerTextComponent.default_color \
        run data modify storage mojotitles:temp RenderedContainerTextComponent.color \
            set from storage mojotitles:temp RenderedContainerTextComponent.default_color
        
execute unless data storage mojotitles:temp RenderedContainerTextComponent.color \
    run data modify storage mojotitles:temp RenderedContainerTextComponent.color \
        set from storage mojotitles:temp TextComponent.default_color

data remove storage mojotitles:temp RenderedContainerTextComponent.default_color

data modify storage mojotitles:temp RenderedTextComponents append from storage mojotitles:temp RenderedContainerTextComponent

data remove storage mojotitles:temp RenderedContainerTextComponent

function mojotitles:text_components/render_component/container_text_components/loop