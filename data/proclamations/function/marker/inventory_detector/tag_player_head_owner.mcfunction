$tag $(name) add proclamations.triggering_player

data modify storage proclamations:temp NewTextComponent set value {"color": "white"}

data modify storage proclamations:temp NewTextComponent.player \
    set from storage proclamations:temp Item.item.components."minecraft:profile"

execute if data entity @s data.proclamations.triggers[{display_player_heads:"in_title"}] \
  run return run function proclamations:marker/inventory_detector/add_text_component_to_title

execute if data entity @s data.proclamations.triggers[{display_player_heads:"in_subtitle"}] \
  run return run function proclamations:marker/inventory_detector/add_text_component_to_subtitle
  
execute if data entity @s data.proclamations.triggers[{display_player_heads:"in_actionbar"}] \
  run return run function proclamations:marker/inventory_detector/add_text_component_to_actionbar

data remove storage proclamations:temp NewTextComponent