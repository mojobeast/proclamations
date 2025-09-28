data modify storage mojotitles:temp Players \
    set from entity @e[tag=mojotitles.active_marker,limit=1] data.mojotitles.players

function mojotitles:players/tag_loop