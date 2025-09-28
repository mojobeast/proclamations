$execute store result score #cooldown_threshold mojotitles.player_detector_times.$(id) \
    run time query gametime

$scoreboard players remove #cooldown_threshold mojotitles.player_detector_times.$(id) $(cooldown_ticks)

$execute unless score @s mojotitles.player_detector_times.$(id) > #cooldown_threshold mojotitles.player_detector_times.$(id) \
    run function mojotitles:marker/player_detector/detected_player

$execute store result score @s mojotitles.player_detector_times.$(id) \
    run time query gametime