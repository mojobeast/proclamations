$say "ui/forms/title_text/edit_form $(index)"

$data modify storage mojotitles:temp current_text_component \
    set from storage mojotitles:temp current_marker_data.title_text_components[$(index)]

$data modify storage mojotitles:dialog dialog set value {\
    "type": "minecraft:confirmation",\
    "title": "Edit Text Component",\
    "body": {\
        "type": "minecraft:plain_message",\
        "contents": "Lorem ipsum dolor sit amet."\
    },\
    "inputs": [],\
    "pause": 0,\
    "after_action": "close",\
    "yes": {\
        "label": "Confirm",\
        "action": {\
            "type": "minecraft:dynamic/run_command",\
            "template": "function mojotitles:ui/forms/title_text/do_edit {index: $(index), default_color: \"\u0024(default_color)\", text:\"\"}"\
        }\
    },\
    "no": {\
        "label": "Cancel"\
    }\
}

data modify storage mojotitles:temp new_input set value {\
    "type": "minecraft:text",\
    "key": "default_color",\
    "label": "Default Color"\
}

data modify storage mojotitles:temp new_input.initial \
    set from storage mojotitles:temp current_text_component.default_color

data modify storage mojotitles:dialog dialog.inputs \
    append from storage mojotitles:temp new_input

# TODO: Need a more robust and DRY system to process which types have which fields

execute if data storage mojotitles:temp current_text_component{type:"text"} \
    run data modify storage mojotitles:temp new_input set value {\
        "type": "minecraft:text",\
        "key": "text",\
        "label": "Text"\
    }

execute if data storage mojotitles:temp current_text_component{type:"text"} \
    run data modify storage mojotitles:temp new_input.initial \
        set from storage mojotitles:temp current_text_component.text

execute if data storage mojotitles:temp current_text_component{type:"text"} \
    run data modify storage mojotitles:dialog dialog.inputs \
        append from storage mojotitles:temp new_input

$execute if data storage mojotitles:temp current_text_component{type:"text"} \
    run data modify storage mojotitles:dialog dialog.yes.action.template \
        set value "function mojotitles:ui/forms/title_text/do_edit {index: $(index), default_color: \"\u0024(default_color)\", text: \"\u0024(text)\"}"

function mojotitles:ui/show_dialog with storage mojotitles:dialog