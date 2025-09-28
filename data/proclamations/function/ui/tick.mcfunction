scoreboard players enable @a proclamations.ui.action
execute as @a if score @s proclamations.ui.action matches 1.. \
    run function proclamations:ui/action
    
scoreboard players enable @a proclamations.ui.cancel
execute as @a if score @s proclamations.ui.cancel matches 1.. \
    run function proclamations:ui/cancel

scoreboard players enable @a proclamations.ui.player_detection_distance
execute as @a if score @s proclamations.ui.player_detection_distance matches 1.. \
    run function proclamations:ui/player_detection_distance/set_value

scoreboard players enable @a proclamations.ui.player_announcement_distance
execute as @a if score @s proclamations.ui.player_announcement_distance matches 1.. \
    run function proclamations:ui/player_announcement_distance/set_value