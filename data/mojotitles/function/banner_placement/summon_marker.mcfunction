summon minecraft:interaction ~ ~ ~ \
    {Tags:["mojotitles.banner","mojotitles.newly_summoned_interaction"], response:1}

summon minecraft:marker ~ ~ ~ \
    {Tags:["mojotitles.banner","mojotitles.newly_summoned_marker"], data: {name: "Mojo's Dynamic Titles"}}

ride @e[type=minecraft:marker, tag=mojotitles.newly_summoned_marker,limit=1] \
    mount @e[type=minecraft:interaction, tag=mojotitles.newly_summoned_interaction,limit=1]

tag @e[type=minecraft:interaction,tag=mojotitles.newly_summoned_interaction] \
    remove mojotitles.newly_summoned_interaction

return 1