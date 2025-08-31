# max straight-line detection distance in blocks
execute as @a at @s as @e[tag=mojotitles.player_detector,distance=..256] \ 
    run function mojotitles:player_detector/detector_tick \
    with entity @s data.mojotitles.triggers[{type:"mojotitles:player_enters_range"}]