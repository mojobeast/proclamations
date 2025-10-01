$tag $(name) add proclamations.triggering_player

data modify storage proclamations:temp NewTextComponent set value []

execute if data storage proclamations:temp ContainerTitleTextComponents[0] \
    run data modify storage proclamations:temp NewTextComponent \
        append value {"text": " "}

data modify storage proclamations:temp NewTextComponent append value {"color": "white"}

data modify storage proclamations:temp NewTextComponent[-1].player \
    set from storage proclamations:temp Item.item.components."minecraft:profile"

execute if data storage proclamations:temp DetectedInventoryContents[0] \
    run data modify storage proclamations:temp NewTextComponent \
        append value {"text": " "}

execute if data entity @s data.proclamations.triggers[{display_player_heads:"in_title"}] \
  run data modify storage proclamations:temp ContainerTitleTextComponents \
    append from storage proclamations:temp NewTextComponent

execute if data entity @s data.proclamations.triggers[{display_player_heads:"in_subtitle"}] \
  run data modify storage proclamations:temp ContainerSubtitleTextComponents \
    append from storage proclamations:temp NewTextComponent
  
execute if data entity @s data.proclamations.triggers[{display_player_heads:"in_actionbar"}] \
  run data modify storage proclamations:temp ContainerActionbarTextComponents \
    append from storage proclamations:temp NewTextComponent

data remove storage proclamations:temp NewTextComponent