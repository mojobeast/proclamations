data modify storage proclamations:temp WIPDialogAction set value {\
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
        command: "trigger proclamations.ui.action set 102"\
    }\
}

execute if data storage proclamations:temp current_marker_data.players[{type:"proclamations:triggering_player"}] \
  run data modify storage proclamations:temp WIPDialogAction.label[1].text set value "triggering player only"

execute if data storage proclamations:temp current_marker_data.players[{type:"proclamations:all_players"}] \
  run data modify storage proclamations:temp WIPDialogAction.label[1].text set value "all players"

execute if data storage proclamations:temp current_marker_data.players[{type:"proclamations:players_within_range"}] \
  run data modify storage proclamations:temp WIPDialogAction.label[1].text set value "players within range"

data modify storage proclamations:dialog dialog.actions \
  append from storage proclamations:temp WIPDialogAction