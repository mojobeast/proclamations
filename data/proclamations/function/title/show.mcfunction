function proclamations:players/tag

function proclamations:title/set_timings with entity @e[tag=proclamations.active_marker,limit=1] data.proclamations.times

execute if data entity @e[tag=proclamations.active_marker,limit=1] data.proclamations.triggers[{display_title_in_chat: true}] \
    run tellraw @a[tag=proclamations.players.sees_title] \
    {"text": "                                                                                ", "strikethrough": true}

function proclamations:title/render_title {subcommand: "title"}
function proclamations:title/render_title {subcommand: "subtitle"}
function proclamations:title/render_title {subcommand: "actionbar"}

function proclamations:title/reset_to_default_timings

function proclamations:players/clear_tags