execute if block ~ ~ ~ #proclamations:detect_block_when_powered \
    run data modify entity @s data.proclamations.attached_block merge value \
        {"detector_block_state": "powered", "active_block_state": "true"}

execute if block ~ ~ ~ #proclamations:detect_block_when_lit \
    run data modify entity @s data.proclamations.attached_block merge value \
        {"detector_block_state": "lit", "active_block_state": "true"}

execute if block ~ ~ ~ minecraft:jukebox \
    run data modify entity @s data.proclamations.attached_block merge value \
        {"detector_block_state": "has_record", "active_block_state": "true"}

data modify entity @s data.proclamations.attached_block.type set value "#proclamations:block_state_detectors"

data modify storage proclamations:temp WIPBanner.triggers append value \
    {"type": "proclamations:block_state_detected"}

data modify storage proclamations:temp WIPBanner.players append value \
    {"type": "proclamations:players_within_range", "distance": 64}

data modify storage proclamations:temp WIPBanner.title_text_components append value \
    {"type": "proclamations:banner_name"}
data modify storage proclamations:temp WIPBanner.title_text_components[-1].default_color \
    set from storage proclamations:temp DefaultBannerColor

data modify storage proclamations:temp WIPBanner.subtitle_text_components append value \
    {"type": "proclamations:banner_lore", "default_color": "white"}