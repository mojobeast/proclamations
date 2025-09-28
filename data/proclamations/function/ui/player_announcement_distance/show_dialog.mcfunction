function proclamations:ui/get_marker_data

data modify storage proclamations:dialog dialog set value {\
  type: "minecraft:confirmation",\
  title: "Banner Settings",\
  pause: 0,\
  after_action: "none",\
  body: {\
    type: "minecraft:plain_message",\
    contents: "Announce title to players in this range"\
  },\
  inputs: [\
    {\
      type: "minecraft:number_range",\
      label: "Announcement range (blocks)",\
      key: "announcement_distance",\
      start: 0,\
      end: 256,\
      step: 1\
    }\
  ],\
  yes: {\
    action: {\
      type: "minecraft:dynamic/run_command",\
      template: "trigger proclamations.ui.player_announcement_distance set $(announcement_distance)"\
    },\
    label: "Confirm"\
  },\
  no: {\
    action: {\
      type: "run_command",\
      command: "trigger proclamations.ui.action set 2"\
    },\
    label: "Cancel"\
  }\
}

data modify storage proclamations:dialog dialog.inputs[0].initial \
    set from storage proclamations:temp current_marker_data.players[0].distance

function proclamations:ui/show_dialog with storage proclamations:dialog