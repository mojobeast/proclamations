tag @s add mojotitles.player_detector

execute store result score @s mojotitles.player_detectors \
    run scoreboard players add #new mojotitles.player_detectors 1

execute store result storage mojotitles:temp player_detector_scoreboard.id int 1 \
    run scoreboard players get @s mojotitles.player_detectors

function mojotitles:player_detector/init_scoreboard \
    with storage mojotitles:temp player_detector_scoreboard