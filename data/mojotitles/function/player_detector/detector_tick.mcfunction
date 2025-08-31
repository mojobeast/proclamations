# kill marker if banner was broken
execute at @s unless block ~ ~ ~ #minecraft:banners run return run kill @s

execute store result score #cooldown_threshold mojotitles.last_seen_by_player_detector \
    run time query gametime

$scoreboard players remove #cooldown_threshold mojotitles.last_seen_by_player_detector $(cooldown_ticks)

tag @s add mojotitles.active_marker

$execute at @s as @a[distance=..$(distance)] \
    run function mojotitles:player_detector/check_nearby_player with entity @s
    
tag @s remove mojotitles.active_marker