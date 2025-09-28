data modify entity @s data.proclamations.attached_block.type set value "#proclamations:inventory_detectors"

data modify storage proclamations:temp WIPBanner.triggers append value \
    {"type": "proclamations:shulker_enters_inventory"}

data modify storage proclamations:temp WIPBanner.players append value \
    {"type": "proclamations:players_within_range", "distance": 64}

data modify storage proclamations:temp WIPBanner.title_text_components append value \
    {"type": "proclamations:container_title_text_components"}
data modify storage proclamations:temp WIPBanner.title_text_components[-1].default_color \
    set from storage proclamations:temp DefaultBannerColor

data modify storage proclamations:temp WIPBanner.subtitle_text_components append value \
    {"type": "proclamations:container_subtitle_text_components", "default_color": "white"}

data modify storage proclamations:temp WIPBanner.actionbar_text_components append value \
    {"type": "proclamations:container_actionbar_text_components", "default_color": "white"}