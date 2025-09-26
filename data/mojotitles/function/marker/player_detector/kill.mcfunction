execute store result storage mojotitles:temp player_detector_scoreboard.id int 1 \
    run scoreboard players get @s mojotitles.player_detectors

function mojotitles:marker/player_detector/remove_scoreboard \
    with storage mojotitles:temp player_detector_scoreboard