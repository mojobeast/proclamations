function mojotitles:ui/get_marker_data

execute if data storage mojotitles:temp current_marker_data.players[{type:"mojotitles:triggering_player"}] \
  run data modify storage mojotitles:temp TargetPlayerSpec set value {type: "mojotitles:all_players"}

execute if data storage mojotitles:temp current_marker_data.players[{type:"mojotitles:all_players"}] \
  run data modify storage mojotitles:temp TargetPlayerSpec set value {type: "mojotitles:players_within_range", distance: 64}

execute if data storage mojotitles:temp current_marker_data.players[{type:"mojotitles:players_within_range"}] \
  run data modify storage mojotitles:temp TargetPlayerSpec set value {type: "mojotitles:triggering_player"}

data modify storage mojotitles:temp CurrentPlayerSpec \
  set from storage mojotitles:temp current_marker_data.players[0]

data remove storage mojotitles:temp CurrentPlayerSpec.type

data modify storage mojotitles:temp TargetPlayerSpec merge from storage mojotitles:temp CurrentPlayerSpec

tag @s add mojotitles.player_checking_target

execute \
    at @s \
    as @e[type=minecraft:interaction,tag=mojotitles.banner,distance=..10] \
    if function mojotitles:ui/check_target \
    on passengers \
    as @s[type=minecraft:marker,tag=mojotitles.banner] \
    run data modify entity @s data.mojotitles.players[0] set from storage mojotitles:temp TargetPlayerSpec

tag @s remove mojotitles.player_checking_target

function mojotitles:ui/main/show_dialog