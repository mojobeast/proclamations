advancement revoke @s only mojotitles:placed_banner

execute at @s anchored eyes rotated as @s \
    if function mojotitles:banner_placement/raycast \
    as @e[tag=mojotitles.newly_summoned_marker] \
    at @s \
    run return \
    run function mojotitles:banner_placement/found_banner

tellraw @s {"text":"ERROR: Could not find placed banner. Please re-enchant and place again.","color":"red"}