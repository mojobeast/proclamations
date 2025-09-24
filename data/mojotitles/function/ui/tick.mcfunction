scoreboard players enable @a mojotitles.ui.cancel
execute as @a if score @s mojotitles.ui.cancel matches 1.. \
    run function mojotitles:ui/cancel

scoreboard players enable @a mojotitles.ui.player_detection_distance
execute as @a if score @s mojotitles.ui.player_detection_distance matches 1.. \
    run function mojotitles:ui/set_player_detection_distance