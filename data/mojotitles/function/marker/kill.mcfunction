tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:blue_banner"}},sort=nearest,limit=1] add mojotitles.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:green_banner"}},sort=nearest,limit=1] add mojotitles.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:black_banner"}},sort=nearest,limit=1] add mojotitles.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:blue_banner"}},sort=nearest,limit=1] add mojotitles.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:brown_banner"}},sort=nearest,limit=1] add mojotitles.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:cyan_banner"}},sort=nearest,limit=1] add mojotitles.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:gray_banner"}},sort=nearest,limit=1] add mojotitles.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:green_banner"}},sort=nearest,limit=1] add mojotitles.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:light_blue_banner"}},sort=nearest,limit=1] add mojotitles.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:light_gray_banner"}},sort=nearest,limit=1] add mojotitles.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:lime_banner"}},sort=nearest,limit=1] add mojotitles.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:magenta_banner"}},sort=nearest,limit=1] add mojotitles.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:orange_banner"}},sort=nearest,limit=1] add mojotitles.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:pink_banner"}},sort=nearest,limit=1] add mojotitles.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:purple_banner"}},sort=nearest,limit=1] add mojotitles.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:red_banner"}},sort=nearest,limit=1] add mojotitles.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:white_banner"}},sort=nearest,limit=1] add mojotitles.nearest_candidate
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:yellow_banner"}},sort=nearest,limit=1] add mojotitles.nearest_candidate

tag @e[tag=mojotitles.nearest_candidate,sort=nearest,limit=1] add mojotitles.nearest_banner_item
tag @e[tag=mojotitles.nearest_candidate] remove mojotitles.nearest_candidate

data modify entity @e[tag=mojotitles.nearest_banner_item,limit=1] \
    Item.components."minecraft:enchantments" set value {"mojotitles:proclamation": 1}

data modify entity @e[tag=mojotitles.nearest_banner_item,limit=1] \
    Item.components."minecraft:custom_data" set from entity @s data

data modify entity @e[tag=mojotitles.nearest_banner_item,limit=1] \
    Item.components."minecraft:lore" set from entity @s data.mojotitles.lore

tag @e[tag=mojotitles.nearest_banner_item] remove mojotitles.nearest_banner_item

execute on vehicle run kill @s

kill @s
