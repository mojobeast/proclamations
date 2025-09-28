function mojotitles:ui/get_marker_data

data modify storage mojotitles:dialog dialog set value {\
  type: "minecraft:confirmation",\
  title: "Banner Settings",\
  pause: 0,\
  after_action: "none",\
  body: {\
    type: "minecraft:plain_message",\
    contents: "Detect players within this distance"\
  },\
  inputs: [\
    {\
      type: "minecraft:number_range",\
      label: "Detection distance (blocks)",\
      key: "detection_distance",\
      start: 0,\
      end: 256,\
      step: 1\
    }\
  ],\
  yes: {\
    action: {\
      type: "minecraft:dynamic/run_command",\
      template: "trigger mojotitles.ui.player_detection_distance set $(detection_distance)"\
    },\
    label: "Confirm"\
  },\
  no: {\
    action: {\
      type: "run_command",\
      command: "trigger mojotitles.ui.action set 2"\
    },\
    label: "Cancel"\
  }\
}

data modify storage mojotitles:dialog dialog.inputs[0].initial \
    set from storage mojotitles:temp current_marker_data.triggers[0].distance

function mojotitles:ui/show_dialog with storage mojotitles:dialog