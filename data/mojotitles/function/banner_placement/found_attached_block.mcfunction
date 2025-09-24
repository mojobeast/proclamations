execute align xyz run summon minecraft:marker ~ ~ ~ {Tags:["mojotitles.attached_block"]}

execute store result entity @s data.mojotitles.attached_block.x int 1 \
    run data get entity @e[tag=mojotitles.attached_block,limit=1] Pos[0]

execute store result entity @s data.mojotitles.attached_block.y int 1 \
    run data get entity @e[tag=mojotitles.attached_block,limit=1] Pos[1]

execute store result entity @s data.mojotitles.attached_block.z int 1 \
    run data get entity @e[tag=mojotitles.attached_block,limit=1] Pos[2]

kill @e[tag=mojotitles.attached_block]

execute unless block ~ ~ ~ minecraft:lodestone run return fail

data modify entity @s data.mojotitles.attached_block.type set value "minecraft:lodestone"

data modify storage mojotitles:temp WIPBanner set value {"enabled": true}

data modify storage mojotitles:temp WIPBanner.triggers set value \
    [{"type": "mojotitles:player_enters_range", "distance": 64, "cooldown_ticks": 100}]

data modify storage mojotitles:temp WIPBanner.players set value \
    [{"type": "mojotitles:triggering_player"}]

execute at @s run function mojotitles:banner_placement/get_default_banner_color

# default_color is used if not overridden by a text component we get from elsewhere (e.g. custom name or lore)

data modify storage mojotitles:temp WIPBanner.title_text_components set value \
    [{"type": "mojotitles:banner_name"}]
data modify storage mojotitles:temp WIPBanner.title_text_components[-1].default_color \
    set from storage mojotitles:temp DefaultBannerColor

data modify storage mojotitles:temp WIPBanner.subtitle_text_components set value \
    [{"type": "mojotitles:banner_lore", "default_color": "white"}]

data modify storage mojotitles:temp WIPBanner.actionbar_text_components set value []

data modify storage mojotitles:temp WIPBanner.times.fade_in set value 10
data modify storage mojotitles:temp WIPBanner.times.stay set value 70
data modify storage mojotitles:temp WIPBanner.times.fade_out set value 20

execute at @s run \
    data modify storage mojotitles:temp WIPBanner \
        merge from block ~ ~ ~ components."minecraft:custom_data".mojotitles

execute at @s run \
    data modify block ~ ~ ~ components."minecraft:custom_data".mojotitles \
        set from storage mojotitles:temp WIPBanner

execute at @s run \
    data modify entity @s data \
        merge from block ~ ~ ~ components."minecraft:custom_data"

function mojotitles:triggers/init