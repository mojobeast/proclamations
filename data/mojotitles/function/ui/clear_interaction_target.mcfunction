tag @s add mojotitles.player_checking_target

execute \
    at @s \
    as @e[type=minecraft:interaction,tag=mojotitles.banner,distance=..10] \
    if function mojotitles:ui/check_target \
    run data remove entity @s interaction

tag @s remove mojotitles.player_checking_target