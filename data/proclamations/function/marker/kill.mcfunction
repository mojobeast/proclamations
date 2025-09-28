tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:blue_banner"}},sort=nearest,limit=1] add proclamations.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:green_banner"}},sort=nearest,limit=1] add proclamations.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:black_banner"}},sort=nearest,limit=1] add proclamations.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:blue_banner"}},sort=nearest,limit=1] add proclamations.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:brown_banner"}},sort=nearest,limit=1] add proclamations.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:cyan_banner"}},sort=nearest,limit=1] add proclamations.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:gray_banner"}},sort=nearest,limit=1] add proclamations.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:green_banner"}},sort=nearest,limit=1] add proclamations.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:light_blue_banner"}},sort=nearest,limit=1] add proclamations.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:light_gray_banner"}},sort=nearest,limit=1] add proclamations.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:lime_banner"}},sort=nearest,limit=1] add proclamations.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:magenta_banner"}},sort=nearest,limit=1] add proclamations.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:orange_banner"}},sort=nearest,limit=1] add proclamations.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:pink_banner"}},sort=nearest,limit=1] add proclamations.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:purple_banner"}},sort=nearest,limit=1] add proclamations.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:red_banner"}},sort=nearest,limit=1] add proclamations.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:white_banner"}},sort=nearest,limit=1] add proclamations.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:yellow_banner"}},sort=nearest,limit=1] add proclamations.nearest_candidate

tag @e[tag=proclamations.nearest_candidate,sort=nearest,limit=1] add proclamations.nearest_banner_item
tag @e[tag=proclamations.nearest_candidate] remove proclamations.nearest_candidate

data modify entity @e[tag=proclamations.nearest_banner_item,limit=1] \
    Item.components."minecraft:enchantments" set value {"proclamations:proclamation": 1}

data modify entity @e[tag=proclamations.nearest_banner_item,limit=1] \
    Item.components."minecraft:custom_data" set from entity @s data

data modify entity @e[tag=proclamations.nearest_banner_item,limit=1] \
    Item.components."minecraft:lore" set from entity @s data.proclamations.lore

tag @e[tag=proclamations.nearest_banner_item] remove proclamations.nearest_banner_item

execute as @s[tag=proclamations.player_detector] run function proclamations:marker/player_detector/kill

execute on vehicle run kill @s

kill @s
