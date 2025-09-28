data modify entity @s data.mojotitles.attached_block.type set value "minecraft:lodestone"

data modify storage mojotitles:temp WIPBanner.triggers append value \
    {"type": "mojotitles:player_enters_range", "distance": 64, "cooldown_ticks": 100}

data modify storage mojotitles:temp WIPBanner.players append value \
    {"type": "mojotitles:triggering_player"}

data modify storage mojotitles:temp WIPBanner.title_text_components append value \
    {"type": "mojotitles:banner_name"}
data modify storage mojotitles:temp WIPBanner.title_text_components[-1].default_color \
    set from storage mojotitles:temp DefaultBannerColor

data modify storage mojotitles:temp WIPBanner.subtitle_text_components append value \
    {"type": "mojotitles:banner_lore", "default_color": "white"}