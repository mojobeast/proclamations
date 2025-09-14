# TODO: Store #loop_index score plus loop_item and loop_items storage on a stack and restore them when done

scoreboard players set #loop_index mojotitles.temp 0

$data modify storage mojotitles:temp loop_items set from storage $(storage) $(path)

$function mojotitles:util/loop/recurse {do:"$(do)"}