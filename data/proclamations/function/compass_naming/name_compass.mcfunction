$execute at @s run item modify entity @a[tag=proclamations.player_used_compass,limit=1] \
    container.$(Slot) proclamations:set_compass_name

$execute if data entity @s data.proclamations.lore[0] \
    at @s run item modify entity @a[tag=proclamations.player_used_compass,limit=1] \
        container.$(Slot) proclamations:set_compass_lore