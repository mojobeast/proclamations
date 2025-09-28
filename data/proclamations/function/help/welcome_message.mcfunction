tellraw @s [ \
    "§6This world has §eProclamations§6, a datapack for using Minecraft's on-screen announcements (the §e/title§6 command) in Survival Mode. ", \
    "§6For more information, click ", \
    { \
        text: "§ehere", \
        click_event: {action: "run_command", command: "/trigger proclamations.help"} \
    }, \
    "§6 or type ", \
    { \
        text: "§e/trigger proclamations.help", \
        click_event: {action: "suggest_command", command: "/trigger proclamations.help"} \
    }, \
    "§6." \
]

scoreboard players set @s proclamations.help 1