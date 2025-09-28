data modify storage mojotitles:temp WIPDialogAction set value {\
    label: [\
      "Show title to: ",\
      {\
        text: "",\
        color: "yellow"\
      }\
    ],\
    width: 200,\
    tooltip: "Click to edit",\
    action: {\
        type: "run_command",\
        command: "trigger mojotitles.ui.action set 102"\
    }\
}

execute if data storage mojotitles:temp current_marker_data.players[{type:"mojotitles:triggering_player"}] \
  run data modify storage mojotitles:temp WIPDialogAction.label[1].text set value "triggering player only"

execute if data storage mojotitles:temp current_marker_data.players[{type:"mojotitles:all_players"}] \
  run data modify storage mojotitles:temp WIPDialogAction.label[1].text set value "all players"

execute if data storage mojotitles:temp current_marker_data.players[{type:"mojotitles:players_within_range"}] \
  run data modify storage mojotitles:temp WIPDialogAction.label[1].text set value "players within range"

data modify storage mojotitles:dialog dialog.actions \
  append from storage mojotitles:temp WIPDialogAction