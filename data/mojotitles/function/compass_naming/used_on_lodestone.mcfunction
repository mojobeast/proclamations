advancement revoke @s only mojotitles:used_compass_on_lodestone

tag @s add mojotitles.player_used_compass

execute as @e[type=minecraft:marker,tag=mojotitles.banner,distance=..8] \
    if data entity @s data.mojotitles.attached_block{type:"minecraft:lodestone"} \
    run function mojotitles:compass_naming/lodestone_location

tag @s remove mojotitles.player_used_compass