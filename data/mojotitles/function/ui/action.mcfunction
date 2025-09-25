execute if score @s mojotitles.ui.action matches 1 \
    run function mojotitles:ui/cancel

execute if score @s mojotitles.ui.action matches 2 \
    run function mojotitles:ui/main/show_dialog

execute if score @s mojotitles.ui.action matches 101 \
    run function mojotitles:ui/player_detection_distance/show_dialog

execute if score @s mojotitles.ui.action matches 102 \
    run function mojotitles:ui/players/rotate_value

execute if score @s mojotitles.ui.action matches 103 \
    run function mojotitles:ui/player_announcement_distance/show_dialog

scoreboard players reset @s mojotitles.ui.action