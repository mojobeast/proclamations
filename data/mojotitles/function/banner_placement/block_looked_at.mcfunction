execute if block ~ ~ ~ #minecraft:banners run return \
    run execute positioned ~ ~ ~ run function mojotitles:banner_placement/found_banner

execute if block ~1 ~ ~ #minecraft:banners run return \
    run execute positioned ~1 ~ ~ run function mojotitles:banner_placement/found_banner

execute if block ~ ~1 ~ #minecraft:banners run return \
    run execute positioned ~ ~1 ~ run function mojotitles:banner_placement/found_banner

execute if block ~ ~ ~1 #minecraft:banners run return \
    run execute positioned ~ ~ ~1 run function mojotitles:banner_placement/found_banner

execute if block ~-1 ~ ~ #minecraft:banners run return \
    run execute positioned ~-1 ~ ~ run function mojotitles:banner_placement/found_banner

execute if block ~ ~-1 ~ #minecraft:banners run return \
    run execute positioned ~ ~-1 ~ run function mojotitles:banner_placement/found_banner

execute if block ~ ~ ~-1 #minecraft:banners run return \
    run execute positioned ~ ~ ~-1 run function mojotitles:banner_placement/found_banner

execute if block ~1 ~ ~1 #minecraft:banners run return \
    run execute positioned ~1 ~ ~1 run function mojotitles:banner_placement/found_banner

execute if block ~1 ~ ~-1 #minecraft:banners run return \
    run execute positioned ~1 ~ ~-1 run function mojotitles:banner_placement/found_banner

execute if block ~-1 ~ ~1 #minecraft:banners run return \
    run execute positioned ~-1 ~ ~1 run function mojotitles:banner_placement/found_banner

execute if block ~-1 ~ ~-1 #minecraft:banners run return \
    run execute positioned ~-1 ~ ~-1 run function mojotitles:banner_placement/found_banner

tellraw @s {"text":"ERROR: Could not find placed banner. Please break and place again.","color":"red"}