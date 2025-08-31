$execute store result score @s mojotitles.last_seen_by_player_detector \
    run data get entity @e[tag=mojotitles.active_marker,limit=1] \
    data.mojotitles.last_saw_players."$(UUID)"

execute if score @s mojotitles.last_seen_by_player_detector < #cooldown_threshold mojotitles.last_seen_by_player_detector \
    run function mojotitles:player_detector/detected_player

$execute store result entity @e[tag=mojotitles.active_marker,limit=1] \
    data.mojotitles.last_saw_players."$(UUID)" int 1 \
    run time query gametime