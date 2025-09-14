$say "ui/forms/title_text/delete_from_marker $(index)"

tag @s add mojotitles.player_checking_target

$execute at @s as @e[type=minecraft:interaction,tag=mojotitles.banner,distance=..10] \
    if function mojotitles:ui/check_target \
    on passengers \
    as @s[type=minecraft:marker,tag=mojotitles.banner] \
    run data remove entity @s data.mojotitles.title_text_components[$(index)]

tag @s remove mojotitles.player_checking_target
