summon minecraft:interaction ~ ~ ~ \
    {Tags:["proclamations.banner","proclamations.newly_summoned_interaction"], response:1}

summon minecraft:marker ~ ~ ~ \
    {Tags:["proclamations.banner","proclamations.newly_summoned_marker"], data: {name: "Mojo's Dynamic Titles"}}

ride @e[type=minecraft:marker, tag=proclamations.newly_summoned_marker,limit=1] \
    mount @e[type=minecraft:interaction, tag=proclamations.newly_summoned_interaction,limit=1]

tag @e[type=minecraft:interaction,tag=proclamations.newly_summoned_interaction] \
    remove proclamations.newly_summoned_interaction

return 1