say "delete"

execute store result score #index_to_delete mojotitles.temp \
    run scoreboard players get @s mojotitles.ui.title_text.delete

scoreboard players remove #index_to_delete mojotitles.temp 1
# translate from ordinal index to zero-based array inde

execute store result storage mojotitles:temp delete_from_marker.index int 1 \
    run scoreboard players get #index_to_delete mojotitles.temp

function mojotitles:ui/forms/title_text/delete_from_marker with storage mojotitles:temp delete_from_marker

scoreboard players reset @s mojotitles.ui.title_text.delete