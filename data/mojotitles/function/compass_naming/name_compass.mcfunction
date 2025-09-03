$execute at @s run item modify entity @a[tag=mojotitles.player_used_compass,limit=1] \
    container.$(Slot) mojotitles:set_compass_name

$execute if data entity @s data.mojotitles.lore[0] \
    at @s run item modify entity @a[tag=mojotitles.player_used_compass,limit=1] \
        container.$(Slot) mojotitles:set_compass_lore