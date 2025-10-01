data modify storage proclamations:temp WIPDialogAction set value {\
    label: [\
      "Display player heads: ",\
      {\
        text: "",\
        color: "yellow"\
      }\
    ],\
    width: 200,\
    tooltip: "Click to edit",\
    action: {\
        type: "run_command",\
        command: "trigger proclamations.ui.action set 104"\
    }\
}

execute if data storage proclamations:temp current_marker_data.triggers[{display_player_heads:"in_title"}] \
  run data modify storage proclamations:temp WIPDialogAction.label[1].text set value "in title"

execute if data storage proclamations:temp current_marker_data.triggers[{display_player_heads:"in_subtitle"}] \
  run data modify storage proclamations:temp WIPDialogAction.label[1].text set value "in subtitle"
  
execute if data storage proclamations:temp current_marker_data.triggers[{display_player_heads:"in_actionbar"}] \
  run data modify storage proclamations:temp WIPDialogAction.label[1].text set value "in actionbar"
  
execute unless data storage proclamations:temp current_marker_data.triggers[{display_player_heads:"in_title"}] \
  run execute unless data storage proclamations:temp current_marker_data.triggers[{display_player_heads:"in_subtitle"}] \
  run execute unless data storage proclamations:temp current_marker_data.triggers[{display_player_heads:"in_actionbar"}] \
  run data modify storage proclamations:temp WIPDialogAction.label[1].text set value "disabled"

data modify storage proclamations:dialog dialog.actions \
  append from storage proclamations:temp WIPDialogAction