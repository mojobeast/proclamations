data modify storage mojotitles:temp TextComponents \
    set from entity @e[tag=mojotitles.active_marker,limit=1] data.mojotitles.title_text_components

function mojotitles:text_components/render

execute if data storage mojotitles:temp RenderedTextComponents[0] \
    run title @a[tag=mojotitles.players.sees_title] title \
        {type:"nbt", source:"storage", storage:"mojotitles:temp", nbt:"RenderedTextComponents", interpret:true}
