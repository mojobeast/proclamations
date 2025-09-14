say "util/loop"

execute unless data storage mojotitles:temp loop_items[0] run return 1

scoreboard players add #loop_index mojotitles.temp 1

data modify storage mojotitles:temp loop_item set from storage mojotitles:temp loop_items[0]
data remove storage mojotitles:temp loop_items[0]

data modify storage mojotitles:temp loop_info set value {}
execute store result storage mojotitles:temp loop_info.index int 1 \
    run scoreboard players get #loop_index mojotitles.temp

$function $(do) with storage mojotitles:temp loop_info

$function mojotitles:util/loop/recurse {do:"$(do)"}