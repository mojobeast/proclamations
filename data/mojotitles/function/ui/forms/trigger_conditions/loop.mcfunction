say "ui/forms/trigger_conditions/loop"

execute unless data storage mojotitles:temp current_marker_data.triggers[0] run return 1

data modify storage mojotitles:temp current_trigger set from storage mojotitles:temp current_marker_data.triggers[0]

data remove storage mojotitles:temp current_marker_data.triggers[0]

data modify storage mojotitles:temp current_label set value {\
    "width": 250,\
    "tooltip": "Edit trigger"\
}
data modify storage mojotitles:temp current_label.label set value []
data modify storage mojotitles:temp current_label.label append from storage mojotitles:temp current_trigger.type
data modify storage mojotitles:temp current_label.label append value " ✎"

data modify storage mojotitles:dialog dialog.actions append from storage mojotitles:temp current_label

data modify storage mojotitles:dialog dialog.actions append value {\
    "label": {\
        "text": "❌",\
        "color": "red"\
    },\
    "tooltip": "Delete trigger",\
    "width": 20\
}

function mojotitles:ui/forms/trigger_conditions/loop