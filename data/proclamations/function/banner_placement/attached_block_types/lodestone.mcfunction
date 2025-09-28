data modify entity @s data.proclamations.attached_block.type set value "minecraft:lodestone"

data modify storage proclamations:temp WIPBanner.triggers append value \
    {"type": "proclamations:player_enters_range", "distance": 64, "cooldown_ticks": 100}

data modify storage proclamations:temp WIPBanner.players append value \
    {"type": "proclamations:triggering_player"}

data modify storage proclamations:temp WIPBanner.title_text_components append value \
    {"type": "proclamations:banner_name"}
data modify storage proclamations:temp WIPBanner.title_text_components[-1].default_color \
    set from storage proclamations:temp DefaultBannerColor

data modify storage proclamations:temp WIPBanner.subtitle_text_components append value \
    {"type": "proclamations:banner_lore", "default_color": "white"}