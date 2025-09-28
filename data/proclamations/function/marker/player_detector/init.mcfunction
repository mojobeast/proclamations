tag @s add proclamations.player_detector

execute store result score @s proclamations.player_detectors \
    run scoreboard players add #new proclamations.player_detectors 1

execute store result storage proclamations:temp player_detector_scoreboard.id int 1 \
    run scoreboard players get @s proclamations.player_detectors

function proclamations:marker/player_detector/init_scoreboard \
    with storage proclamations:temp player_detector_scoreboard