# TODO: Find block the banner is placed on - either +-1 in the x/z direction, if [facing=DIRECTION] is set - if not, y-1
# TODO: Set default behaviour at this point, depending on the block the banner is placed on (initially, lodestone)
# TODO: Summon interaction entity to bring up configuration dialog

tag @s remove mojotitles.newly_summoned_marker

data modify entity @s data.mojotitles merge from block ~ ~ ~ components."minecraft:custom_data".mojotitles
data modify entity @s data.mojotitles.triggers set value []
data modify entity @s data.mojotitles.lore set from block ~ ~ ~ components."minecraft:lore"

execute if block ~ ~ ~ #minecraft:banners[facing=west] \
    align xyz positioned ~1 ~ ~ \
    run return \
    run function mojotitles:banner_placement/found_attached_block

execute if block ~ ~ ~ #minecraft:banners[facing=east] \
    align xyz positioned ~-1 ~ ~ \
    run return \
    run function mojotitles:banner_placement/found_attached_block

execute if block ~ ~ ~ #minecraft:banners[facing=north] \
    align xyz positioned ~ ~ ~1 \
    run return \
    run function mojotitles:banner_placement/found_attached_block

execute if block ~ ~ ~ #minecraft:banners[facing=south] \
    align xyz positioned ~ ~ ~-1 \
    run return \
    run function mojotitles:banner_placement/found_attached_block

execute align xyz positioned ~ ~-1 ~ \
    run return \
    run function mojotitles:banner_placement/found_attached_block