execute align xyz \
    run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["mojotitles.newly_summoned_marker"]}

execute as @e[tag=mojotitles.newly_summoned_marker,type=minecraft:marker] at @s \
    run function mojotitles:banner_placement/summoned_marker