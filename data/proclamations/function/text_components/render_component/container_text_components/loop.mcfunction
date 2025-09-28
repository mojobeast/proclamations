execute unless data storage proclamations:temp ContainerTextComponents[0] run return fail

data modify storage proclamations:temp RenderedContainerTextComponent set from storage proclamations:temp ContainerTextComponents[0]
data remove storage proclamations:temp ContainerTextComponents[0]
        
execute unless data storage proclamations:temp RenderedContainerTextComponent.color \
    run execute if data storage proclamations:temp RenderedContainerTextComponent.default_color \
        run data modify storage proclamations:temp RenderedContainerTextComponent.color \
            set from storage proclamations:temp RenderedContainerTextComponent.default_color
        
execute unless data storage proclamations:temp RenderedContainerTextComponent.color \
    run data modify storage proclamations:temp RenderedContainerTextComponent.color \
        set from storage proclamations:temp TextComponent.default_color

data remove storage proclamations:temp RenderedContainerTextComponent.default_color

data modify storage proclamations:temp RenderedTextComponents append from storage proclamations:temp RenderedContainerTextComponent

data remove storage proclamations:temp RenderedContainerTextComponent

function proclamations:text_components/render_component/container_text_components/loop