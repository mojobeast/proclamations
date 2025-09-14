say "ui/forms/title_text/choose_type"

scoreboard players reset @s mojotitles.ui.title_text.add
scoreboard players enable @s mojotitles.ui.title_text.add

dialog show @s {\
  "type": "minecraft:confirmation",\
  "title": {\
    "text": "Select Text Component Type"\
  },\
  "inputs": [\
    {\
      "type": "minecraft:single_option",\
      "key": "type",\
      "label": "Display",\
      "label_visible": true,\
      "options": [\
        {\
          "id": "101",\
          "display": "Banner Name"\
        },\
        {\
          "id": "102",\
          "display": "Banner Lore"\
        },\
        {\
          "id": "201",\
          "display": "Text"\
        }\
      ]\
    }\
  ],\
  "yes": {\
    "label": "Confirm",\
    "action": {\
      "type": "minecraft:dynamic/run_command",\
      "template": "trigger mojotitles.ui.title_text.add set $(type)"\
    }\
  },\
  "no": {\
    "label": "Cancel"\
  }\
}