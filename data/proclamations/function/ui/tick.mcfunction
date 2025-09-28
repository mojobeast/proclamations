scoreboard players enable @a mojotitles.ui.action
execute as @a if score @s mojotitles.ui.action matches 1.. \
    run function mojotitles:ui/action
    
scoreboard players enable @a mojotitles.ui.cancel
execute as @a if score @s mojotitles.ui.cancel matches 1.. \
    run function mojotitles:ui/cancel

scoreboard players enable @a mojotitles.ui.player_detection_distance
execute as @a if score @s mojotitles.ui.player_detection_distance matches 1.. \
    run function mojotitles:ui/player_detection_distance/set_value

scoreboard players enable @a mojotitles.ui.player_announcement_distance
execute as @a if score @s mojotitles.ui.player_announcement_distance matches 1.. \
    run function mojotitles:ui/player_announcement_distance/set_value