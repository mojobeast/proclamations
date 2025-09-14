say "ui/main"

dialog show @s {\
    "type": "minecraft:multi_action",\
    "title": "Proclamations",\
    "body": {\
        "type": "minecraft:plain_message",\
        "contents": "Lorem ipsum dolor sit amet"\
    },\
    "inputs": [],\
    "pause": false,\
    "after_action": "close",\
    "exit_action": {\
        "label": "Done"\
    },\
    "actions": [\
        {\
            "label": "Configure title text",\
            "action": {\
                "type": "run_command",\
                "command": "trigger mojotitles.ui.action set 1"\
            }\
        },\
        {\
            "label": "Configure subtitle text",\
            "action": {\
                "type": "run_command",\
                "command": "trigger mojotitles.ui.action set 2"\
            }\
        },\
        {\
            "label": "Configure actionbar text",\
            "action": {\
                "type": "run_command",\
                "command": "trigger mojotitles.ui.action set 3"\
            }\
        },\
        {\
            "label": "Set trigger conditions",\
            "action": {\
                "type": "run_command",\
                "command": "trigger mojotitles.ui.action set 4"\
            }\
        }\
    ]\
}