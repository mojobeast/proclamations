execute if block ~ ~ ~ #minecraft:banners \
    if data block ~ ~ ~ components."minecraft:enchantments".mojotitles:proclamation \
    align xyz \
    positioned ~0.5 ~0.5 ~0.5 \
    unless entity @e[type=minecraft:marker,tag=mojotitles.banner,distance=..0.5] \
    run return \
    run execute \
    run function mojotitles:banner_placement/summon_marker

return fail