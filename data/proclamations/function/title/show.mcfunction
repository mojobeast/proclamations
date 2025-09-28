function proclamations:players/tag

function proclamations:title/set_timings with entity @e[tag=proclamations.active_marker,limit=1] data.proclamations.times
function proclamations:title/render_title
function proclamations:title/render_subtitle
function proclamations:title/render_actionbar
function proclamations:title/reset_to_default_timings

function proclamations:players/clear_tags