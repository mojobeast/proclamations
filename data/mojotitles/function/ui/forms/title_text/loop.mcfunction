say "ui/forms/title_text/loop"

$data modify storage mojotitles:temp new_button set value {\
    "label": [],\
    "tooltip": "Edit text component",\
    "width": 250,\
    "action": {\
        "type": "run_command",\
        "command": "trigger mojotitles.ui.title_text.edit set $(index)"\
    }\
}
data modify storage mojotitles:temp new_button.label set value []
data modify storage mojotitles:temp new_button.label append from storage mojotitles:temp loop_item.type
data modify storage mojotitles:temp new_button.label append value " ✎"

data modify storage mojotitles:dialog dialog.actions append from storage mojotitles:temp new_button

$data modify storage mojotitles:dialog dialog.actions append value {\
    "label": {\
        "text": "❌",\
        "color": "red"\
    },\
    "tooltip": "Delete text component",\
    "width": 20,\
    "action": {\
        "type": "run_command",\
        "command": "trigger mojotitles.ui.title_text.delete set $(index)"\
    }\
}
