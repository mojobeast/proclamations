data modify storage mojotitles:temp WIPDialogAction set value {\
    label: [\
      "Player detection range: ",\
      {\
        text: "",\
        color: "yellow"\
      }\
    ],\
    width: 200,\
    tooltip: "Click to edit",\
    action: {\
        type: "run_command",\
        command: "trigger mojotitles.ui.action set 101"\
    }\
}

data modify storage mojotitles:temp stringify.input \
  set from storage mojotitles:temp current_marker_data.triggers[0].distance

function mojotitles:utils/stringify with storage mojotitles:temp stringify

data modify storage mojotitles:temp WIPDialogAction.label[1].text \
  set from storage mojotitles:temp stringified

data modify storage mojotitles:dialog dialog.actions \
  append from storage mojotitles:temp WIPDialogAction