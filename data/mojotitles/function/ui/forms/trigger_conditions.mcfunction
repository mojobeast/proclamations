say "ui/forms/trigger_conditions"

data modify storage mojotitles:dialog dialog set value {\
    "type": "minecraft:multi_action",\
    "title": "Trigger Conditions",\
    "body": {\
        "type": "minecraft:plain_message",\
        "contents": "The configured titles will be shown to the selected players when ANY of the following conditions are met."\
    },\
    "inputs": [],\
    "pause": 0,\
    "after_action": "close",\
    "exit_action": {\
        "label": "Done"\
    },\
    "columns": 2,\
    "actions": []\
}

function mojotitles:ui/get_marker_data

function mojotitles:ui/forms/trigger_conditions/loop

data modify storage mojotitles:dialog dialog.actions append value {\
    "label": {text: "➕", color: "green"},\
    "tooltip": "Add new trigger",\
    "width": 20\
}

# execute as @a[tag=mojotitles.player_sees_next_dialog] run 
function mojotitles:ui/show_dialog with storage mojotitles:dialog