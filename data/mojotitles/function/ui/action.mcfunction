say "ui/action"

execute if score @s mojotitles.ui.action matches 1 \
    run function mojotitles:ui/forms/title_text

execute if score @s mojotitles.ui.action matches 2 \
    run function mojotitles:ui/forms/subtitle_text

execute if score @s mojotitles.ui.action matches 3 \
    run function mojotitles:ui/forms/actionbar_text

execute if score @s mojotitles.ui.action matches 4 \
    run function mojotitles:ui/forms/trigger_conditions

scoreboard players reset @s mojotitles.ui.action
