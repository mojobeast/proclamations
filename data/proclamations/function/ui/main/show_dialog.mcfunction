function proclamations:ui/get_marker_data

data modify storage proclamations:temp foo set value "bar"

data modify storage proclamations:dialog dialog set value {\
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
          command: "trigger proclamations.ui.action set 1"\
        }\
    },\
    actions: []\
}

# TODO: Display which triggers the banner is currently configured for in the body

execute if data storage proclamations:temp current_marker_data.triggers[{type:"proclamations:player_enters_range"}] \
    run function proclamations:ui/main/components/player_detection_range

function proclamations:ui/main/components/triggering_player

execute if data storage proclamations:temp current_marker_data.players[{type:"proclamations:players_within_range"}] \
    run function proclamations:ui/main/components/player_announcement_range

execute if data storage proclamations:temp current_marker_data.triggers[{type:"proclamations:shulker_enters_inventory"}] \
    run function proclamations:ui/main/components/display_player_heads

function proclamations:ui/main/components/help

function proclamations:ui/show_dialog with storage proclamations:dialog