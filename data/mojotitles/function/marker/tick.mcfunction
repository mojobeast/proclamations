# kill marker if banner was broken
execute at @s unless block ~ ~ ~ #minecraft:banners run return run function mojotitles:marker/kill

tag @s add mojotitles.active_marker

execute as @s[tag=mojotitles.player_detector] run function mojotitles:marker/player_detector/tick \
    with entity @s data.mojotitles.triggers[{type:"mojotitles:player_enters_range"}]

execute as @s[tag=mojotitles.inventory_detector] run function mojotitles:marker/inventory_detector/tick \
    with entity @s data.mojotitles.attached_block

tag @s remove mojotitles.active_marker