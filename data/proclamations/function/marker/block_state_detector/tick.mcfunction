$execute if score @s proclamations.block_state_detector.active matches 1 \
    unless block $(x) $(y) $(z) $(type)[$(detector_block_state)=$(active_block_state)] \
    run return \
    run scoreboard players reset @s proclamations.block_state_detector.active
    
$execute unless score @s proclamations.block_state_detector.active matches 1 \
    if block $(x) $(y) $(z) $(type)[$(detector_block_state)=$(active_block_state)] \
    run return \
    run function proclamations:marker/block_state_detector/detected