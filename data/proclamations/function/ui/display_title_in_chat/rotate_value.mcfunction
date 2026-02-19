say "display_title_in_chat/rotate_value"

function proclamations:ui/get_marker_data

execute if data storage proclamations:temp current_marker_data.triggers[{display_title_in_chat: false}] \
  run data modify storage proclamations:temp TargetTriggerSpec set value {display_title_in_chat: true}

execute if data storage proclamations:temp current_marker_data.triggers[{display_title_in_chat: true}] \
  run data modify storage proclamations:temp TargetTriggerSpec set value {display_title_in_chat: false}
  
execute unless data storage proclamations:temp current_marker_data.triggers[{display_title_in_chat: true}] \
  run execute unless data storage proclamations:temp current_marker_data.triggers[{display_title_in_chat: false}] \
  run data modify storage proclamations:temp TargetTriggerSpec set value {display_title_in_chat: true}

data modify storage proclamations:temp CurrentTriggerSpec \
  set from storage proclamations:temp current_marker_data.triggers[0]

data remove storage proclamations:temp CurrentTriggerSpec.display_title_in_chat

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