function mojotitles:ui/get_marker_data

data modify storage mojotitles:temp foo set value "bar"

data modify storage mojotitles:dialog dialog set value {\
    type: "minecraft:multi_action",\
    title: "Proclamations",\
    body: {\
        type: "minecraft:plain_message",\
        contents: "Currently configured banner options:"\
    },\
    columns: 1,\
    pause: false,\
    after_action: "none",\
    exit_action: {\
        label: "Done",\
        action: {\
          type: "run_command",\
          command: "trigger mojotitles.ui.action set 1"\
        }\
    },\
    actions: []\
}

# TODO: Display which triggers the banner is currently configured for in the body

execute if data storage mojotitles:temp current_marker_data.triggers[{type:"mojotitles:player_enters_range"}] \
    run function mojotitles:ui/main/components/player_detection_range

function mojotitles:ui/main/components/triggering_player

execute if data storage mojotitles:temp current_marker_data.players[{type:"mojotitles:players_within_range"}] \
    run function mojotitles:ui/main/components/player_announcement_range

function mojotitles:ui/show_dialog with storage mojotitles:dialog