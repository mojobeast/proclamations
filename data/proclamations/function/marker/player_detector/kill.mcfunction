execute store result storage proclamations:temp player_detector_scoreboard.id int 1 \
    run scoreboard players get @s proclamations.player_detectors

function proclamations:marker/player_detector/remove_scoreboard \
    with storage proclamations:temp player_detector_scoreboard