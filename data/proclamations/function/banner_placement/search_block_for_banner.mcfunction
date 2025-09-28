execute if block ~ ~ ~ #minecraft:banners \
    if data block ~ ~ ~ components."minecraft:enchantments".proclamations:proclamation \
    align xyz \
    positioned ~0.5 ~0.5 ~0.5 \
    unless entity @e[type=minecraft:marker,tag=proclamations.banner,distance=..0.5] \
    run return \
    run execute \
    run function proclamations:banner_placement/summon_marker

return fail