function mojotitles:player_detector/load

tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:purple_banner"}},sort=nearest,limit=1] add mojotitles.nearest_banner_item_candidate

scoreboard objectives add mojotitles.temp dummy

function mojotitles:ui/load