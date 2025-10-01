function proclamations:ui/get_marker_data

execute if data storage proclamations:temp current_marker_data.triggers[{display_player_heads:"in_title"}] \
  run data modify storage proclamations:temp TargetTriggerSpec set value {display_player_heads: "in_subtitle"}

execute if data storage proclamations:temp current_marker_data.triggers[{display_player_heads:"in_subtitle"}] \
  run data modify storage proclamations:temp TargetTriggerSpec set value {display_player_heads: "in_actionbar"}
  
execute if data storage proclamations:temp current_marker_data.triggers[{display_player_heads:"in_actionbar"}] \
  run data modify storage proclamations:temp TargetTriggerSpec set value {display_player_heads: "disabled"}
  
execute unless data storage proclamations:temp current_marker_data.triggers[{display_player_heads:"in_title"}] \
  run execute unless data storage proclamations:temp current_marker_data.triggers[{display_player_heads:"in_subtitle"}] \
  run execute unless data storage proclamations:temp current_marker_data.triggers[{display_player_heads:"in_actionbar"}] \
  run data modify storage proclamations:temp TargetTriggerSpec set value {display_player_heads: "in_title"}

data modify storage proclamations:temp CurrentTriggerSpec \
  set from storage proclamations:temp current_marker_data.triggers[0]

data remove storage proclamations:temp CurrentTriggerSpec.display_player_heads

data modify storage proclamations:temp TargetTriggerSpec merge from storage proclamations:temp CurrentTriggerSpec

tag @s add proclamations.player_checking_target

execute \
    at @s \
    as @e[type=minecraft:interaction,tag=proclamations.banner,distance=..10] \
    if function proclamations:ui/check_target \
    on passengers \
    as @s[type=minecraft:marker,tag=proclamations.banner] \
    run data modify entity @s data.proclamations.triggers[0] set from storage proclamations:temp TargetTriggerSpec

tag @s remove proclamations.player_checking_target

function proclamations:ui/main/show_dialog