data modify storage mojotitles:temp NewShulkerTitleComponent set value {"text": ""}

# try: assume component is compound NBT text component, merge all keys
execute store result score #success_count mojotitles.temp \
    run data modify storage mojotitles:temp NewShulkerTitleComponent \
        merge from storage mojotitles:temp Item.item.components."minecraft:custom_name"

# catch: on failure, assume component is simple string
execute if score #success_count mojotitles.temp matches 0 \
    run data modify storage mojotitles:temp NewShulkerTitleComponent.text \
        set from storage mojotitles:temp Item.item.components."minecraft:custom_name"

# If Item is wool, use its color as default color
execute if data storage mojotitles:temp Item.item{id: "minecraft:black_wool"} \
   run data modify storage mojotitles:temp NewShulkerTitleComponent.default_color set from storage mojotitles:data DefaultColor.black

execute if data storage mojotitles:temp Item.item{id: "minecraft:blue_wool"} \
   run data modify storage mojotitles:temp NewShulkerTitleComponent.default_color set from storage mojotitles:data DefaultColor.blue

execute if data storage mojotitles:temp Item.item{id: "minecraft:brown_wool"} \
   run data modify storage mojotitles:temp NewShulkerTitleComponent.default_color set from storage mojotitles:data DefaultColor.brown

execute if data storage mojotitles:temp Item.item{id: "minecraft:cyan_wool"} \
   run data modify storage mojotitles:temp NewShulkerTitleComponent.default_color set from storage mojotitles:data DefaultColor.cyan

execute if data storage mojotitles:temp Item.item{id: "minecraft:gray_wool"} \
   run data modify storage mojotitles:temp NewShulkerTitleComponent.default_color set from storage mojotitles:data DefaultColor.gray

execute if data storage mojotitles:temp Item.item{id: "minecraft:green_wool"} \
   run data modify storage mojotitles:temp NewShulkerTitleComponent.default_color set from storage mojotitles:data DefaultColor.green
    
execute if data storage mojotitles:temp Item.item{id: "minecraft:light_blue_wool"} \
   run data modify storage mojotitles:temp NewShulkerTitleComponent.default_color set from storage mojotitles:data DefaultColor.light_blue

execute if data storage mojotitles:temp Item.item{id: "minecraft:light_gray_wool"} \
   run data modify storage mojotitles:temp NewShulkerTitleComponent.default_color set from storage mojotitles:data DefaultColor.light_gray

execute if data storage mojotitles:temp Item.item{id: "minecraft:lime_wool"} \
   run data modify storage mojotitles:temp NewShulkerTitleComponent.default_color set from storage mojotitles:data DefaultColor.lime

execute if data storage mojotitles:temp Item.item{id: "minecraft:magenta_wool"} \
   run data modify storage mojotitles:temp NewShulkerTitleComponent.default_color set from storage mojotitles:data DefaultColor.magenta

execute if data storage mojotitles:temp Item.item{id: "minecraft:orange_wool"} \
   run data modify storage mojotitles:temp NewShulkerTitleComponent.default_color set from storage mojotitles:data DefaultColor.orange

execute if data storage mojotitles:temp Item.item{id: "minecraft:pink_wool"} \
   run data modify storage mojotitles:temp NewShulkerTitleComponent.default_color set from storage mojotitles:data DefaultColor.pink

execute if data storage mojotitles:temp Item.item{id: "minecraft:purple_wool"} \
   run data modify storage mojotitles:temp NewShulkerTitleComponent.default_color set from storage mojotitles:data DefaultColor.purple

execute if data storage mojotitles:temp Item.item{id: "minecraft:red_wool"} \
   run data modify storage mojotitles:temp NewShulkerTitleComponent.default_color set from storage mojotitles:data DefaultColor.red

execute if data storage mojotitles:temp Item.item{id: "minecraft:white_wool"} \
   run data modify storage mojotitles:temp NewShulkerTitleComponent.default_color set from storage mojotitles:data DefaultColor.white

execute if data storage mojotitles:temp Item.item{id: "minecraft:yellow_wool"} \
   run data modify storage mojotitles:temp NewShulkerTitleComponent.default_color set from storage mojotitles:data DefaultColor.yellow

data modify storage mojotitles:temp ShulkerTitleComponents \
    append from storage mojotitles:temp NewShulkerTitleComponent

data remove storage mojotitles:temp NewShulkerTitleComponent