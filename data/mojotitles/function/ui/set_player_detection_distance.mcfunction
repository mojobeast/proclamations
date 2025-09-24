tag @s add mojotitles.player_checking_target

execute \
    at @s \
    as @e[type=minecraft:interaction,tag=mojotitles.banner,distance=..10] \
    if function mojotitles:ui/check_target \
    on passengers \
    as @s[type=minecraft:marker,tag=mojotitles.banner] \
    store result entity @s data.mojotitles.triggers[0].distance int 1 \
    run scoreboard players get @a[tag=mojotitles.player_checking_target,limit=1] mojotitles.ui.player_detection_distance

tag @s remove mojotitles.player_checking_target

scoreboard players reset @a mojotitles.ui.player_detection_distance