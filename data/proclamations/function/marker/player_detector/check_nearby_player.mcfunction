$execute store result score #cooldown_threshold proclamations.player_detector_times.$(id) \
    run time query gametime

$scoreboard players remove #cooldown_threshold proclamations.player_detector_times.$(id) $(cooldown_ticks)

$execute unless score @s proclamations.player_detector_times.$(id) > #cooldown_threshold proclamations.player_detector_times.$(id) \
    run function proclamations:marker/player_detector/detected_player

$execute store result score @s proclamations.player_detector_times.$(id) \
    run time query gametime