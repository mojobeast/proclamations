
tag @s add mojotitles.active_marker

execute store result storage mojotitles:temp check_nearby_player.id int 1 \
    run scoreboard players get @s mojotitles.player_detectors

$data modify storage mojotitles:temp check_nearby_player.cooldown_ticks set value $(cooldown_ticks)

$execute at @s as @a[distance=..$(distance)] \
    run function mojotitles:marker/player_detector/check_nearby_player \
        with storage mojotitles:temp check_nearby_player
    
tag @s remove mojotitles.active_marker