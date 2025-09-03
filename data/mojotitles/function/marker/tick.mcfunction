# kill marker if banner was broken
execute at @s unless block ~ ~ ~ #minecraft:banners run return run function mojotitles:marker/kill

function mojotitles:player_detector/detector_tick \
    with entity @s data.mojotitles.triggers[{type:"mojotitles:player_enters_range"}]