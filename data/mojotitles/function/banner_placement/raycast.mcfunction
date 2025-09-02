# Give up if we're more than 8 blocks from the player that triggered the raycast
execute unless entity @s[distance=..8] run return fail

# Check up to two blocks taxicab distance from this point
execute positioned ~ ~ ~ if function mojotitles:banner_placement/search_block_for_banner run return 1
execute positioned ~ ~ ~1 if function mojotitles:banner_placement/search_block_for_banner run return 1
execute positioned ~ ~ ~-1 if function mojotitles:banner_placement/search_block_for_banner run return 1
execute positioned ~ ~1 ~ if function mojotitles:banner_placement/search_block_for_banner run return 1
execute positioned ~ ~1 ~1 if function mojotitles:banner_placement/search_block_for_banner run return 1
execute positioned ~ ~1 ~-1 if function mojotitles:banner_placement/search_block_for_banner run return 1
execute positioned ~ ~-1 ~ if function mojotitles:banner_placement/search_block_for_banner run return 1
execute positioned ~ ~-1 ~1 if function mojotitles:banner_placement/search_block_for_banner run return 1
execute positioned ~ ~-1 ~-1 if function mojotitles:banner_placement/search_block_for_banner run return 1
execute positioned ~1 ~ ~ if function mojotitles:banner_placement/search_block_for_banner run return 1
execute positioned ~1 ~ ~1 if function mojotitles:banner_placement/search_block_for_banner run return 1
execute positioned ~1 ~ ~-1 if function mojotitles:banner_placement/search_block_for_banner run return 1
execute positioned ~1 ~1 ~ if function mojotitles:banner_placement/search_block_for_banner run return 1
execute positioned ~1 ~-1 ~ if function mojotitles:banner_placement/search_block_for_banner run return 1
execute positioned ~-1 ~ ~ if function mojotitles:banner_placement/search_block_for_banner run return 1
execute positioned ~-1 ~ ~1 if function mojotitles:banner_placement/search_block_for_banner run return 1
execute positioned ~-1 ~ ~-1 if function mojotitles:banner_placement/search_block_for_banner run return 1
execute positioned ~-1 ~1 ~ if function mojotitles:banner_placement/search_block_for_banner run return 1
execute positioned ~-1 ~-1 ~ if function mojotitles:banner_placement/search_block_for_banner run return 1

# Nothing was found, so advance in the direction the player is looking
execute positioned ^ ^ ^0.5 run return run function mojotitles:banner_placement/raycast