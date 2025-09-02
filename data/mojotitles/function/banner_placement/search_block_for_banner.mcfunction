execute if block ~ ~ ~ #minecraft:banners \
    if data block ~ ~ ~ components."minecraft:enchantments".mojotitles:proclamation \
    align xyz \
    positioned ~0.5 ~0.5 ~0.5 \
    unless entity @e[type=minecraft:marker,tag=mojotitles.banner_marker,distance=..0.5] \
    run return \
    run execute \
    run summon minecraft:marker ~ ~ ~ \
        {Tags:["mojotitles.banner_marker","mojotitles.newly_summoned_marker"], data: {name: "Mojo's Dynamic Titles"}}

return fail