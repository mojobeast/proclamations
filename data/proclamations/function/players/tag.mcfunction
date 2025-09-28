data modify storage proclamations:temp Players \
    set from entity @e[tag=proclamations.active_marker,limit=1] data.proclamations.players

function proclamations:players/tag_loop