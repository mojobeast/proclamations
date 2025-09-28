execute store result storage proclamations:temp check_nearby_player.id int 1 \
    run scoreboard players get @s proclamations.player_detectors

$data modify storage proclamations:temp check_nearby_player.cooldown_ticks set value $(cooldown_ticks)

$execute at @s as @a[distance=..$(distance)] \
    run function proclamations:marker/player_detector/check_nearby_player \
        with storage proclamations:temp check_nearby_player