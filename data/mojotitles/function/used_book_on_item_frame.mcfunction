say @e[type=minecraft:item_frame,sort=nearest,limit=1]
advancement revoke @s only mojotitles:used_book_on_item_frame
/
tag @e[\
    type=minecraft:item_frame,\
    nbt={Item:{id:"minecraft:written_book",components:{"minecraft:custom_data":{"mojotitles":{enabled: 1b}}}}}\
] add mojotitles.configured_item_frame