say "ui/forms/title_text/add"

execute as @a if score @s mojotitles.ui.title_text.add matches 1 \
    run return run function mojotitles:ui/forms/title_text/choose_type

execute as @a if score @s mojotitles.ui.title_text.add matches 101 \
    run data modify storage mojotitles:temp new_text_component set value {type: "mojotitles:banner_name"}

execute as @a if score @s mojotitles.ui.title_text.add matches 102 \
    run data modify storage mojotitles:temp new_text_component set value {type: "mojotitles:banner_lore"}

execute as @a if score @s mojotitles.ui.title_text.add matches 201 \
    run data modify storage mojotitles:temp new_text_component set value {type: "text", text: ""}

data modify storage mojotitles:temp new_text_component.default_color set value "#8932B8"
# TODO: Get default_color dynamically

tag @s add mojotitles.player_checking_target

execute at @s as @e[type=minecraft:interaction,tag=mojotitles.banner,distance=..10] \
    if function mojotitles:ui/check_target \
    on passengers \
    as @s[type=minecraft:marker,tag=mojotitles.banner] \
    run data modify entity @s data.mojotitles.title_text_components append from storage mojotitles:temp new_text_component

tag @s remove mojotitles.player_checking_target

scoreboard players reset @s mojotitles.ui.title_text.add