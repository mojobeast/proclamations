execute unless items entity @s weapon.mainhand #minecraft:banners \
    run return \
    run tellraw @s {"text":"Item in main hand is not a banner.","color":"red"}

# For now, only this default profile is supported

data modify storage mojotitles:temp WIPBanner set value {"enabled": true}

data modify storage mojotitles:temp WIPBanner.triggers set value \
    [{"type": "mojotitles:player_enters_range", "distance": 16, "cooldown_ticks": 100}]

data modify storage mojotitles:temp WIPBanner.players set value \
    [{"type": "mojotitles:triggering_player"}]

function mojotitles:ui/get_default_banner_color

data modify storage mojotitles:temp WIPBanner.title_text_components set value \
    [{"type": "mojotitles:banner_name"}]
data modify storage mojotitles:temp WIPBanner.title_text_components[-1].color \
    set from storage mojotitles:temp DefaultBannerColor

data modify storage mojotitles:temp WIPBanner.subtitle_text_components set value []
data modify storage mojotitles:temp WIPBanner.actionbar_text_components set value []

data modify storage mojotitles:temp WIPBanner.times.fade_in set value 10
data modify storage mojotitles:temp WIPBanner.times.stay set value 70
data modify storage mojotitles:temp WIPBanner.times.fade_out set value 20

item modify entity @s weapon.mainhand mojotitles:save_wip_banner