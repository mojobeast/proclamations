tag @s remove mojotitles.newly_summoned_marker

data modify entity @s data set from block ~ ~ ~ components."minecraft:custom_data"
data modify entity @s data.name set value "Mojo's Dynamic Titles"

function mojotitles:triggers/init