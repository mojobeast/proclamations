data modify entity @s data.mojotitles.attached_block.type set value "#mojotitles:inventory_detectors"

data modify storage mojotitles:temp WIPBanner.triggers append value \
    {"type": "mojotitles:shulker_enters_inventory"}

data modify storage mojotitles:temp WIPBanner.players append value \
    {"type": "mojotitles:triggering_player"}

data modify storage mojotitles:temp WIPBanner.title_text_components append value \
    {"type": "mojotitles:shulker_contents"}
data modify storage mojotitles:temp WIPBanner.title_text_components[-1].default_color \
    set from storage mojotitles:temp DefaultBannerColor

data modify storage mojotitles:temp WIPBanner.subtitle_text_components append value \
    {"type": "mojotitles:shulker_contents_lore", "default_color": "white"}

# Default behaviour: announce to players in range
# If contains player head: announce to that player

# Constructing message:

# Process slots in the inventory in order

# If Item has custom name: add name to the title
# AND if Item has custom lore: add lore to the subtitle
# AND if Item has a custom model texture: display the item
# AND if Item is in a stack: display the count of items the stack (if item was displayed, also add "x" e.g. "x10")