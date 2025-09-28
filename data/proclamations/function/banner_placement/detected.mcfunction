advancement revoke @s only proclamations:placed_banner

execute at @s anchored eyes rotated as @s \
    if function proclamations:banner_placement/raycast \
    as @e[tag=proclamations.newly_summoned_marker] \
    at @s \
    run return \
    run function proclamations:banner_placement/found_banner

tellraw @s {"text":"ERROR: Could not find placed banner. Please re-enchant and place again.","color":"red"}