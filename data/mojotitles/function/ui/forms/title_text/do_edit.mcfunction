$say "ui/forms/title_text/do_edit $(text)"

tag @s add mojotitles.player_checking_target

$execute at @s as @e[type=minecraft:interaction,tag=mojotitles.banner,distance=..10] \
    if function mojotitles:ui/check_target \
    on passengers \
    as @s[type=minecraft:marker,tag=mojotitles.banner] \
    run data modify entity @s data.mojotitles.title_text_components[$(index)] merge value {\
        default_color: "$(default_color)",\
        text: "$(text)"\
    }

tag @s remove mojotitles.player_checking_target
