execute unless data storage proclamations:temp Players[0] run return fail

data modify storage proclamations:temp Player set from storage proclamations:temp Players[0]
data remove storage proclamations:temp Players[0]

execute if data storage proclamations:temp Player{type:"proclamations:triggering_player"} \
    run tag @a[tag=proclamations.triggering_player] add proclamations.players.sees_title

execute if data storage proclamations:temp Player{type:"proclamations:all_players"} \
    run tag @a add proclamations.players.sees_title

execute if data storage proclamations:temp Player{type:"proclamations:players_within_range"} \
    run function proclamations:players/players_within_range with storage proclamations:temp Player

function proclamations:players/tag_loop