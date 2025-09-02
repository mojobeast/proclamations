# TODO: Find block the banner is placed on - either +-1 in the x/z direction, if [facing=DIRECTION] is set - if not, y-1
# TODO: Set default behaviour at this point, depending on the block the banner is placed on (initially, lodestone)
# TODO: Summon interaction entity to bring up configuration dialog

execute align xyz \
    run summon minecraft:marker ~0.5 ~0.5 ~0.5 \
    {Tags:["mojotitles.banner_marker","mojotitles.newly_summoned_marker"], data: {name: "Mojo's Dynamic Titles"}}

execute if block ~ ~ ~ #minecraft:banners[facing=west] \
    align xyz positioned ~1 ~ ~ \
    as @e[tag=mojotitles.newly_summoned_marker] \
    run return \
    run function mojotitles:banner_placement/found_attached_block

execute if block ~ ~ ~ #minecraft:banners[facing=east] \
    align xyz positioned ~-1 ~ ~ \
    as @e[tag=mojotitles.newly_summoned_marker] \
    run return \
    run function mojotitles:banner_placement/found_attached_block

execute if block ~ ~ ~ #minecraft:banners[facing=north] \
    align xyz positioned ~ ~ ~1 \
    as @e[tag=mojotitles.newly_summoned_marker] \
    run return \
    run function mojotitles:banner_placement/found_attached_block

execute if block ~ ~ ~ #minecraft:banners[facing=south] \
    align xyz positioned ~ ~ ~-1 \
    as @e[tag=mojotitles.newly_summoned_marker] \
    run return \
    run function mojotitles:banner_placement/found_attached_block

execute align xyz positioned ~ ~-1 ~ \
    as @e[tag=mojotitles.newly_summoned_marker] \
    run return \
    run function mojotitles:banner_placement/found_attached_block