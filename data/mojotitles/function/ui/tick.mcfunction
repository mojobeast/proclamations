scoreboard players enable @a mojotitles.ui.action
execute as @a if score @s mojotitles.ui.action matches 1.. \
    run function mojotitles:ui/action

execute as @a if score @s mojotitles.ui.title_text.edit matches 1.. \
    run function mojotitles:ui/forms/title_text/edit

execute as @a if score @s mojotitles.ui.title_text.delete matches 1.. \
    run function mojotitles:ui/forms/title_text/delete

execute as @a if score @s mojotitles.ui.title_text.add matches 1.. \
    run function mojotitles:ui/forms/title_text/add
