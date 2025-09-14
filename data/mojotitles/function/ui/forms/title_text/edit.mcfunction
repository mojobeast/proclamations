say "ui/forms/title_text/edit"

function mojotitles:ui/get_marker_data

execute store result score #index_to_edit mojotitles.temp \
    run scoreboard players get @s mojotitles.ui.title_text.edit

scoreboard players remove #index_to_edit mojotitles.temp 1
# translate from ordinal index to zero-based array index

execute store result storage mojotitles:temp edit_marker.index int 1 \
    run scoreboard players get #index_to_edit mojotitles.temp

function mojotitles:ui/forms/title_text/edit_form with storage mojotitles:temp edit_marker

scoreboard players reset @s mojotitles.ui.title_text.edit
