$data modify storage proclamations:temp TextComponents \
    set from entity @e[type=minecraft:marker,tag=proclamations.active_marker,limit=1] data.proclamations.$(subcommand)_text_components

function proclamations:text_components/render

execute unless data storage proclamations:temp RenderedTextComponents[{}] \
    unless data storage proclamations:temp RenderedTextComponents[0].[{}] \
    run return fail         

$title @a[tag=proclamations.players.sees_title] $(subcommand) \
    {type:"nbt", source:"storage", storage:"proclamations:temp", nbt:"RenderedTextComponents", interpret:true}
