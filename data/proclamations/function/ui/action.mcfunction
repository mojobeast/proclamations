execute if score @s proclamations.ui.action matches 1 \
    run function proclamations:ui/cancel

execute if score @s proclamations.ui.action matches 2 \
    run function proclamations:ui/main/show_dialog

execute if score @s proclamations.ui.action matches 3 \
    run function proclamations:ui/help

execute if score @s proclamations.ui.action matches 101 \
    run function proclamations:ui/player_detection_distance/show_dialog

execute if score @s proclamations.ui.action matches 102 \
    run function proclamations:ui/players/rotate_value

execute if score @s proclamations.ui.action matches 103 \
    run function proclamations:ui/player_announcement_distance/show_dialog

scoreboard players reset @s proclamations.ui.action