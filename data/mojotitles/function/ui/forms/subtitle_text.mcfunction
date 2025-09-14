say "ui/forms/subtitle_text"

# execute as @a[tag=mojotitles.player_sees_next_dialog] run 
dialog show @s {\
"type": "minecraft:multi_action",\
"title": "Subtitle Text",\
  "body": {\
    "type": "minecraft:plain_message",\
    "contents": "Lorem ipsum dolor sit amet"\
  },\
  "inputs": [],\
  "pause": 0,\
  "after_action": "close",\
  "exit_action": {\
    "label": "Done"\
  },\
  "actions": [\
    {\
      "label": "Do something"\
    }\
  ]\
}