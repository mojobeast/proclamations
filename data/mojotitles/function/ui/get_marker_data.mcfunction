say "ui/forms/get_marker_data"

tag @s add mojotitles.player_checking_target

execute at @s as @e[type=minecraft:interaction,tag=mojotitles.banner,distance=..10] \
    if function mojotitles:ui/check_target \
    on passengers \
    as @s[type=minecraft:marker,tag=mojotitles.banner] \
    run data modify storage mojotitles:temp current_marker_data set from entity @s data.mojotitles

tag @s remove mojotitles.player_checking_target
