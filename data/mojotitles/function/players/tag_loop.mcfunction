execute unless data storage mojotitles:temp Players[0] run return fail

data modify storage mojotitles:temp Player set from storage mojotitles:temp Players[0]
data remove storage mojotitles:temp Players[0]

execute if data storage mojotitles:temp Player{type:"mojotitles:triggering_player"} \
    run tag @a[tag=mojotitles.triggering_player] add mojotitles.players.sees_title

execute if data storage mojotitles:temp Player{type:"mojotitles:all_players"} \
    run tag @a add mojotitles.players.sees_title

execute if data storage mojotitles:temp Player{type:"mojotitles:players_within_range"} \
    run function mojotitles:players/players_within_range with storage mojotitles:temp Player

function mojotitles:players/tag_loop