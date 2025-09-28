function proclamations:ui/get_marker_data

execute if data storage proclamations:temp current_marker_data.players[{type:"proclamations:triggering_player"}] \
  run data modify storage proclamations:temp TargetPlayerSpec set value {type: "proclamations:all_players"}

execute if data storage proclamations:temp current_marker_data.players[{type:"proclamations:all_players"}] \
  run data modify storage proclamations:temp TargetPlayerSpec set value {type: "proclamations:players_within_range", distance: 64}

execute if data storage proclamations:temp current_marker_data.players[{type:"proclamations:players_within_range"}] \
  run data modify storage proclamations:temp TargetPlayerSpec set value {type: "proclamations:triggering_player"}

data modify storage proclamations:temp CurrentPlayerSpec \
  set from storage proclamations:temp current_marker_data.players[0]

data remove storage proclamations:temp CurrentPlayerSpec.type

data modify storage proclamations:temp TargetPlayerSpec merge from storage proclamations:temp CurrentPlayerSpec

tag @s add proclamations.player_checking_target

execute \
    at @s \
    as @e[type=minecraft:interaction,tag=proclamations.banner,distance=..10] \
    if function proclamations:ui/check_target \
    on passengers \
    as @s[type=minecraft:marker,tag=proclamations.banner] \
    run data modify entity @s data.proclamations.players[0] set from storage proclamations:temp TargetPlayerSpec

tag @s remove proclamations.player_checking_target

function proclamations:ui/main/show_dialog