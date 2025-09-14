say "ui/forms/title_text"

scoreboard players enable @s mojotitles.ui.title_text.edit
scoreboard players enable @s mojotitles.ui.title_text.delete
scoreboard players enable @s mojotitles.ui.title_text.add

data modify storage mojotitles:dialog dialog set value {\
    "type": "minecraft:multi_action",\
    "title": "Title Text",\
    "body": {\
        "type": "minecraft:plain_message",\
        "contents": "These text components will be assembled into a single message and shown to the targeted players as a title."\
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

function mojotitles:util/loop {\
    storage: "mojotitles:temp",\
    path: "current_marker_data.title_text_components",\
    do: "mojotitles:ui/forms/title_text/loop"}

data modify storage mojotitles:dialog dialog.actions append value {\
    "label": {text: "➕", color: "green"},\
    "tooltip": "Add new text component",\
    "width": 20,\
    "action": {\
        "type": "run_command",\
        "command": "trigger mojotitles.ui.title_text.add set 1"\
    }\
}

function mojotitles:ui/show_dialog with storage mojotitles:dialog