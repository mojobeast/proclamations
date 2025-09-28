data modify storage proclamations:temp TextComponents \
    set from entity @e[tag=proclamations.active_marker,limit=1] data.proclamations.subtitle_text_components

function proclamations:text_components/render

execute if data storage proclamations:temp RenderedTextComponents[{}] \
    run title @a[tag=proclamations.players.sees_title] subtitle \
        {type:"nbt", source:"storage", storage:"proclamations:temp", nbt:"RenderedTextComponents", interpret:true}
