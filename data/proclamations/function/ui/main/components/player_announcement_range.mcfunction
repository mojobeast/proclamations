data modify storage proclamations:temp WIPDialogAction set value {\
    label: [\
      "Player announcement range: ",\
      {\
        text: "",\
        color: "yellow"\
      }\
    ],\
    width: 200,\
    tooltip: "Click to edit",\
    action: {\
        type: "run_command",\
        command: "trigger proclamations.ui.action set 103"\
    }\
}

data modify storage proclamations:temp stringify.input \
  set from storage proclamations:temp current_marker_data.players[0].distance

function proclamations:utils/stringify with storage proclamations:temp stringify

data modify storage proclamations:temp WIPDialogAction.label[1].text \
  set from storage proclamations:temp stringified

data modify storage proclamations:dialog dialog.actions \
  append from storage proclamations:temp WIPDialogAction