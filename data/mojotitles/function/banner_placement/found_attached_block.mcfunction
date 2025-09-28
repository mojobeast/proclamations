execute align xyz run summon minecraft:marker ~ ~ ~ {Tags:["mojotitles.attached_block"]}

execute store result entity @s data.mojotitles.attached_block.x int 1 \
    run data get entity @e[tag=mojotitles.attached_block,limit=1] Pos[0]

execute store result entity @s data.mojotitles.attached_block.y int 1 \
    run data get entity @e[tag=mojotitles.attached_block,limit=1] Pos[1]

execute store result entity @s data.mojotitles.attached_block.z int 1 \
    run data get entity @e[tag=mojotitles.attached_block,limit=1] Pos[2]

kill @e[tag=mojotitles.attached_block]

data modify storage mojotitles:temp WIPBanner set value {\
    enabled: true,\
    triggers: [],\
    players: [],\
    title_text_components: [],\
    subtitle_text_components: [],\
    actionbar_text_components: [],\
    times: {\
       fade_in: 10,\
       stay: 70,\
       fade_out: 20\
    }\
}

execute at @s run function mojotitles:banner_placement/get_default_banner_color
# default_color is used if not overridden by a text component we get from elsewhere (e.g. custom name or lore)

execute if block ~ ~ ~ minecraft:lodestone \
    run function mojotitles:banner_placement/attached_block_types/lodestone

execute if block ~ ~ ~ #mojotitles:inventory_detectors \
    run function mojotitles:banner_placement/attached_block_types/inventory

execute at @s run \
    data modify storage mojotitles:temp WIPBanner \
        merge from block ~ ~ ~ components."minecraft:custom_data".mojotitles

execute at @s run \
    data modify block ~ ~ ~ components."minecraft:custom_data".mojotitles \
        set from storage mojotitles:temp WIPBanner

execute at @s run \
    data modify entity @s data \
        merge from block ~ ~ ~ components."minecraft:custom_data"

function mojotitles:marker/init